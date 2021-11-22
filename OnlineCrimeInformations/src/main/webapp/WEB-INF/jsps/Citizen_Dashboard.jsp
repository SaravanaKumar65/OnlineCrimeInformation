<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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
<meta charset="ISO-8859-1">
<title>Citizen DashBoard</title>
</head>
<body>
<h1 align="center" style="color:white" class="head mt-5">Online Crime Information</h1>
<hr>
<h1 align="center" style="color:white" >Welcome ${citizenData.citizenName }</h1>

<div class="container">
<a href="/complaint/${citizenData.citizenId}" class="btn  btn-lg btn-block ">Add a Complaint</a><br><br>

 <a href="updateProfile/${citizenData.citizenId}"  class="btn  btn-lg btn-block ">My Profile</a><br><br>
 <a href="/citizenlogout"  class="btn  btn-lg btn-block ">Logout</a>
</div>

</body>
</html>