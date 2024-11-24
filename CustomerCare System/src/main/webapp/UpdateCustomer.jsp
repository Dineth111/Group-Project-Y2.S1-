<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Update Customer</title>
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
            margin-bottom: 15px;
            font-size:16px;
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

  <%
      String id = request.getParameter("id");
      String firstname = request.getParameter("firstname");
 	  String lastname = request.getParameter("lastname");
 	  String email = request.getParameter("email");
 	  String phone = request.getParameter("phone");
 	 String password = request.getParameter("password");
  %>
  
    <div class="container">
        <center><h1>Update Customer Details</h1></center>
        <form method="post" action="updateCustomerServlet">
        
            <label for="id">ID:</label>
            <input type="text" id="id" name="id" value="<%= id %>" readonly>
            
            <label for="firstname">First Name:</label>
            <input type="text" id="firstname" name="firstname" value="<%= firstname %>" required>

            <label for="lastname">Last Name:</label>
            <input type="text" id="lastname" name="lastname" value="<%= lastname %>" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" value="<%= email %>" required>

            <label for="phone">Phone:</label>
            <input type="text" id="phone" name="phone" value="<%= phone %>" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" value="<%= password %>" required>

            <div class="button-group">
                <input type="submit" value="Update">
                <input type="reset" value="Reset">
            </div>
        </form>

        <div class="footer">
            <p><a href="customerDashboard.jsp">Back to Dashboard</a></p>
        </div>
    </div>
</body>
</html>
