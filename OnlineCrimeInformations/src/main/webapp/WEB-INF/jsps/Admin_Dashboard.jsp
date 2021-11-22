<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Admin</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
  <style>
  .btn{
  border:3px solid black;
  padding: 5px;
  font-size: 30px;
  background:#5ab9ea; 
  color:white;
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
  }
  </style>
</head>
<body>
<div>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark"> 
 <!-- Links --><h1 align="center" style="color:white">Admin DashBoard</h1>
 
	
	
  <ul class="nav navbar-nav navbar-right ">

                                &nbsp;&nbsp; <li style="align-content:center">
                                    <a href="/adminlogout" class="btn btn-danger" >Logout</a>
                                </li>
                            </ul>

</nav>	
</div>


	<h2 align="center" style="color:white">Welcome ${adminData.username }</h2>
	<hr>

<div class="container">


<a href="/registerOfficier" class="btn  btn-lg btn-block " role="button" aria-pressed="true">Add a Officer</a><br><br> 
<a href="/viewPolice" class="btn  btn-lg btn-block" role="button" aria-pressed="true">View All Police Officer</a><br><br> 
<a href="/criminal" class="btn btn-lg btn-block" role="button" aria-pressed="true">View All Criminals</a><br><br> 
<a href="/viewAllComp" class="btn  btn-lg btn-block" role="button" aria-pressed="true">View Complaints</a><br><br> 
  
</div>

</body>
</html>
  