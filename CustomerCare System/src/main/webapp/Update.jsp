<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Profile</title>
     <!--Simple CSS Decoration-->
    <style>
        body {
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            background-color:#c0d0e0;
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
            color: #333;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"],
        input[type="date"] {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .user-type,
        .registration {
            margin-top: 15px;
        }

        input[type="checkbox"] {
            margin-right: 10px;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        .error {
            color: red;
            font-size: 14px;
            display: none;
        }

        .agent-code {
            display: none;
        }
    </style>
</head>

<body>
    <form id="editprofileForm" action="" method="post">
        <fieldset>
            <h2>Update Profile</h2>
            <div class="edit">
                <label>Enter First Name:</label>
                <input type="text" id="first-name" required><br>
                <label>Enter Last Name:</label>
                <input type="text" id="last-name" required><br>
                <label>Email:</label>
                <input type="email" id="email" required><br>
                <label>Department:</label>
                <input type="text" id="Department" required><br>
                <label>Phone Number:</label>
                <input type="text" id="phone" required><br>
                <label>Password:</label>
                <input type="password" id="password" required><br>
                <label>Confirm Password:</label>
                <input type="password" id="confirm-password" required><br>
                <span class="error" id="password-error">Passwords do not match!</span>
            </div>
            <div class="user-type">
                <input type="checkbox" id="is-agent"> I'm an Agent<br>
                <div class="agent-code">
                    <label>Enter Agent Code:</label>
                    <input type="text" id="agent-code"><br>
                </div>
            </div>
            <div class="registration">
                <input type="checkbox" id="terms" required> I agree to the terms and conditions<br>
                <input type="submit" value="Save Change">
            </div>
        </fieldset>
    </form>

    <!--JS part-->
    <script>
        document.getElementById('is-agent').addEventListener('change', function () {
            document.querySelector('.agent-code').style.display = this.checked ? 'block' : 'none';
            if (this.checked) {
                document.getElementById('is-customer').checked = false;
            }
        });

        document.getElementById('is-customer').addEventListener('change', function () {
            document.getElementById('is-agent').checked = false;
            document.querySelector('.agent-code').style.display = 'none';
        });
        //check personal data

        function validateForm() {
            const firstName = document.getElementById('first-name').value;
            const lastName = document.getElementById('last-name').value;
            const email = document.getElementById('email').value;
            const password = document.getElementById('password').value;
            const confirmPassword = document.getElementById('confirm-password').value;
            const terms = document.getElementById('terms').checked;
            const isAgent = document.getElementById('is-agent').checked;
            const agentCode = document.getElementById('agent-code').value;
            const passwordError = document.getElementById('password-error');

            //check pasword
            if (password !== confirmPassword) {
                passwordError.style.display = 'block';
                return false;
            } else {
                passwordError.style.display = 'none';
            }

           //check agent code
            if (isAgent && !agentCode) {
                alert("Please enter your agent code.");
                return false;
            }

            if (!terms) {
                alert("You must agree to the terms and conditions to proceed.");
                return false;
            }

            //Display susess notifucation
            alert("Account created successfully!");
            return true;
        }
    </script>
</body>

</html>