<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Citizen Registration Form</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<style> 
*{
background: #e5e5e5;
}
.er{
color: red;
}
</style>
<script>


</script>
</head>


<body>

<div class="container-fluid">
<div class="row">
<div class="col-4">
</div>
<div class="col-4">

<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>

<%@taglib prefix="s" uri="http://www.springframework.org/tags"%>

<h1 align="center" class="p-4">Citizen Registration</h1>
<hr>

<f:form action="registerCitizen" method="post" modelAttribute="citizenData">

UserName : <f:input type="text" path="citizenName" class="form-control"  /><f:errors path="citizenName" class="er"></f:errors>


<br>




Email : <f:input path="email" class="form-control"  /><f:errors path="email" class="er"></f:errors>


<br>

Mobile :<f:input type="number" path="mobile" class="form-control"  /><f:errors path="mobile" class="er"></f:errors>
<br>

Password : <f:input type="password" class="form-control"  path="password" /><f:errors path="password" class="er"></f:errors>

<br>

Age :<f:input type="number" path="citizenAge" class="form-control"  /><f:errors path="citizenAge" class="er"></f:errors>
<br>

<input type="submit" value="SignUp" class="btn btn-primary" ><br> 


<a href="/citizenlogin" >Existing user?</a>


</f:form>


</div>

</div>
</div>
<div class="col-4">
</div>




</body>
</html>