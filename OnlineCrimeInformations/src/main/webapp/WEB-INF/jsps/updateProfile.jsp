<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<style>

*{
background: #e5e5e5;
}
</style>
</head>
<body>
<body>

<div class="container-fluid">
<div class="row">
<div class="col-4">
</div>
<div class="col-4">

<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>

<%@taglib prefix="s" uri="http://www.springframework.org/tags"%>

<h1 align="center" class="p-4">My Profile</h1>
<hr>

<f:form action="/updateCitizen" method="post" modelAttribute="citizenUpdateData">

Id :<f:input path="citizenId" class="form-control" readonly="true"/><f:errors path="citizenName" />

UserName : <f:input type="text" path="citizenName"  class="form-control"  /><f:errors path="citizenName"></f:errors>


<br>


Email : <f:input path="email" class="form-control"  /><f:errors path="email"></f:errors>

Mobile:<f:input type="text" path="mobile" class="form-control"  /><f:errors path="mobile"></f:errors>


<br>
Password : <f:input type="password" class="form-control"  path="password" /><f:errors path="password"></f:errors>

<br>

Age :<f:input type="number" path="citizenAge" class="form-control"  /><f:errors path="citizenAge"></f:errors>
<br>

<input type="submit" value="Update" class="btn btn-success"   ><br> 

</f:form>


</div>

</div>
</div>
<div class="col-4">
</div>


</body>

</body>
</html>