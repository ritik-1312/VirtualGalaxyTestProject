<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	 <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Boxicons CSS -->
    <link href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css" rel="stylesheet">
    
    <!-- Link to your custom CSS file (if any) -->
    <link rel="stylesheet" href="css/styles.css">
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
	
    <title>Hello, world!</title>
    
    <style type="text/css">
    @import url("https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap");:root{--header-height: 3rem;--nav-width: 68px;--first-color: #4723D9;--first-color-light: #AFA5D9;--white-color: #F7F6FB;--body-font: 'Nunito', sans-serif;--normal-font-size: 1rem;--z-fixed: 100}*,::before,::after{box-sizing: border-box}body{position: relative;margin: var(--header-height) 0 0 0;padding: 0 1rem;font-family: var(--body-font);font-size: var(--normal-font-size);transition: .5s}a{text-decoration: none}.header{width: 100%;height: var(--header-height);position: fixed;top: 0;left: 0;display: flex;align-items: center;justify-content: space-between;padding: 0 1rem;background-color: var(--white-color);z-index: var(--z-fixed);transition: .5s}.header_toggle{color: var(--first-color);font-size: 1.5rem;cursor: pointer}.header_img{width: 35px;height: 35px;display: flex;justify-content: center;border-radius: 50%;overflow: hidden}.header_img img{width: 40px}.l-navbar{position: fixed;top: 0;left: -30%;width: var(--nav-width);height: 100vh;background-color: var(--first-color);padding: .5rem 1rem 0 0;transition: .5s;z-index: var(--z-fixed)}.nav{height: 100%;display: flex;flex-direction: column;justify-content: space-between;overflow: hidden}.nav_logo, .nav_link{display: grid;grid-template-columns: max-content max-content;align-items: center;column-gap: 1rem;padding: .5rem 0 .5rem 1.5rem}.nav_logo{margin-bottom: 2rem}.nav_logo-icon{font-size: 1.25rem;color: var(--white-color)}.nav_logo-name{color: var(--white-color);font-weight: 700}.nav_link{position: relative;color: var(--first-color-light);margin-bottom: 1.5rem;transition: .3s}.nav_link:hover{color: var(--white-color)}.nav_icon{font-size: 1.25rem}.show{left: 0}.body-pd{padding-left: calc(var(--nav-width) + 1rem)}.active{color: var(--white-color)}.active::before{content: '';position: absolute;left: 0;width: 2px;height: 32px;background-color: var(--white-color)}.height-100{height:100vh}@media screen and (min-width: 768px){body{margin: calc(var(--header-height) + 1rem) 0 0 0;padding-left: calc(var(--nav-width) + 2rem)}.header{height: calc(var(--header-height) + 1rem);padding: 0 2rem 0 calc(var(--nav-width) + 2rem)}.header_img{width: 40px;height: 40px}.header_img img{width: 45px}.l-navbar{left: 0;padding: 1rem 1rem 0 0}.show{width: calc(var(--nav-width) + 156px)}.body-pd{padding-left: calc(var(--nav-width) + 188px)}}
    </style>
  </head>
 <body id="body-pd">
    <header class="header" id="header">
        <div class="header_toggle"> <i class='bx bx-menu' id="header-toggle"></i> </div>
        <div style="right: 0">
          
    		<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Choose User</a>
    		<div class="dropdown-menu">
      		<a class="dropdown-item" href="#">Employee</a>
      		<a class="dropdown-item" href="#">Employer</a>
    		</div>		
  
        </div>
        
    </header>
    <div class="l-navbar" id="nav-bar">
        <nav class="nav">
            <div> <a href="#" class="nav_logo"> <i class='bx bx-layer nav_logo-icon'></i> <span class="nav_logo-name">BBBootstrap</span> </a>
                <div class="nav_list"> <a href="#" class="nav_link active"> <i class='bx bx-grid-alt nav_icon'></i> <span class="nav_name">Dashboard</span> </a> <a href="#" class="nav_link"> <i class='bx bx-user nav_icon'></i> <span class="nav_name">Users</span> </a> <a href="#" class="nav_link"> <i class='bx bx-message-square-detail nav_icon'></i> <span class="nav_name">Messages</span> </a> <a href="#" class="nav_link"> <i class='bx bx-bookmark nav_icon'></i> <span class="nav_name">Bookmark</span> </a> <a href="#" class="nav_link"> <i class='bx bx-folder nav_icon'></i> <span class="nav_name">Files</span> </a> <a href="#" class="nav_link"> <i class='bx bx-bar-chart-alt-2 nav_icon'></i> <span class="nav_name">Stats</span> </a> </div>
            </div> <a href="#" class="nav_link"> <i class='bx bx-log-out nav_icon'></i> <span class="nav_name">SignOut</span> </a>
        </nav>
    </div>
    <!--Container Main start-->
    <div class="height-100 bg-light">
       <div class="d-flex justify-content-center align-items-center vh-100">
          <div class="form">
  
  <h1>Registration Form </h1>
  
  
    <form class="row g-3" action="emp_reg" method="post">
       
    <div class="col-md-6">
    <label for="inputAddress" class="form-label">Name</label>
    <input type="text" class="form-control" id="inputAddress" placeholder="Jhon Doe" name="name">
  </div>
  
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">Email</label>
    <input type="email" class="form-control" id="inputEmail4" name="email">
  </div>
  
  <div class="col-md-6">
    <label for="inputPassword4" class="form-label">Password</label>
    <input type="password" class="form-control" id="inputPassword4" name="password">
  </div>
  
   <label for="exampleInputEmail1">Gender</label>

<div class="form-check">
  <input class="form-check-input" type="radio" name="gender" value="1">
  <label class="form-check-label" for="flexRadioDefault1">
    Male
  </label>
</div>
<div class="form-check">
  <input class="form-check-input" type="radio" name="gender" value="0">
  <label class="form-check-label" for="flexRadioDefault2">
    Female
  </label>
</div>

 <label for="exampleInputEmail1">Choose Course</label>

<div class="form-check">
  <input class="form-check-input" type="checkbox" value="java" id="flexCheckDefault" name="course">
  <label class="form-check-label" for="flexCheckDefault">
    Java
  </label>
</div>
<div class="form-check">
  <input class="form-check-input" type="checkbox" value="html" id="flexCheckDefault" name="course">
  <label class="form-check-label" for="flexCheckDefault">
    HTML
  </label>
</div>

<div class="col-md-4">
    <label for="inputState" class="form-label">City</label>
    <select id="inputState" class="form-select" name="city">
      <option selected>Choose...</option>
      <option >Nagpur</option>
      <option>Akola</option>
      <option>Amravati</option>
      <option>Pune</option>
    </select>
  </div>


 
  <div class="col-12">
    <button type="submit" class="btn btn-primary">Sign Up</button>
  </div>
    </form>
  </div>
  
  

</div>
  <!-- Employee table -->
  <div class="emp_table" style="padding-bottom: 80px">
  <table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Password</th>
      <th scope="col">Gender</th>
      <th scope="col">Course</th>
      <th scope="col">City</th>
      <th scope="col">Edit</th>
      <th scope="col">Delete</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach var="rm" items="${list }" >
    <tr>
    
      <th scope="row">${rm.id }</th>
      <td>${rm.name }</td>
      <td>${rm.email }</td>
      <td>${rm.password }</td>
      <td>
      	<c:choose>
      	<c:when test="${rm.gender == 1 }">
       	  Male
      	</c:when>
      	<c:otherwise>
      	 Female
      	</c:otherwise>
      	</c:choose>
      </td>
      <td>${rm.course }</td>
      <td>${rm.city }</td>
      <td><a class="btn btn-success" href="editemp/${rm.id }" role="button">Edit</a></td>
      <td><a class="btn btn-danger" href="deleteemp/${rm.id }" role="button">Delete</a></td>

    </tr>
     </c:forEach>
  </tbody>
</table>
</div>
    </div>
    <!--Container Main end-->

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    
    <script type="text/javascript">
    document.addEventListener("DOMContentLoaded", function(event) {
    	   
    	const showNavbar = (toggleId, navId, bodyId, headerId) =>{
    	const toggle = document.getElementById(toggleId),
    	nav = document.getElementById(navId),
    	bodypd = document.getElementById(bodyId),
    	headerpd = document.getElementById(headerId)

    	// Validate that all variables exist
    	if(toggle && nav && bodypd && headerpd){
    	toggle.addEventListener('click', ()=>{
    	// show navbar
    	nav.classList.toggle('show')
    	// change icon
    	toggle.classList.toggle('bx-x')
    	// add padding to body
    	bodypd.classList.toggle('body-pd')
    	// add padding to header
    	headerpd.classList.toggle('body-pd')
    	})
    	}
    	}

    	showNavbar('header-toggle','nav-bar','body-pd','header')

    	/*===== LINK ACTIVE =====*/
    	const linkColor = document.querySelectorAll('.nav_link')

    	function colorLink(){
    	if(linkColor){
    	linkColor.forEach(l=> l.classList.remove('active'))
    	this.classList.add('active')
    	}
    	}
    	linkColor.forEach(l=> l.addEventListener('click', colorLink))

    	 // Your code to run since DOM is loaded and ready
    	});
    </script>
  </body>
</html>