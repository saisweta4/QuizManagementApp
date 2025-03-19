<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>


<h2>All Questions Are</h2>

<ol type="1">
    <c:forEach var="one" items="${all}">
        <li type="a">
            Question: ${one.qname} <br>
            <ul type="disc">
             <li> ${one.opt1} <br></li>
              <li> ${one.opt2} <br></li>
              <li> ${one.opt3} <br></li>
              <li> ${one.opt4} <br></li><br>
<a href="deleteQuestion?qid=${one.qid}" style="text-decoration:none; color:white; background:#fd9c2e; padding:5px; border-radius:5px;">Delete</a><br>
             <br>
              </ul>
        </li>
    </c:forEach>
</ol>


<nav aria-label="Page navigation example">
  <ul class="pagination">
  
  <c:if test="${page.hasPrevious() }">
    <li class="page-item"><a class="page-link" href="?page=${page.getNumber()-1 }">Previous</a></li>
    </c:if>
    
    <c:forEach var="i" begin="0" end="${page.getTotalPages()-1 }">
    <li class="page-item"><a class="page-link" href="?page=${i }">${i+1 }</a></li>
	</c:forEach>
	
	<c:if test="${page.hasNext() }">
    <li class="page-item"><a class="page-link" href="?page=${page.getNumber()+1 }">Next</a></li>
    </c:if>
  </ul>
</nav>

<center><a href="/Faculty">Go Back</a></center>

</body>
</html>