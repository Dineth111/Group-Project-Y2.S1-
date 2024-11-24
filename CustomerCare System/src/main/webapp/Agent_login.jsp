<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>

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
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="button"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            margin-top: 10px;
        }

        input[type="button"]:hover {
            background-color: #45a049;
        }

        .remember-me {
            margin-top: 10px;
        }

        a {
            color: #4CAF50;
            text-decoration: none;
            margin-top: 10px;
            display: inline-block;
        }

        a:hover {
            text-decoration: underline;
        }

        .error {
            color: red;
            font-size: 14px;
            display: none;
        }
    </style>
</head>

<body>
    <form action="loginuser" method="post" id="loginForm">
        <fieldset>
            <h2 > Log in As Agent</h2>
            <div class="login-form">
                <label for="username">User Name:</label>
                <input type="text" id="username" name="username"><br>

                <label for="password">Password:</label>
                <input type="password" id="password" name="password"><br>

                <span class="error" id="login-error">Please fill in all fields.</span>

                <input type="button" value="LOG IN" onclick="validateLogin()"><br>

                <div class="remember-me">
                    <input type="checkbox" id="remember-me" name="remember-me"> Remember Me<br>
                </div>

                <a href="#">Forgot Password?</a><br>
                Don't have an account? <a href="AgentRegister.jsp">Register here</a>
            </div>
        </fieldset>
    </form>

     <!--jS part-->
    <script>
        function validateLogin() {
            const username = document.getElementById('username').value;
            const password = document.getElementById('password').value;
            const loginError = document.getElementById('login-error');

            //check username and pasword
            if (username === "" || password === "") {
                loginError.style.display = 'block';
                return;
            }

            loginError.style.display = 'none';

            //simple masage
            alert("Logged in successfully!");
        }
    </script>
</body>

</html>
    