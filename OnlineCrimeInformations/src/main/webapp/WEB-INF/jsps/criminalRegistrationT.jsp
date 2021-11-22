<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Wanted Criminal Registration Page</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.er{
 color:red;
 }
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



<h1 align="center">Wanted Criminal Registration</h1>
<hr>

<f:form action="/registerCriminalT" method="post" modelAttribute="wcDataT">
Enter Name: <f:input path="name" class="form-control" /> <f:errors path="name" class="er"/>

<br> <br>

Enter Age: <f:input path="age" class="form-control" /> <f:errors path="age" class="er"/>
<br><br>

Enter Gender: <f:radiobutton path="gender" value="male"/>Male
              <f:radiobutton path="gender" value="female"/>Female<f:errors path="gender" class="er"/>
<br><br>

Enter Identification Mark: <f:input path="idMark" class="form-control" /> <f:errors path="idMark" class="er"/>
<br><br>

Enter Area of Crime: <f:input path="areaOfCrime" class="form-control"/> <f:errors path="areaOfCrime" class="er"/>
<br><br>

Enter Crime Type: <f:input path="crimeType" class="form-control"/> <f:errors path="crimeType" class="er"/>
<br>
<input type="submit" class="btn btn-primary" role="button"value="Register">





</f:form>
</div>

</div>
</div>
<div class="col-4">
</div>
</body>
</html>