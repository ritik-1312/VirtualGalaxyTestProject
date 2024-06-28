<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <title>Hello, world!</title>
    
    <style type="text/css">
html, body {
  height: 100%;
  padding: 20px;
}
.form {
  width: 600px;
  border: 1px solid #000;
  padding: 20px;
}
</style>
  </head>
  
  <body>
  
  
  
  <c:set var="sesreg" value="${sesreg }"></c:set>
  <c:choose>
  <c:when test="${sesreg ==  'success' }">
  <script>
      Swal.fire({
        title: 'Good job!',
        text: 'Registration successful! You can log in now.',
        icon: 'success'
      }).then(function() {
        // Remove the session variable after the pop-up is closed
        <c:remove scope="session" var="sesreg" />;
      });
    </script>
  </c:when>
  </c:choose>
  
  <c:set var="sesfail" value="${sesfail }"></c:set>
  <c:choose>
  <c:when test="${sesfail == 'logfail' }">
  <script>
      Swal.fire({
    	  icon: 'error',
    	  title: 'Oops...',
    	  text: 'Login Failed! Enter valid credetials.'
      }).then(function() {
        // Remove the session variable after the pop-up is closed
        <c:remove scope="session" var="seslog" />;
      });
    </script>
  </c:when>
  </c:choose>
  
    <div class="d-flex justify-content-center align-items-center vh-100">
  <div class="form">
  
  <h1>Login Page <span class="badge badge-secondary">New</span></h1>
  
  
    <form class="row g-3" action="do_login" method="post">
    
  
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">Email</label>
    <input type="email" class="form-control" id="inputEmail4" name="email">
  </div>
  
  <div class="col-md-6">
    <label for="inputPassword4" class="form-label">Password</label>
    <input type="password" class="form-control" id="inputPassword4" name="password">
  </div>
  
 
 
  <div class="col-12">
    <button type="submit" class="btn btn-primary">Sign in</button><br><br>
    <p><small>Don't Have an Account? Sign Up here.</small></p>
    <a class="btn btn-primary" href="regform" role="button">Sign Up</a>
  </div>
</form>
  </div>
</div>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
  </body>
</html>