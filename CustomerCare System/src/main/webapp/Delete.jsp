<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Account</title>
    <style>
        body {
            font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            background-color: #f2dede;
            margin: 0;
            padding: 20px;
        }

        form {
            max-width: 400px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #a94442;
        }

        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .delete-reason {
            margin-top: 15px;
        }

        input[type="submit"] {
            background-color: #d9534f;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #c9302c;
        }

        .error {
            color: red;
            font-size: 14px;
            display: none;
        }

        .delete-reason textarea {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
    </style>
</head>

<body>
    <form id="deleteAccount" action="" method="post" onsubmit="return validateForm()">
        <fieldset>
            <h2>Delete Account</h2>
            <div class="delete">
                <label>Email:</label>
                <input type="email" id="email" required><br>
                <label>Password:</label>
                <input type="password" id="password" required><br>
                <span class="error" id="password-error">Incorrect password!</span>
            </div>

            <div class="confirmation">
                <input type="checkbox" id="confirm-delete" required>My account delete permanently<br>
                <input type="submit" value="Delete Account">
            </div>
        </fieldset>
    </form>

    <script>
        function validateForm() {
            const email = document.getElementById('email').value;
            const password = document.getElementById('password').value;
            const confirmDelete = document.getElementById('confirm-delete').checked;
            const passwordError = document.getElementById('password-error');

           //check pasword validation
            if (password !== "12345") {
                passwordError.style.display = 'block';
                return false;
            } else {
                passwordError.style.display = 'none';
            }

            if (!confirmDelete) {
                alert("You must confirm the account deletion.");
                return false;
            }

            alert("Your account has been successfully deleted.");
            return true;
        }
    </script>
</body>

</html>

