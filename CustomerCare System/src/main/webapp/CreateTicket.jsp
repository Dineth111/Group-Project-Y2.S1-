<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Create Ticket</title>

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
            width: 30%;
            margin-left: 0;
            margin-bottom: 30px;
        }

        a {
            color: #008fcc;
        }

        h1 {
            margin-bottom: 20px;
            color: #334b6b;
            margin-top: 0;
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"], input[type="date"], textarea {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        textarea {
            height: 150px;
            resize: vertical;
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

    </style>
</head>

<body>
    
    <div class="container">
        <center><h1>Create Ticket</h1></center>
        <form id="createTicketForm" action="CreateTicketServlet" method="post">
            <label for="subject">Ticket Subject:</label>
            <input type="text" id="subject" name="subject" required>
            
            <label for="description">Ticket Description:</label>
            <textarea id="description" name="description" required></textarea>
            
            <label for="date">Ticket Date:</label>
            <input type="date" id="date" name="date" required>
            <p></p>

            <div class="button-group">
                <input class="submit" type="submit" value="Submit Ticket">
                <input class="reset" type="reset" value="Reset">
            </div>
        </form>
    </div>

</body>
</html>
