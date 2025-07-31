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
    <title>Add New Question</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Inter', sans-serif;
        }
        /* Custom styles for dark mode select dropdown arrow */
        select {
            background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' fill='none' viewBox='0 0 20 20'%3e%3cpath stroke='%239ca3af' stroke-linecap='round' stroke-linejoin='round' stroke-width='1.5' d='M6 8l4 4 4-4'/%3e%3c/svg%3e");
            background-position: right 0.5rem center;
            background-repeat: no-repeat;
            background-size: 1.5em 1.5em;
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
        }
    </style>
</head>
<body class="bg-[#111827]">
    
    <!-- Include the reusable navigation bar -->
    <%@ include file="navbar.jsp" %>

    <div>
        <header class="bg-[#1F2937] shadow">
            <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
                <h1 class="text-3xl font-bold text-white">
                    Add New Question
                </h1>
            </div>
        </header>

        <main>
            <div class="max-w-3xl mx-auto py-12 sm:px-6 lg:px-8">
                <div class="bg-[#1F2937] rounded-xl shadow-lg p-8">
                    <form action="saveQuestion" method="POST" class="space-y-6">
                        
                        <!-- Question Input -->
                        <div>
                            <label for="question" class="block text-sm font-medium text-gray-300">Question</label>
                            <textarea id="question" name="qname" rows="3" class="mt-1 block w-full px-3 py-2 bg-[#374151] border border-gray-600 rounded-md text-white placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-[#8B5CF6] focus:border-transparent" placeholder="Enter the full question text here..." required></textarea>
                        </div>

                        <!-- Options Grid -->
                        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                            <div>
                                <label for="opt1" class="block text-sm font-medium text-gray-300">Option 1</label>
                                <input type="text" name="opt1" id="opt1" class="mt-1 block w-full px-3 py-2 bg-[#374151] border border-gray-600 rounded-md text-white placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-[#8B5CF6] focus:border-transparent" required>
                            </div>
                             <div>
                                <label for="opt2" class="block text-sm font-medium text-gray-300">Option 2</label>
                                <input type="text" name="opt2" id="opt2" class="mt-1 block w-full px-3 py-2 bg-[#374151] border border-gray-600 rounded-md text-white placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-[#8B5CF6] focus:border-transparent" required>
                            </div>
                             <div>
                                <label for="opt3" class="block text-sm font-medium text-gray-300">Option 3</label>
                                <input type="text" name="opt3" id="opt3" class="mt-1 block w-full px-3 py-2 bg-[#374151] border border-gray-600 rounded-md text-white placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-[#8B5CF6] focus:border-transparent" required>
                            </div>
                             <div>
                                <label for="opt4" class="block text-sm font-medium text-gray-300">Option 4</label>
                                <input type="text" name="opt4" id="opt4" class="mt-1 block w-full px-3 py-2 bg-[#374151] border border-gray-600 rounded-md text-white placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-[#8B5CF6] focus:border-transparent" required>
                            </div>
                        </div>

                        <!-- Correct Solution & Technology Dropdowns -->
                        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                            <div>
                                <label for="correctSolution" class="block text-sm font-medium text-gray-300">Correct Solution</label>
                                <select id="correctSolution" name="correctOpt" class="mt-1 block w-full pl-3 pr-10 py-2 bg-[#374151] border border-gray-600 rounded-md text-white focus:outline-none focus:ring-2 focus:ring-[#8B5CF6] focus:border-transparent">
                                    <option>Option 1</option>
                                    <option>Option 2</option>
                                    <option>Option 3</option>
                                    <option>Option 4</option>
                                </select>
                            </div>
                            <div>
                                <label for="technology" class="block text-sm font-medium text-gray-300">Technology</label>
                                <select id="technology" name="technoName" class="mt-1 block w-full pl-3 pr-10 py-2 bg-[#374151] border border-gray-600 rounded-md text-white focus:outline-none focus:ring-2 focus:ring-[#8B5CF6] focus:border-transparent">
                                    <c:forEach var="one" items="${techName}">
                                        <option value="${one}">${one}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>

                        <!-- Submit Button -->
                        <div class="flex justify-end gap-4">
                            <a href="/Faculty" class="px-6 py-2 border border-gray-600 rounded-md shadow-sm text-sm font-medium text-gray-300 hover:bg-gray-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-gray-500">
                                Cancel
                            </a>
                            <button type="submit" class="px-6 py-2 border border-transparent rounded-md shadow-sm text-sm font-medium text-white bg-[#6D28D9] hover:bg-[#5B21B6] focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-[#8B5CF6]">
                                Add Question
                            </button>
                        </div>
                    </form>
                    
                    <!-- Feedback Message -->
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