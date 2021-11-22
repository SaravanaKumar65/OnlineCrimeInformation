<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get Criminal By Name</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<style> 
.top-4{
margin-top: 100px;
}
</style>
</head>

<body>
<div class="container">

<div class="row">
<div class="col-4">
</div>
<div class="col-4">
<h1 align="center" class="top-4">Get Criminal By Name </h1>

<hr>

<form action="/getNCriminal" method="post" >

Enter Criminal Name :<input type="text" class="form-control" name="name" /> <br><br>

<input type="submit" class="btn btn-primary"  value="Get Criminal">

</div>
<div class="col-4">
</div>
</div>

</div>

</form>
</body>
</html>