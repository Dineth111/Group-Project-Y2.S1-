<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

    <title>Report</title>

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

      .report-form label {
        display: block;
        margin-bottom: 5px;
        margin-left: 20px;
      }

      .report-form input {
        width: calc(100% - 40px); 
        padding: 8px;
        margin-bottom: 10px;
        margin-left: 20px;
        border-radius: 4px;
        border: 1px solid #ccc;
      }

      .report-form button {
        padding: 8px 16px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        margin-left: 20px;
        margin-bottom: 20px;
        margin-top: 20px;
      }

      .report-form button[type="submit"] {
        background-color: #007bff;
        color: #fff;
      }

      .report-form button[type="reset"] {
        background-color: #d71e1e;
        color: #ffffff;
      }

      .full-form {
        border: 2px solid;
        width: 400px;
        margin: auto;
        margin-top: 100px;
        margin-bottom: 100px;
        padding: 20px;
        box-sizing: border-box; 
        background-color: rgb(236, 238, 238);
      }

      h2 {
        text-align: center;
        margin-bottom: 20px;
      }

      button[type="reset"]:hover {
        background-color:#af0909 ;
      }

      button[type="submit"]:hover {
         background-color: #0667cf;
      }

      button[type="reset"]:active {
        background-color:#f81b1b ;
      }
      
      button[type="submit"]:active {
         background-color: #2f90f8;
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

  <nav class="nav" >
        <ul class="navlist">
            <li><a href="UserAdminDashboard.jsp">Dashboard</a></li>
            <li><a href="Customer.jsp">Customers</a></li>
            <li><a href="Agent.jsp">Agents</a></li>
            <li><a href="Reports.jsp">Reports</a></li>
            <li class="website-name" href="#"><a>CareNet</a></li>
        </ul>
    </nav>

    <div class="full-form" id="reportForm">
      <h2>User Report</h2>
      
      <form class="report-form">
        
        <label for="reportid">Report ID:</label>
        <input type="letters" id="reportid" name="reportid"><br>
        
        <label for="reportDate">Date:</label>
        <input type="date" id="reportDate" name="rDate"><br>

        <label for="applicant-count">New Customers Count:</label>
        <input type="number" id="applicant-count" name="newapplicants"><br>

        <label for="recruiter-count">New Agents Count:</label>
        <input type="number" id="newRec-count" name="newRecCount"><br>

        <label for="newUserCount">New Users Count:</label>
        <input type="number" id="newUser-Count" name="newUserCount" ><br>

        <label for="curUserCount">Current Users Count</label>
        <input type="number" id="curUser-Count" name="curUserCount" required><br>

        <label for="totalUserCount">Total Users Count:</label>
        <input type="number" id="totalUser-Count" name="totalUserCount" ><br>

        <label for="adminid">Admin ID:</label>
        <input type="letters" id="adminid" name="adiminid" ><br>

        <button type="reset" >Reset</button>
        <button type="submit">Submit</button>
      </form>
    </div>
   
 <script>
  
           window.onload = function() {
            alert("Weekly Report !");
        };
 </script>
</body>
</html>
    