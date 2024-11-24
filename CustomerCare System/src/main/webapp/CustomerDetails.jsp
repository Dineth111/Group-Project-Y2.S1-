<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Customer Details</title>
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
		    padding: 40px;
		    border-radius: 10px;
		    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		    width: 400px;
		    text-align: left;
		    position: relative;
		}
		
		h1 {
		    margin-bottom: 20px;
		    color: #334b6b;
		    margin-top: 0;
		    text-align: center;
		}
		
		label {
		    display: block;
		    margin-bottom: 5px;
		}
		
		.details {
		    margin-bottom: 15px;
		    font-size: 20px;
		}
		
		.details span {
		    font-weight: bold;
		}
		
		.wrapper {
		    display: flex;
		    justify-content: center;
		    align-items: center;
		    gap: 20px; 
		}
		
		.button-group {
		    display: flex;
		    flex-direction: column; 
		    gap: 10px;
		    margin-left:20%
		  	
		}
		
		.button-group a input,
		.button-group form input {
		    width: 250px;
		    padding: 10px;
		    border: none;
		    border-radius: 4px;
		    cursor: pointer;
		    font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
		    font-size: 20px;
		    color: #fff;
		    text-align: center;
		}
		
		.edit-btn {
		    background-color: #008fcc;
		}
		
		.edit-btn:hover {
		    background-color: #017eb4;
		}
		
		.delete-btn {
		    background-color: #db3615;
		}
		
		.delete-btn:hover {
		    background-color: #c73417;
		}

    </style>
</head>

<body>
    <div class="container">
        <center><h1>Customer Details</h1></center>

        <c:if test="${not empty sessionScope.cusDetails}">
            <c:forEach var="customer" items="${sessionScope.cusDetails}">
            
              <c:set var="id" value="${customer.id}"/>
              <c:set var="firstname" value="${customer.firstname}"/>
              <c:set var="lastname" value="${customer.lastname}"/>    
              <c:set var="email" value="${customer.email}"/>
              <c:set var="phone" value="${customer.phone}"/>
              <c:set var="password" value="${customer.password}"/>
              
              <div class="details">
                    <label>ID:</label>
                    <span>${customer.id}</span>
                </div>
                
                <div class="details">
                    <label>First Name:</label>
                    <span>${customer.firstname}</span>
                </div>

                <div class="details">
                    <label>Last Name:</label>
                    <span>${customer.lastname}</span>
                </div>

                <div class="details">
                    <label>Email:</label>
                    <span>${customer.email}</span>
                </div>

                <div class="details">
                    <label>Phone:</label>
                    <span>${customer.phone}</span>
                </div>
            </c:forEach>

            
        </c:if>

        <c:if test="${empty sessionScope.cusDetails}">
            <p>No customer details found. Please try again.</p>
        </c:if>
        
          <c:url  value="UpdateCustomer.jsp" var="cusupdate"> 
           <c:param name="id" value ="${id}"/>
      		<c:param name="firstname" value ="${firstname}"/>
      		<c:param name="lastname" value ="${lastname}"/>
      		<c:param name="email" value ="${email}"/>
      		<c:param name="phone" value ="${phone}"/>
      		<c:param name="password" value ="${password}"/>
      </c:url>
      
       <div class="button-group">
          <p></p>
           <a href="${cusupdate}">
             <input type="submit" class="edit-btn" value="Edit Profile">
             </a>
           
           <c:url value = "DeleteCustomer.jsp" var = "cusdelete">
           		<c:param name="id" value ="${id}"/>
	      		<c:param name="firstname" value ="${firstname}"/>
	      		<c:param name="lastname" value ="${lastname}"/>
	      		<c:param name="email" value ="${email}"/>
	      		<c:param name="phone" value ="${phone}"/>
	      		<c:param name="password" value ="${password}"/>
           </c:url>
            <a href="${cusdelete}">
            <input type="submit" class="delete-btn" value="Delete Profile">
            </a>
            
     </div>
    </div>
    
    
</body>
</html>
