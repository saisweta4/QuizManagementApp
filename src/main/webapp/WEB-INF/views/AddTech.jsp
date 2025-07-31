<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% 
    // Security check to ensure only logged-in faculty can see this page.
    if (!"Faculty".equals(session.getAttribute("role"))) {
        response.sendRedirect("login");
        return; // Stop further processing of the page
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add New Technology</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Inter', sans-serif;
        }
    </style>
</head>
<body class="bg-[#111827]">
    
    <%@ include file="navbar.jsp" %>

    <div>
        <header class="bg-[#1F2937] shadow">
            <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
                <h1 class="text-3xl font-bold text-white">
                    Add New Technology
                </h1>
            </div>
        </header>

        <main>
            <div class="max-w-xl mx-auto py-12 sm:px-6 lg:px-8">
                <div class="bg-[#1F2937] rounded-xl shadow-lg p-8">
                    <form action="newTech" method="get">
                        
                        <div>
                            <label for="tech" class="block text-sm font-medium text-gray-300">Technology Name</label>
                            <input type="text" name="tech" id="tech" class="mt-1 block w-full px-3 py-2 bg-[#374151] border border-gray-600 rounded-md text-white placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-[#8B5CF6] focus:border-transparent" placeholder="e.g., Java, Python, SQL" required>
                        </div>

                        <div class="mt-6 flex justify-end gap-4">
                            <a href="Faculty" class="px-6 py-2 border border-gray-600 rounded-md shadow-sm text-sm font-medium text-gray-300 hover:bg-gray-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-gray-500">
                                Cancel
                            </a>
                            <button type="submit" class="px-6 py-2 border border-transparent rounded-md shadow-sm text-sm font-medium text-white bg-[#6D28D9] hover:bg-[#5B21B6] focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-[#8B5CF6]">
                                Add Technology
                            </button>
                        </div>
                    </form>
                    
                    <c:if test="${not empty msg}">
                        <div class="mt-6 text-center p-3 rounded-md bg-green-500/20 text-green-300">
                            <p>${msg}</p>
                        </div>
                    </c:if>

                </div>
            </div>
        </main>
    </div>
</body>
</html>