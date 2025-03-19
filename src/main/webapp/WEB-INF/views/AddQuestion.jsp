<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Add Questions</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    
</head>
<body>

    <!-- Navigation Bar -->
    <!-- <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Faculty_DashBoard</a>
            <div class="collapse navbar-collapse">
                <ul class="navbar-nav me-auto">
                    <li class="nav-item"><a class="nav-link" href="#">Add_Question</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Generate_Quiz</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">All_Quiz</a></li>
                </ul>
                <a class="btn btn-outline-danger" href="#">Logout</a>
            </div>
        </div>
    </nav>
 -->

    <!-- Form Section -->
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <h2 class="text-center mb-4">Add Questions</h2>
                <form action="saveQuestion" method="POST">
                    <!-- Question Input -->
                    <div class="mb-3">
                        <label for="question" class="form-label">Question:</label>
                        <input type="text" class="form-control" id="question" name="qname" required>
                    </div>

                    <!-- Options Input -->
                    <label class="form-label">Options:</label>
                    <div class="mb-3">
                        <input type="text" class="form-control" name="opt1" placeholder="Option 1" required>
                    </div>
                    <div class="mb-3">
                        <input type="text" class="form-control" name="opt2" placeholder="Option 2" required>
                    </div>
                    <div class="mb-3">
                        <input type="text" class="form-control" name="opt3" placeholder="Option 3" required>
                    </div>
                    <div class="mb-3">
                        <input type="text" class="form-control" name="opt4" placeholder="Option 4" required>
                    </div>

                    <!-- Correct Solution Dropdown -->
                    <div class="mb-3">
                        <label for="correctSolution" class="form-label">Correct Solution:</label>
                        <select class="form-select" id="correctSolution" name="correct_Opt">
                            <option value="Option 1">Option 1</option>
                            <option value="Option 2">Option 2</option>
                            <option value="Option 3">Option 3</option>
                            <option value="Option 4">Option 4</option>
                        </select>
                    </div>

                    <!-- Technology Dropdown -->
                    <div class="mb-3">
                        <label for="technology" class="form-label">Technology:</label>
                        <select class="form-select" id="technology" name="technoName">
                        
                        <c:forEach var="one" items="${techName}">
                        	<option value="${one }">${one }</option>
                        </c:forEach>
                        
                        </select>
                    </div>

                    <!-- Submit Button -->
                    <div class="text-center">
                        <button type="submit" class="btn btn-success">Add Question</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <br><center><a href="/Faculty">Go Back</a></center>
<center> <h2>${msg}</h2></center>
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
