<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% 
    if (!"Student".equals(session.getAttribute("role"))) {
        response.sendRedirect("login");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Start Exam</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style> body { font-family: 'Inter', sans-serif; } </style>
</head>
<body class="bg-[#111827]">
    
    <%@ include file="navbar.jsp" %>

    <div>
        <header class="bg-[#1F2937] shadow">
            <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
                <h1 class="text-3xl font-bold text-white">Choose a Technology to Start Your Quiz</h1>
            </div>
        </header>

        <main>
            <div class="max-w-7xl mx-auto py-6 sm:px-6 lg:px-8">
                <div class="px-4 py-6 sm:px-0">
                    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                        <c:forEach var="nm" items="${name}">
                            <a href="getQuestion?name=${nm.getTechName()}" class="bg-[#1F2937] rounded-xl shadow-lg p-6 flex flex-col justify-between hover:bg-gray-700 transition duration-300 ease-in-out transform hover:-translate-y-1">
                                <div>
                                    <h3 class="text-white text-xl font-semibold">${nm.getTechName()}</h3>
                                    <p class="text-gray-400 mt-2">Begin the quiz for this subject.</p>
                                </div>
                                <div class="mt-4">
                                    <span class="text-[#8B5CF6] font-bold">Start Now &rarr;</span>
                                </div>
                            </a>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </main>
    </div>
</body>
</html>