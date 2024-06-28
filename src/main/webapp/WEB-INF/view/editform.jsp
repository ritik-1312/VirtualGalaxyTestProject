<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
 <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
 
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

<div class="d-flex justify-content-center align-items-center vh-100">
  <div class="form">
  
  <h1>Edit Your Details</h1>
  
  
  
  <c:forEach var="rm" items="${emp }">
    <form class="row g-3" action="/VirtualGalaxyTestProject/update" method="post">
    
    <div class="col-md-6">
    <label class="form-label">ID</label>
    <input type="hidden" class="form-control" id="inputAddress"  name="id" value="${rm.id}"><br>
  </div>
    
    <div class="col-12">
    <label for="inputAddress" class="form-label">Name</label>
    <input type="text" class="form-control" id="inputAddress" value="${rm.name}" name="name">
  </div>
  
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">Email</label>
    <input type="email" class="form-control" id="inputEmail4" name="email" value="${rm.email}">
  </div>
  
  <div class="col-md-6">
    <label for="inputPassword4" class="form-label">Password</label>
    <input type="password" class="form-control" id="inputPassword4" name="password" value="${rm.password}">
  </div>
  
   <label for="exampleInputEmail1">Gender</label>

<div class="form-check">
  <input class="form-check-input" type="radio" name="gender" value="1"
  <c:if test="${rm.gender == 1 }">checked</c:if>>
  <label class="form-check-label" for="flexRadioDefault1">
    Male
  </label>
</div>
<div class="form-check">
  <input class="form-check-input" type="radio" name="gender" value="0"
  <c:if test="${rm.gender == 0 }">checked</c:if>>
  <label class="form-check-label" for="flexRadioDefault2">
    Female
  </label>
</div>

 <label for="exampleInputEmail1">Choose Course</label>

<div class="form-check">
<c:set var="cou" value="${rm.course }"></c:set>
  <input class="form-check-input" type="checkbox" value="java" id="flexCheckDefault" name="course"
  <c:if test="${fn:contains(cou, 'java') }">checked</c:if>>
  <label class="form-check-label" for="flexCheckDefault">
    Java
  </label>
</div>
<div class="form-check">
  <input class="form-check-input" type="checkbox" value="html" id="flexCheckDefault" name="course"
  <c:if test="${fn:contains(cou, 'html') }">checked</c:if>>
  <label class="form-check-label" for="flexCheckDefault">
    HTML
  </label>
</div>

<div class="col-md-4">
    <label for="inputState" class="form-label">City</label>
    <select id="inputState" class="form-select" name="city">
      <option selected>Choose...</option>
     <option value="Nagpur" <c:if test="${rm.city == 'Nagpur'}">selected</c:if> >Nagpur</option>
     <option value="Akola" <c:if test="${rm.city == 'Akola'}">selected</c:if> >Akola</option>
     <option value="Amravati" <c:if test="${rm.city == 'Amravati'}">selected</c:if> >Amravati</option>
     <option value="Pune" <c:if test="${rm.city == 'Pune'}">selected</c:if> >Pune</option>
    </select>
  </div>


 
  <div class="col-12">
    <button type="submit" class="btn btn-primary">Update</button>
  </div>
</form>
</c:forEach>
  </div>
</div>
</body>
</html>
