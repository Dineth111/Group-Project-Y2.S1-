<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Responses</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
    <header class="navbar navbar-dark bg-primary">
        <div>
            <a href="dashboard" class="navbar-brand mx-2 text-warning">Back to Dashboard</a>
        </div>
    </header>

    <main style="margin-top:2%" class="mx-5">
        <div class="container">
            <h3 class="text-start mx-2">Responses</h3>
        </div>
        
        <table class="table mt-2">
            <thead class="table-dark">
                <tr>
                    <th>Ticket ID</th>
                    <th>Response Text</th>
                    <th>Action</th> 
                </tr>
            </thead>
            <tbody>
                <c:forEach var="resp" items="${responses}">
                    <tr>
                        <td><c:out value="${resp.tid}"></c:out></td>
                        <td><c:out value="${resp.responseText}"></c:out></td>
                        <td>
                            <a href="updateResponse?tid=<c:out value='${resp.tid}'/>" class="btn btn-warning btn-sm">Update</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </main>
    
</body>
</html>
