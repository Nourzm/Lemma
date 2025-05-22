document.addEventListener('DOMContentLoaded', async () => {
    fetchChatHistory();
});

const chatBody = document.querySelector(".chat-body");
const messageInput = document.querySelector(".message-input");
const sendMessageButton = document.querySelector("#send-message");
const fileInput = document.querySelector("#file-input");
const chatForm = document.querySelector(".chat-form");
const chatbotToggler = document.querySelector("#chatbot-toggler");
const closeChatbot = document.querySelector("#close-chatbot");

const userData = {
    message: null,
    file: {
        data: null,
        mime_type: null,
        name: null
    }
};
const chatHistory = [];
const initialInputHeight = messageInput.scrollHeight;
let isFetchingHistory = false;

messageInput.addEventListener("input", () => {
    messageInput.style.height = `${initialInputHeight}px`;
    messageInput.style.height = `${messageInput.scrollHeight}px`;
    document.querySelector(".chat-form").style.borderRadius = messageInput.scrollHeight > initialInputHeight ? "15px" : "32px";
});

const API_KEY = `AIzaSyD_trEZ-AjrZlTj27D9Og5e7mjKhvuB6dE`;
const API_URL = `https://generativelanguage.googleapis.com/v1/models/gemini-1.5-flash:generateContent?key=${API_KEY}`;

// Create message element with dynamic classes and return it
const createMessageElement = (content, ...classes) => {
    const div = document.createElement("div");
    div.classList.add("message", ...classes);
    div.innerHTML = content;
    return div;
};

const generateBotResponse = async (incomingMessageDiv) => {
    const messageElement = incomingMessageDiv.querySelector(".message-text");
    const requestParts = [{ text: userData.message || "" }];

    if (userData.file.data) {
        requestParts.push({ 
            inline_data: {
                mime_type: userData.file.mime_type,
                data: userData.file.data
            }
        });
    }

    let requestBody = {
        contents: [{
            role: "user",
            parts: requestParts
        }]
    };

    try {
        const response = await fetch(API_URL, {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify(requestBody)
        });

        if (!response.ok) {
            throw new Error(`API Error: ${response.status}`);
        }

        const data = await response.json();
        const apiResponseText = data.candidates[0].content.parts[0].text
            .replace(/\*\*( .*? )\*\*/g, "$1").trim();
        messageElement.innerText = apiResponseText;
        
        // Store chat in database
        await storeChatInDatabase(userData.message, apiResponseText);
        
        chatHistory.push({
            role: "model",
            parts: [{ text: apiResponseText }]
        });
    } catch (error) {
        console.error("API Error:", error);
        messageElement.innerText = "Sorry, I couldn't process that request. Please try again.";
        messageElement.style.color = "#ff0000";
    } finally {
        incomingMessageDiv.classList.remove("thinking");
        chatBody.scrollTo({ top: chatBody.scrollHeight, behavior: "smooth" });
    }
};

// Function to store chat in database
async function storeChatInDatabase(userMessage, botResponse) {
    try {
        const response = await fetch('../../api/chat_handler.php', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                message: userMessage,
                response: botResponse,
                session_id: sessionStorage.getItem('session_id') || ''
            })
        });

        if (!response.ok) {
            throw new Error('Failed to store chat');
        }

        const data = await response.json();
        if (!data.success) {
            throw new Error(data.error || 'Failed to store chat');
        }
    } catch (error) {
        console.error('Error storing chat:', error);
    }
}

