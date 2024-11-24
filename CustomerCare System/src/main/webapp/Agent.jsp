<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    
    <title>Agents</title>

    <style>

.navlist {
            list-style-type: none;
            overflow: hidden;
            border: 1px solid #c0d0e0;
            background-color: #677ff7;
            margin: 0;
            width: 100%;
        }

        li {
            float: left;
            display: inline-block;
        }

        li a {
            text-decoration: none;
            display: block;
            color: #ffffff;
            text-align:center;
            padding: 20px 25px;
        }

        li a:hover:not(.active) {
            background-color: #fffefe;
            color: black;
        }

        li a.active {
            color: white;
            background-color: #04AA6D;
        }

        body {
            margin: 0;
        }

        .ustable table {
            border : 1px black solid;
            border-collapse: collapse;
            margin-top: 100px;
            margin-left: auto;
            margin-right: auto;
        }

        .ustable {
            position: relative;
        }

        .ustable th,td {
            border : 1px black solid;
            padding:10px;
            text-align: center;
        }

        .ustable button {
            margin:1px;
        }

        .ustable caption {
            padding: 5px;
        }

        .ustable th {
            background-color:  #677ff7;
            color: #faf6f6;
        }

        .aptable {
            margin-bottom: 100px;
        }

        tr:nth-child(even) {
            background-color: #eae7e7;
        }
         
        .act {
            background-color: rgb(27, 243, 27);
            color: white;
            border: none;
            border-radius: 6px;
            padding: 5px;
        }

        .deact {
            background-color: rgb(254, 70, 70);
            color: white;
            border: none;
            border-radius: 6px;
            padding: 5px;
        }

        .act:hover {
            background-color:rgb(3, 156, 3) ;
        }

        .deact:hover {
            background-color: rgb(191, 6, 6);
        }

        .act:active {
            background-color: rgb(84, 248, 84);
        }

        .deact:active {
            background-color: rgb(248, 57, 57);
        }

        .aptable caption {
            font-size: 18px;
        }

        .website-name {
        margin-right: 50px;
        float: right;
        background-color: #1f0b93; 
        font-size: 20px;
        }

    </style>
</head>
<body>
    <nav class="nav">
        <ul class="navlist">
            <li><a href="UserAdminDashboard.jsp">Dashboard</a></li>
            <li><a href="Customer.jsp">Customers</a></li>
            <li><a href="Agent.jsp">Agents</a></li>
            <li><a href="Reports.jsp">Reports</a></li>
            <li class="website-name"><a>CareNet</a></li>
        </ul>
    </nav>

    <div class="ustable">
        <table class="aptable">
            <caption>Agent Information Table</caption>
            <tr>
                <th>Agent ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Password</th>
                <th>Address</th>
                <th>Phone</th>
                <th>Dept</th>
                <th>Action</th>
            </tr>
            <c:forEach var="agent" items="${agents}">
                <tr>
                    <td>${agent.agentId}</td>
                    <td>${agent.firstName}</td>
                    <td>${agent.lastName}</td>
                    <td>${agent.email}</td>
                    <td>${agent.password}</td>
                    <td>${agent.address}</td>
                    <td>${agent.phone}</td>
                    <td>${agent.department}</td>
                    <td>
                        <button class="act">Edit</button>
                        <button class="deact">Delete</button>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>