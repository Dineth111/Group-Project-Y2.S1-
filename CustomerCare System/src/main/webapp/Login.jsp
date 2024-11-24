<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login</title>
    <style>
        body {
            font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            background-color: #c0d0e0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            color: rgb(73, 108, 140);
        }

        .container {
            background: #fff;
            padding: 50px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 25%;
            margin-left: 0;
            margin-bottom: 30px;
        }

        a {
            color: #008fcc;
            text-decoration: none;
        }

        h1 {
            margin-bottom: 20px;
            color: #334b6b;
            margin-top: 0;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-size:20px;
        }

        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        .button-group {
            display: flex;
            justify-content: space-between;
            gap: 10px;
        }

        input[type="submit"], input[type="reset"] {
            flex: 1;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-size: 20px;
        }

        input[type="submit"] {
            background-color: #008fcc;
            color: #fff;
        }

        input[type="submit"]:hover {
            background-color: #017eb4;
        }

        input[type="reset"] {
            background-color: #db3615;
            color: #fff;
        }

        input[type="reset"]:hover {
            background-color: #c73417;
        }

        .footer {
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <center><h1>Login</h1></center>
        <form id="loginForm" method="post" action="loginServlet">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>
            
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
            
            <div class="button-group">
                <input type="submit" value="Login">
                <input type="reset" value="Reset">
            </div>
        </form>
        <div class="footer">
            <p>Don't have an account? <a href="Register.jsp">Register here</a></p>
        </div>
    </div>
</body>
</html>
