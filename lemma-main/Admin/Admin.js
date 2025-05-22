// Function to open the modal and populate the form for editing services, theme, or events
function editItem(section, id = null) {
  document.getElementById("editSection").value = section;
  document.getElementById("editId").value = id || "";
  document.getElementById("dynamicFields").innerHTML = "";
  document.getElementById("editForm").action = id ? "edit.php" : "add.php";

  if (section === "event") {
    const fields = [
      {
        label: "Name",
        name: "Name",
        type: "text",
      },
      {
        label: "Description",
        name: "Description",
        type: "textarea",
      },
      {
        label: "Photo",
        name: "photo",
        type: "file",
      },
    ];

    fields.forEach((field) => {
      let fieldHtml = `<label for="${field.name}">${field.label}</label>`;
      if (field.type === "textarea") {
        fieldHtml += `<textarea name="${field.name}" id="${field.name}" required></textarea>`;
      } else {
        fieldHtml += `<input type="${field.type}" name="${field.name}" id="${field.name}" required>`;
      }
      document.getElementById("dynamicFields").innerHTML += fieldHtml;
    });
  }

  if (section === "services") {
    const fields = [
      {
        label: "Name",
        name: "Name",
        type: "text",
      },
      {
        label: "Description",
        name: "Description",
        type: "textarea",
      },
      {
        label: "Photo",
        name: "photo",
        type: "file",
      },
      {
        label: "Event ID",
        name: "Event_Id",
        type: "number",
      },
    ];

    fields.forEach((field) => {
      let fieldHtml = `<label for="${field.name}">${field.label}</label>`;
      if (field.type === "textarea") {
        fieldHtml += `<textarea name="${field.name}" id="${field.name}" required></textarea>`;
      } else {
        fieldHtml += `<input type="${field.type}" name="${field.name}" id="${field.name}" required>`;
      }
      document.getElementById("dynamicFields").innerHTML += fieldHtml;
    });
  }

  if (section === "theme") {
    const fields = [
      {
        label: "Title",
        name: "Title",
        type: "text",
      },
      {
        label: "Description",
        name: "description",
        type: "textarea",
      },
      {
        label: "Picture",
        name: "picture",
        type: "file",
      },
      {
        label: "Service ID",
        name: "Service_Id",
        type: "number",
      },
    ];

    fields.forEach((field) => {
      let fieldHtml = `<label for="${field.name}">${field.label}</label>`;
      if (field.type === "textarea") {
        fieldHtml += `<textarea name="${field.name}" id="${field.name}" required></textarea>`;
      } else {
        fieldHtml += `<input type="${field.type}" name="${field.name}" id="${field.name}" required>`;
      }
      document.getElementById("dynamicFields").innerHTML += fieldHtml;
    });
  }

  // Show the modal
  document.getElementById("editModal").style.display = "block";
}

// Close modal function
function closeModal() {
  document.getElementById("editModal").style.display = "none";
}

// Close modal if clicked outside
window.onclick = function (event) {
  if (event.target == document.getElementById("editModal")) {
    closeModal();
  }
};

// Delete function
function deleteItem(section, id) {
  if (confirm("Are you sure you want to delete this item?")) {
    window.location.href = `delete.php?section=${section}&id=${id}`;
  }
}

const sidebarToggle = document.querySelector(".sidebar-toggle");
const sidebar = document.querySelector(".sidebar");

sidebarToggle.addEventListener("click", () => {
  sidebar.classList.toggle("active");
});
