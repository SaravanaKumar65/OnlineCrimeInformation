<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Complaint Registration</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<style>
*{
background: #e5e5e5;
}
</style>
</head>
<body>
<div class="container-fluid">
<div class="row">
<div class="col-4">
</div>
<div class="col-4">

<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>

<%@taglib prefix="s" uri="http://www.springframework.org/tags"%>


<h1 align="center">Complaint Form</h1>

<hr>

<f:form action="/registerComplaint" method="post" modelAttribute="complaintData">

Complainant Name : <f:input path="username" class="form-control" readonly="true"/> <f:errors path="username"/>
<br>

Complainant Email : <f:input path="email" class="form-control" readonly="true"/> <f:errors path="email"/>
<br>

Complainant Age : <f:input path="age"  class="form-control" readonly="true"/> <f:errors path="age"/>
<br>

Complainant Mobile : <f:input path="mobile" class="form-control" readonly="true"/> <f:errors path="mobile"/>
<br>

Type of Crime: 
<f:select path="typeofcrime" class="form-control">
		<option value="theft">Theft</option>
		<option value="domesticViolence">Domestic Violence </option>
		<option value="murder">Murder</option>
		<option value="sucide">Sucide</option>
		<option value="harassment">Harassment</option>
		<option value="dowry">Dowry</option>
</f:select>
<br>

Crime Date : <f:input path="crimedate" class="form-control" placeholder="dd/mm/yyyy" type="date"/><f:errors path="crimedate"></f:errors>
<br>


Date of Complaint Registration : <f:input path="dateT" class="form-control" type="date" placeholder="dd/mm/yyyy"/> <f:errors path="dateT"/>
<br>





Crime Description: <f:textarea path="description" class="form-control"/><f:errors path="description"/>

<br>

<input type="submit" class="btn btn-primary" role="button" value="Submit">

</f:form>
</div>

</div>
</div>
<div class="col-4">
</div>

</body>
</html>