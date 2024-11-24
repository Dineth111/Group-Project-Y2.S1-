<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agent Details</title>
    <!--Simple CSS Decoration-->
    <style>
        body {
            font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            background-color: #c0d0e0;
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

        .agent-data {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        .agent-data label {
            font-weight: bold;
            color: #333;
            display: inline-block;
            width: 120px;
        }

        .agent-data span {
            color: #666;
        }

        .data-field {
            display: flex;
            justify-content: space-between;
        }

        .data-field span {
            flex-grow: 1;
            padding-left: 10px;
            color: #333;
        }

        input[type="button"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            margin-top: 20px;
        }

        input[type="button"]:hover {
            background-color: #45a049;
        }

    </style>
</head>

<body>
    <form id="registrationForm" action="" method="post">
        <fieldset>
            <h2>Agent Details</h2>
            <div class="agent-data">
                <div class="data-field">
                    <label>First Name:</label>
                    <span>John</span> <!-- Display value here -->
                </div>
                <div class="data-field">
                    <label>Last Name:</label>
                    <span>Doe</span> <!-- Display value here -->
                </div>
                <div class="data-field">
                    <label>Email:</label>
                    <span>john.doe@example.com</span> <!-- Display value here -->
                </div>
                <div class="data-field">
                    <label>Department:</label>
                    <span>IT Department</span> <!-- Display value here -->
                </div>
                <div class="data-field">
                    <label>Phone Number:</label>
                    <span>+123456789</span> <!-- Display value here -->
                </div>
                <div class="data-field">
                    <label>Agent Code:</label>
                    <span>AG101</span> <!-- Display value here -->
                </div>

                <!-- Edit Profile Button -->
                <input type="button" value="Edit Profile">
            </div>
        </fieldset>
    </form>
</body>

</html>
    