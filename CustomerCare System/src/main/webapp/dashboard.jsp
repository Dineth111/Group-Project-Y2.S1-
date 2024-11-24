<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

</head>
<body>

	<main style="margin-top:2%" class="mx-5">
		<div class="row">
			<div class="container">
				<h3 class="text-start mx-2"> Ticket Dashboard</h3>
			</div>
			
			<div class="text-start">
				<a href="insertresponce.jsp" class="btn btn-primary btn-sm mx-2">Add New Ticket</a>
			</div>
			
			<table class="table mt-2">
				<thead class="table-dark">
					<tr>
						<th>Id</th>
						<th>Subject</th>
						<th>Description</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="tik" items="${tik }">
						<tr>
							<td><c:out value="${tik.tid }"></c:out></td>
							<td><c:out value="${tik.subject}"></c:out></td>
							<td><c:out value="${tik.description }"></c:out></td>
							<td>
								<a href="update?id=<c:out value='${tik.tid }'/>" class="btn btn-success btn-sm">Update</a>
								<a href="delete?id=<c:out value='${tik.tid }'/>" class="btn btn-danger btn-sm">Delete</a>
							</td>
						</tr>
					</c:forEach>
					
				</tbody>
			</table>
		</div>
	</main>
	

</body>
</html>