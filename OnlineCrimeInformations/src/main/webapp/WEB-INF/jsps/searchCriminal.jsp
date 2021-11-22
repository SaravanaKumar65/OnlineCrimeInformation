<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta "src/main/webapp/WEB-INF/jsps/searchCriminal.jsp"charset="ISO-8859-1">
<title>Search Criminal</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>

*{
position: relative;
top: 25px;
}
.btn{
  border:3px solid black;
  width:100%;
  padding: 10px;
  font-size: 30px;
  background:#5ab9ea; 
  color:white;

  }
  .btn:hover{
  background:white;
  color:#5ab9ea;
  }
</style>
</head>

<body>
<h1 align="center">Search Criminal</h1>
<hr>
<div class="container">
<div class="row">
<div class="col-4">
</div>
<div class="col-4">
<a href="/byName" class="btn  btn-lg btn-block ">Search by Name</a><br><br>
<a href="/byCrime" class="btn  btn-lg btn-block ">Search by Crime Type</a><br><br>

</div>
<div class="col-4">
</div>


</div>
</div>
</body>
</html>