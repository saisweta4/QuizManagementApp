<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <% if("Faculty".equals(session.getAttribute("role")) ){  }
else {response.sendRedirect("login");}%>
<!DOCTYPE html>
<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #F5F5DC; font-size: large; height: 60px;">
    <a class="navbar-brand" href="Faculty">Faculty-DashBoard</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav mr-auto">
         <!--     <li class="nav-item active">
                <a class="nav-link" href="AllFaculty?name=faculty">All Faculty </a>
            </li>    -->
            <li class="nav-item">
                <a class="nav-link" href="AddQuestion">Add Question</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="AllQuestion">All Questions</a>
            </li>
            
            <!--  <li class="nav-item">
                <a class="nav-link" href="AddTech">Add Technology</a>
            </li> -->
            
        </ul>
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="logout">Logout</a>
            </li>
        </ul>
    </div>
</nav>
<center>
<h1>Welcome To Faculty DashBoard</h1></center>


<!-- cards -->


<div class="d-flex justify-content-center align-item-center mt-4 ">

<div class="card text-bg-secondary mb-3 mt-4" style="max-width: 18rem; margin-left: 20px; margin-right: 20px;">
<!--   <div class="card-header">Header</div>
 -->  <div class="card-body">
    <h5 class="card-title">All Student</h5>
    <p class="card-text">${studentCount }<br></p>
  </div>
</div>


<div class="card text-bg-secondary mb-3 mt-4" style="max-width: 18rem;  margin-left: 20px; margin-right: 20px;">
  <!-- <div class="card-header">Header</div> -->
  <div class="card-body">
    <h5 class="card-title">All Questions</h5>
    <p class="card-text">${qnCount }</p>
  </div>
</div>

<!--
<div class="card text-bg-secondary mb-3 mt-4" style="max-width: 18rem;  margin-left: 20px; margin-right: 20px;">
   <div class="card-header">Header</div>
  <div class="card-body">
    <h5 class="card-title">No Of Technology</h5>
    <p class="card-text">${tech }</p>
  </div>
   -->
</div>
</div>
</body>
</html>