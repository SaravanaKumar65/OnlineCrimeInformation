<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Citizen Login Form</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<style type="text/css">

.gradient-custom {
  /* fallback for old browsers */
  background: #6a11cb;
}</style>	
</head>
<body>


<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<section class="vh-100 gradient-custom">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card bg-dark text-white" style="border-radius: 1rem;">
          <div class="card-body p-5 text-center">

            <div class="mt-md-4 pb-3">
<h1 class="fw-bold mb-2 text-uppercase" align="center">Login Page</h1>

<hr>

<f:form action="/citizenlogin" method="post" modelAttribute="loginData">
<div class="form-outline form-white mb-4">

<f:input path="username" class="form-control form-control-lg" placeholder="E-Mail"/> <f:errors path="username"/>
</div>
<div class="form-outline form-white mb-4">
<f:input path="password" class="form-control form-control-lg" type="password" placeholder="Password"/> <f:errors path="password"/>
</div>
<br>

<input type="submit" value="Login"  class="btn btn-outline-light btn-lg px-5">

<br><br>
<div>
<p class="mb-0">Don't have an account? <a href="/signUp" class="text-white-50 fw-bold">Sign Up</a></p>
</div>

</f:form>
</div>
</div>
</div>
</div>
</div>
</div>
</section>
</body>
</html>