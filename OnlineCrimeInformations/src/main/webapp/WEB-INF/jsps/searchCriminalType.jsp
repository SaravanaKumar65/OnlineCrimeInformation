<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get Criminal By Crime Type</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<style>
.top-4{
margin-top: 100px;
}
</style>
<body>
<div class="container">
<div class="row">
<div class="col-4">
</div>
<div class="col-4">
<h1 align="center" class="top-4">Get Criminal By Crime Type </h1>

<hr>

<form action="/getCrimeType" method="post" >

Enter Crime Type :<input type="text" class="form-control" name="crimeType" /> <br><br>

<input type="submit" class="btn btn-primary" value="Get Criminal">

</div>
<div class="col-4">
</div>
</div>
</div>
</form>
</body>
</html>