<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% 
    // Security check to ensure only logged-in students can see this page.
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
    <title>Quiz Result</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <style> body { font-family: 'Inter', sans-serif; } </style>
</head>
<body class="bg-[#111827]">

    <%@ include file="navbar.jsp" %>

    <div>
        <header class="bg-[#1F2937] shadow">
            <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
                <h1 class="text-3xl font-bold text-white">
                    Your Quiz Result
                </h1>
            </div>
        </header>

        <main>
            <div class="max-w-2xl mx-auto py-12 sm:px-6 lg:px-8">
                <div class="bg-[#1F2937] rounded-xl shadow-lg p-8 text-center flex flex-col items-center">
                    
                    <h2 class="text-2xl font-bold text-white">Here's How You Did!</h2>
                    
                    <p class="mt-6 text-lg text-gray-400">Your Score</p>
                    <p class="text-6xl font-extrabold text-purple-400 mt-2">
                        <c:out value="${score}" />
                    </p>
                    
                    <p class="mt-2 text-lg font-medium text-gray-300">
                        That's <c:out value="${percentage}" />%
                    </p>
                    
                    <div class="mt-6 text-lg font-semibold">
                         <c:choose>
                            <c:when test="${percentage >= 90}">
                                <p class="text-green-400">🎉 Excellent! You did a fantastic job! 🚀</p>
                            </c:when>
                            <c:when test="${percentage >= 80}">
                                <p class="text-blue-400">😊 Very Good! Keep up the great work!</p>
                            </c:when>
                            <c:when test="${percentage >= 70}">
                                <p class="text-cyan-400">👍 Good! But you can do even better!</p>
                            </c:when>
                            <c:when test="${percentage >= 40}">
                                <p class="text-yellow-400">😐 You passed, but there’s room for improvement!</p>
                            </c:when>
                            <c:otherwise>
                                <p class="text-red-500">❌ You Failed. Try Again and Do Better Next Time!</p>
                            </c:otherwise>
                        </c:choose>
                    </div>

                    <div class="mt-8 flex items-center gap-4">
                        <a href="Student" class="px-6 py-2 border border-gray-600 rounded-md text-sm font-medium text-gray-300 hover:bg-gray-700">
                            Back to Dashboard
                        </a>
                        <a href="AllTechName" class="px-6 py-2 border border-transparent rounded-md text-sm font-medium text-white bg-[#6D28D9] hover:bg-[#5B21B6]">
                           🔄 Try Another Quiz
                        </a>
                    </div>
                </div>
            </div>
        </main>
    </div>
</body>
</html>