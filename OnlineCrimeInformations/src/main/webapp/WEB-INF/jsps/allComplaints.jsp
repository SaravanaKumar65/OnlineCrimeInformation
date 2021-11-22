<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Complaints</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<h1 align="center">All Complaints </h1>
<hr>
<table class="table">
  <thead>
    <tr>
      <th scope="col">Complaint ID</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Age</th>
      <th scope="col">Mobile</th>
      <th scope="col">Type of Crime</th>
      <th scope="col">Date of Crime</th>
      <th scope="col">Date of Complaint Registration</th>
      <th scope="col">Description of Crime</th>
      <th scope="col">Status</th>
    </tr>
  </thead>
  <tbody> 
    
    <c:forEach var="comp" items="${compList }">
    
    <tr>
      <th scope="row"><c:out value="${comp.cid }"></c:out></th>
      <td><c:out value="${comp.username }"></c:out> </td>
      <td><c:out value="${comp.email }"></c:out> </td>
   	  <td><c:out value="${comp.age }"></c:out> </td>
   	  <td><c:out value="${comp.mobile }"></c:out> </td>
   	  <td><c:out value="${comp.typeofcrime }"></c:out> </td>
   	  <td><c:out value="${comp.crimedate }"></c:out> </td>
   	  <td><c:out value="${comp.dateT }"></c:out> </td>
   	  <td><c:out value="${comp.description }"></c:out> </td>
   	  <td><c:out value="Active"></c:out> </td>
   	  
   	  
    </tr>   
    
  
    
    </c:forEach>
    
    
  </tbody>
</table>

</body>
</html>