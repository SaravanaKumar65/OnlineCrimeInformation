<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Police Officer Home</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<style>
 .btn{
   border:3px solid black;
  width:70%;
  padding: 10px;
  font-size: 30px;
  background:#5ab9ea; 
  color:white;
  position: relative;
  top: 90px;
  left: 180px;
  }
  .btn:hover{
  background:white;
  color:#5ab9ea;
  }
  body{
  
  background-image: url("https://wallpapercave.com/wp/wp2821953.jpg");
  background-repeat:no-repeat;
  background-size: cover;
  background-position:center;
  height: 800px;
  }
</style>
</head>
<body>

<h1 align="center" style="color:white">Police Officer Home</h1>

<h1 align="center" style="color:white">Welcome ${PoliceDataT.name }</h1>
<hr>
<div class="container">

<a href="/criminal" class="btn  btn-lg btn-block " role="button" aria-pressed="true">View All Wanted Criminals</a>
<br><br>
<a href="rCriminal" class="btn btn-lg btn-block" role="button" aria-pressed="true">Add New Criminal</a>
<br><br>
<a href="/search" class="btn btn-lg btn-block">Search Criminal</a>
<br><br>
<a href="/logout" class="btn btn-lg btn-block">Logout</a>
<br><br>
</div>
</body>
</html>