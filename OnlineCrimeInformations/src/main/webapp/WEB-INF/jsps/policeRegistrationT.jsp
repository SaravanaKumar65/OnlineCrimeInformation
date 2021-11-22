<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Police Registration Page</title>
<style>
.er{
 color:red;
 }
 *{
 background:#e5e5e5;
 }
</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>

<%@taglib prefix="s" uri="http://www.springframework.org/tags"%>


<div class="container-fluid py-5 h-50">
<f:form action="/registerPoliceT" method="post" modelAttribute="poDataT">
<div class="row">
<h1 align="center">POLICE REGISTRATION</h1>
<hr>
<div class="col-6">





Enter Name: <f:input path="name" class="form-control"/> <f:errors path="name" class="er"/>

<br><br>

Enter Email Id: <f:input path="email" class="form-control" /> <f:errors path="email" class="er"/>
<br><br>

Enter Password: <f:input type="password" path="password" class="form-control" /> <f:errors path="password" class="er"/>
<br><br>

Enter Age: <f:input path="age" class="form-control"/> <f:errors path="age" class="er"/>
<br><br>


</div>

<div class="col-6">
Enter DOB: <f:input path="dob" placeholder="dd/MM/yyyy" type="date" class="form-control"/> <f:errors path="dob" class="er"/>
<br><br>
Enter Gender: <br>
<div class="form-check">
<f:radiobutton path="gender" class="form-check-input" value="male"/>Male
 
</div>
<div class="form-check">
<f:radiobutton path="gender"  class="form-check-input" value="female"/>Female<f:errors path="gender" class="er"/>
</div>

<br>

Enter Designation: <f:select path="designation" class="form-control mt-2">
                   <f:option value="">Select Designation</f:option>
                   <f:option value="constable">Constable</f:option>
                   <f:option value="constable">Officer</f:option> 
</f:select>
<f:errors path="designation" class="er"/>
<br><br>


Enter Salary: <f:input path="salary" class="form-control" /> <f:errors path="salary" class="er"/>
<br><br><br>
<input type="submit" class="btn btn-primary" role="button" value="Register">

</div>
</div>
</f:form>
</div>

</body>
</html>