<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Update Success</title>

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
            text-align: center;
            width: 25%;
        }

        h1 {
            margin-bottom: 20px;
            color: #334b6b;
            margin-top: 0;
        }

        p {
            font-size: 16px;
            margin-bottom: 20px;
        }

        input[type="button"] {
            padding: 10px;
            width: 100%;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-size: 20px;
            background-color: #008fcc;
            color: #fff;
        }

        input[type="button"]:hover {
            background-color: #017eb4;
        }
    </style>
</head>

<body>
    <div class="container">
        <h1>Update Successfully!</h1>
        <p>Your profile has been updated .</p>
        <input type="button" value="Done" onclick="location.href='customerDashboard.jsp';">
    </div>
</body>
</html>
