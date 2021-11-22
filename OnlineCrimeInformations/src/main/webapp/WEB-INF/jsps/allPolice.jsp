<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Police Personnel</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<h1 align="center">All Police Personnel </h1>
<hr>
<table class="table">
  <thead>
    <tr>
      <th scope="col">Personnel ID</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Password</th>
      <th scope="col">Age</th>
      <th scope="col">Date of Birth</th>
      <th scope="col">Gender</th>
      <th scope="col">Designation</th>
      <th scope="col">Salary</th>

    </tr>
  </thead>
  <tbody> 
  
    
    <c:forEach var="pol" items="${pList }">
    
    <tr>
      <th scope="row"><c:out value="${pol.polId }"></c:out></th>
      <td><c:out value="${pol.name }"></c:out> </td>
      <td><c:out value="${pol.email }"></c:out> </td>
   	  <td><c:out value="${pol.password }"></c:out> </td>
   	  <td><c:out value="${pol.age }"></c:out> </td>
   	  <td><c:out value="${pol.dob }"></c:out> </td>
   	  <td><c:out value="${pol.gender }"></c:out> </td>
   	  <td><c:out value="${pol.designation }"></c:out> </td>
   	  <td><c:out value="${pol.salary }"></c:out> </td>
   	  <td> <a class="btn btn-success" href="updatePol/${pol.polId }">Update</a> <a class="btn btn-danger" href="deletePol?pid=${pol.polId }"  onclick=" return confirm('Are You Sure ?')" >Delete</a></td>
   	  
    </tr>   
    
  
    
    </c:forEach>
    
    
  </tbody>
</table>

</body>
</html>