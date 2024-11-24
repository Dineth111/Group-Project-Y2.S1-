<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Response</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
    <header class="navbar navbar-dark bg-primary">
        <div>
            <a href="dashboard" class="navbar-brand mx-2 text-warning">Back to Dashboard</a>
        </div>
    </header>

    <main style="margin-top:2%" class="mx-5">
        <div class="col-6 mx-auto">
            <form action="addresponce" method="post">
                <h2>Add Response</h2>
                
                <div class="form-group mb-2 row">
                    <label class="col-sm-2 col-form-label">Ticket ID</label>
                    <input type="text" name="tiid" class="form-control border-primary" placeholder="Enter Ticket ID.." required>
                </div>
                
                <div class="form-group mb-2 row">
                    <label class="col-sm-2 col-form-label">Response Text</label>
                    <textarea name="responseText" class="form-control border-primary" placeholder="Enter your response.." rows="4" required></textarea>
                </div>
                
                <div class="form-group mb-2 row">
                    <input type="submit" class="btn btn-success" value="Submit Response">
                </div>
            </form>
        </div>
    </main>
    
</body>
</html>
