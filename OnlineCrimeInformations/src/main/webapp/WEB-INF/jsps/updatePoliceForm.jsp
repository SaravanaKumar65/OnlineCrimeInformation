<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Police Update Page</title>
<style>
.er{
 color:red;
 }
</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>

<%@taglib prefix="s" uri="http://www.springframework.org/tags"%>

<div class="container">
<h1 align="center">Police Update Screen</h1>
<hr>
<f:form action="/uPDetails" method="post" modelAttribute="upPolice">
<div class="row">

<div class="col-6">


Police Id : <f:input path="polId" class="form-control" readonly="true"/>

<br><br>
Enter Name: <f:input path="name" class="form-control" /> <f:errors path="name" class="er"/>

<br><br>

Enter Email Id: <f:input path="email" class="form-control"/> <f:errors path="email" class="er"/>
<br><br>

Enter Password: <f:input type="password" class="form-control" path="password" /> <f:errors path="password" class="er"/>
<br><br>

Enter Age: <f:input path="age" class="form-control"/> <f:errors path="age" class="er"/>
<br><br>
</div>

<div class="col-6">
Enter DOB: <f:input path="dob" class="form-control" placeholder="dd/MM/yyyy" type="date"/> <f:errors path="dob" class="er"/>
<br><br>

Enter Gender: <br>
<div class="form-check">
<f:radiobutton path="gender" class="form-check-input" value="male"/>Male
 
</div>
<div class="form-check">
<f:radiobutton path="gender"  class="form-check-input" value="female"/>Female<f:errors path="gender" class="er"/>
</div>

<br><br>

Enter Designation: <f:select path="designation" class="form-control">
                   <f:option value="">Select Designation</f:option>
                   <f:option value="constable">Constable</f:option>
                   <f:option value="constable">Officer</f:option> 
</f:select>
<f:errors path="designation" class="er"/>
<br>
<br>
Enter Salary: <f:input path="salary" class="form-control"/> <f:errors path="salary" class="er"/>
<br><br>
<input type="submit" class="btn btn-primary" role="button" value="Update">
</div>

</f:form>
</div>



</body>
</html>