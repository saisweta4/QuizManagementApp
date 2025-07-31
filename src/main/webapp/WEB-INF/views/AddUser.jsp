<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% 
    if (!"Admin".equals(session.getAttribute("role"))) {
        response.sendRedirect("login");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add New User</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style> body { font-family: 'Inter', sans-serif; } </style>
</head>
<body class="bg-[#111827]">
    
    <%@ include file="navbar.jsp" %>

    <div>
        <header class="bg-[#1F2937] shadow">
            <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
                <h1 class="text-3xl font-bold text-white">Add New User</h1>
            </div>
        </header>

        <main>
            <div class="max-w-xl mx-auto py-12 sm:px-6 lg:px-8">
                <div class="bg-[#1F2937] rounded-xl shadow-lg p-8">
                    <form action="AdminAddUser" method="post" class="space-y-6">
                        
                        <div>
                            <label for="username" class="block text-sm font-medium text-gray-300">Username</label>
                            <input type="text" name="username" id="username" class="mt-1 block w-full px-3 py-2 bg-[#374151] border border-gray-600 rounded-md text-white placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-[#8B5CF6]" required>
                        </div>

                        <div>
                            <label for="email" class="block text-sm font-medium text-gray-300">Email</label>
                            <input type="email" name="email" id="email" class="mt-1 block w-full px-3 py-2 bg-[#374151] border border-gray-600 rounded-md text-white placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-[#8B5CF6]" required>
                        </div>
                        
                        <div>
                            <label for="password" class="block text-sm font-medium text-gray-300">Password</label>
                            <input type="password" name="password" id="password" class="mt-1 block w-full px-3 py-2 bg-[#374151] border border-gray-600 rounded-md text-white placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-[#8B5CF6]" required minlength="6">
                        </div>

                        <div>
                            <label class="block text-sm font-medium text-gray-300">Assign Role</label>
                            <div class="mt-2 flex items-center space-x-6">
                                <label class="flex items-center text-gray-300">
                                    <input type="radio" name="role" value="Student" class="h-4 w-4 text-purple-600 bg-gray-700 border-gray-600 focus:ring-purple-500">
                                    <span class="ml-2">Student</span>
                                </label>
                                <label class="flex items-center text-gray-300">
                                    <input type="radio" name="role" value="Faculty" class="h-4 w-4 text-purple-600 bg-gray-700 border-gray-600 focus:ring-purple-500">
                                    <span class="ml-2">Faculty</span>
                                </label>
                            </div>
                        </div>

                        <div class="flex justify-end gap-4 pt-4">
                            <a href="/Admin" class="px-6 py-2 border border-gray-600 rounded-md text-sm font-medium text-gray-300 hover:bg-gray-700">Cancel</a>
                            <button type="submit" class="px-6 py-2 border border-transparent rounded-md text-sm font-medium text-white bg-[#6D28D9] hover:bg-[#5B21B6]">Add User</button>
                        </div>
                    </form>
                    
                    <c:if test="${not empty message}">
                        <div class="mt-6 text-center p-3 rounded-md bg-green-500/20 text-green-300"><p>${message}</p></div>
                    </c:if>

                </div>
            </div>
        </main>
    </div>
</body>
</html>