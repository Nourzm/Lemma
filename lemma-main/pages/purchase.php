<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Lemma - Complete Your Purchase</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f7f4f3;
        }
    </style>
</head>

<body class="flex items-center justify-center min-h-screen">
    <div class="w-full max-w-md bg-white shadow-2xl rounded-xl p-8" style="background-color: #d5bdac;">
        <div class="text-center mb-6">
            <img src="../assets/Images/photos/lemma logo dark.png" alt="Lemma Logo" class="mx-auto w-32 mb-4">
            <h2 class="text-3xl font-bold text-gray-800">Complete Your Purchase</h2>
        </div>

        <form method="POST" action="process_purchase.php" class="space-y-4" onsubmit="return validateForm()">
            <div>
                <label class="block text-gray-700 font-semibold mb-2">Product Details</label>
                <input
                    type="text"
                    name="product_name"
                    placeholder="Product Name"
                    required
                    class="w-full px-4 py-2 border border-brown-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-brown-500 bg-white">
                <input
                    type="number"
                    name="product_price"
                    placeholder="Price"
                    required
                    min="1"
                    step="0.01"
                    class="w-full mt-2 px-4 py-2 border border-brown-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-brown-500 bg-white">
            </div>

            <div>
                <label class="block text-gray-700 font-semibold mb-2">Personal Information</label>
                <input
                    type="text"
                    name="full_name"
                    placeholder="Full Name"
                    required
                    class="w-full px-4 py-2 border border-brown-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-brown-500 bg-white">
                <input
                    type="email"
                    name="email"
                    placeholder="Email Address"
                    required
                    class="w-full mt-2 px-4 py-2 border border-brown-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-brown-500 bg-white">
                <input
                    type="tel"
                    name="phone"
                    placeholder="Phone Number"
                    required
                    pattern="[0-9]{10}"
                    title="Phone number must be 10 digits"
                    class="w-full mt-2 px-4 py-2 border border-brown-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-brown-500 bg-white">
            </div>

            <div>
                <label class="block text-gray-700 font-semibold mb-2">Payment Information</label>
                <input
                    type="text"
                    name="card_number"
                    placeholder="Card Number"
                    required
                    pattern="[0-9]{16}"
                    title="Card number must be 16 digits"
                    class="w-full px-4 py-2 border border-brown-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-brown-500 bg-white">
                <div class="flex space-x-2 mt-2">
                    <input
                        type="text"
                        name="card_expiry"
                        placeholder="MM/YY"
                        required
                        pattern="(0[1-9]|1[0-2])\/[0-9]{2}"
                        title="Expiry date must be in MM/YY format"
                        class="w-1/2 px-4 py-2 border border-brown-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-brown-500 bg-white">
                    <input
                        type="text"
                        name="card_cvv"
                        placeholder="CVV"
                        required
                        pattern="[0-9]{3}"
                        title="CVV must be 3 digits"
                        class="w-1/2 px-4 py-2 border border-brown-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-brown-500 bg-white">
                </div>
            </div>

            <button
                type="submit"
                class="w-full bg-brown-600 text-white py-3 rounded-lg hover:bg-brown-700 transition duration-300 ease-in-out transform hover:scale-102 focus:outline-none focus:ring-2 focus:ring-brown-500"
                style="background-color: #5b4a3e;">
                Complete Purchase
            </button>
        </form>
    </div>

    <script>
        function validateForm() {
            const expiryInput = document.querySelector('input[name="card_expiry"]').value;
            const [month, year] = expiryInput.split('/').map(Number);
            const currentDate = new Date();
            const currentYear = currentDate.getFullYear() % 100; // Last two digits of the year
            const currentMonth = currentDate.getMonth() + 1;

            if (year < currentYear || (year === currentYear && month < currentMonth)) {
                alert('Card expiry date must be in the future.');
                return false;
            }
            return true;
        }
    </script>
</body>

</html>