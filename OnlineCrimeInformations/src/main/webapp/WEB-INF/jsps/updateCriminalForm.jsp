<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Criminal Update Page</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<style>

</style>
</head>
<body>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>

<h1 align="center">Criminal Update Page</h1>


<f:form action="/updateCriDetails" method="post" modelAttribute="upcriminal">

<div class="container-fluid mt-5">
<div class="row">
<div class="col-6">
Criminal Id : <f:input path="criminalId" class="form-control" readonly="true"/>

<br><br>

Enter Name: <f:input path="name" class="form-control"/> <f:errors path="name"/>

<br> <br>

Enter Age: <f:input path="age" class="form-control" /> <f:errors path="age"/>
<br><br>

Enter Gender: <br>
<div class="form-check">
<f:radiobutton path="gender" class="form-check-input" value="male"/>Male
 
</div>
<div class="form-check">
<f:radiobutton path="gender"  class="form-check-input" value="female"/>Female<f:errors path="gender" class="er"/>
</div>
<br><br>
</div>
<div class="col-6">
Enter Identification Mark: <f:input path="idMark" class="form-control"/> <f:errors path="idMark"/>
<br><br>

Enter Area of Crime: <f:input path="areaOfCrime" class="form-control"/> <f:errors path="areaOfCrime"/>
<br><br>

Enter Crime Type: <f:input path="crimeType" class="form-control"/> <f:errors path="crimeType"/>
<br><br>

<input type="submit" class="btn btn-primary" value="Update">
<a href="/policedashboard" class="btn btn-primary">Back</a>
</div>
</div>
</div>
</f:form>

</body>
</html>