// Handle form submission
const handleSubmit = async (e) => {
    e.preventDefault(); // Prevent form from submitting normally
    
    const message = messageInput.value.trim();
    userData.message = message;
    
    if (!message && !userData.file.data) return;

    // Create message content
    let messageContent = `<div class="message-text">`;
    if (message) {
        messageContent += `<div>${message}</div>`;
    }
    if (userData.file.data) {
        messageContent += `<div class="file-preview">
            <img src="data:${userData.file.mime_type};base64,${userData.file.data}" 
                 alt="Uploaded file" 
                 style="max-width: 200px; max-height: 200px; margin-top: 8px;">
        </div>`;
    }
    messageContent += `</div>`;

    // Add user message to chat
    const outgoingMessageDiv = createMessageElement(messageContent, "user-message");
    chatBody.appendChild(outgoingMessageDiv);
    chatBody.scrollTo({ top: chatBody.scrollHeight, behavior: "smooth" });

    // Clear inputs
    messageInput.value = "";
    fileInput.value = "";

    // Show bot thinking message
    const botMessageContent = `
        <svg class="bot-avatar" xmlns="http://www.w3.org/2000/svg" width="50" height="50" viewBox="0 0 1024 1024">
            <path d="M738.3 287.6H285.7c-59 0-106.8 47.8-106.8 106.8v303.1c0 59 47.8 106.8 106.8 106.8h81.5v111.1c0 .7.8 1.1 1.4.7l166.9-110.6 41.8-.8h117.4l43.6-.4c59 0 106.8-47.8 106.8-106.8V394.5c0-59-47.8-106.9-106.8-106.9zM351.7 448.2c0-29.5 23.9-53.5 53.5-53.5s53.5 23.9 53.5 53.5-23.9 53.5-53.5 53.5-53.5-23.9-53.5-53.5zm157.9 267.1c-67.8 0-123.8-47.5-132.3-109h264.6c-8.6 61.5-64.5 109-132.3 109zm110-213.7c-29.5 0-53.5-23.9-53.5-53.5s23.9-53.5 53.5-53.5 53.5 23.9 53.5 53.5-23.9 53.5-53.5 53.5zM867.2 644.5V453.1h26.5c19.4 0 35.1 15.7 35.1 35.1v121.1c0 19.4-15.7 35.1-35.1 35.1h-26.5zM95.2 609.4V488.2c0-19.4 15.7-35.1 35.1-35.1h26.5v191.3h-26.5c-19.4 0-35.1-15.7-35.1-35.1zM561.5 149.6c0 23.4-15.6 43.3-36.9 49.7v44.9h-30v-44.9c-21.4-6.5-36.9-26.3-36.9-49.7 0-28.6 23.3-51.9 51.9-51.9s51.9 23.3 51.9 51.9z"></path>
        </svg>
        <div class="message-text">
            <div class="thinking-indicator">
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
            </div>
        </div>`;
    const incomingMessageDiv = createMessageElement(botMessageContent, "bot-message", "thinking");
    chatBody.appendChild(incomingMessageDiv);

    // Generate bot response
    await generateBotResponse(incomingMessageDiv);

    // Clear file data after sending
    userData.file = {
        data: null,
        mime_type: null,
        name: null
    };
};

// Handle file selection
fileInput.addEventListener("change", (e) => {
    const file = e.target.files[0];
    if (!file) return;

    // Check file size (5MB limit)s
    const MAX_FILE_SIZE = 5 * 1024 * 1024;
    if (file.size > MAX_FILE_SIZE) {
        alert("File is too large. Please select a file under 5MB.");
        fileInput.value = "";
        return;
    }

    const reader = new FileReader();
    reader.onload = (e) => {
        // Get base64 data without the data URL prefix
        const base64String = e.target.result.split(",")[1];
        
        userData.file = {
            data: base64String,
            mime_type: file.type,
            name: file.name
        };
    };
    
    reader.onerror = () => {
        alert("Error reading file. Please try again.");
        userData.file = {
            data: null,
            mime_type: null,
            name: null
        };
        fileInput.value = "";
    };

    reader.readAsDataURL(file);
});

// Add event listeners
chatForm.addEventListener("submit", handleSubmit);

document.querySelector("#file-upload").addEventListener("click", () => fileInput.click());
chatbotToggler.addEventListener("click", () => document.body.classList.toggle("show-chatbot"));
closeChatbot.addEventListener("click", () => document.body.classList.remove("show-chatbot"));

// Function to fetch and display chat history
async function fetchChatHistory() {
    // Prevent multiple simultaneous requests
    if (isFetchingHistory) return;

    isFetchingHistory = true;

    try {
        const response = await fetch('../../api/chat_handler.php', {
            method: 'GET',
            headers: {
                'Content-Type': 'application/json'
            },
            // Prevent caching
            cache: 'no-store'
        });

        if (!response.ok) {
            throw new Error(`HTTP error! status: ${response.status}`);
        }

        const data = await response.json();
        
        if (data.success) {
            displayChatHistory(data.chat_history);

            // Update chatHistory array with existing messages
            chatHistory.length = 0; // Clear existing
            data.chat_history.forEach(chat => {
                if (chat.user_message) {
                    chatHistory.push({
                        role: "user",
                        parts: [{ text: chat.user_message }]
                    });
                }
                if (chat.bot_response) {
                    chatHistory.push({
                        role: "model",
                        parts: [{ text: chat.bot_response }]
                    });
                }
            });
        } else {
            console.error('Error fetching chat history:', data.error);
        }
    } catch (error) {
        console.error('Error fetching chat history:', error);
    } finally {
        isFetchingHistory = false;
    }
}

// Function to display the chat history in the chat window
function displayChatHistory(chatHistory) {
    chatBody.innerHTML = ''; // Clear existing messages

    // Loop through chat history and append each message
    chatHistory.forEach(chat => {
        const messageElement = createMessageElement(chat.parts[0].text, chat.role === 'user' ? 'user-message' : 'bot-message');
        chatBody.appendChild(messageElement);
    });

    // Scroll to the bottom of the chat body
    chatBody.scrollTo({ top: chatBody.scrollHeight, behavior: "smooth" });
}