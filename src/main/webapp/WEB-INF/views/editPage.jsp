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
    <title>Update User</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style> body { font-family: 'Inter', sans-serif; } </style>
</head>
<body class="bg-[#111827]">
    
    <%@ include file="navbar.jsp" %>

    <div>
        <header class="bg-[#1F2937] shadow">
            <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
                <h1 class="text-3xl font-bold text-white">Update User Information</h1>
            </div>
        </header>

        <main>
            <div class="max-w-xl mx-auto py-12 sm:px-6 lg:px-8">
                <div class="bg-[#1F2937] rounded-xl shadow-lg p-8">
                    <form action="updateSubmit" method="post" class="space-y-6">
                        
                        <input type="hidden" name="role" value="${student.role}">

                        <div>
                            <label for="id" class="block text-sm font-medium text-gray-400">User ID</label>
                            <input type="text" name="id" id="id" value="${student.id}" class="mt-1 block w-full px-3 py-2 bg-[#111827] border border-gray-700 rounded-md text-gray-400 cursor-not-allowed" readonly>
                        </div>

                        <div>
                            <label for="username" class="block text-sm font-medium text-gray-300">Username</label>
                            <input type="text" name="username" id="username" value="${student.username}" class="mt-1 block w-full px-3 py-2 bg-[#374151] border border-gray-600 rounded-md text-white placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-[#8B5CF6]" required>
                        </div>

                        <div>
                            <label for="email" class="block text-sm font-medium text-gray-300">Email</label>
                            <input type="text" name="email" id="email" value="${student.email}" class="mt-1 block w-full px-3 py-2 bg-[#374151] border border-gray-600 rounded-md text-white placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-[#8B5CF6]" required>
                        </div>
                        
                        <div>
                            <label for="password" class="block text-sm font-medium text-gray-300">Password</label>
                            <input type="text" name="password" id="password" value="${student.password}" class="mt-1 block w-full px-3 py-2 bg-[#374151] border border-gray-600 rounded-md text-white placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-[#8B5CF6]" required minlength="6">
                            <p class="mt-1 text-xs text-yellow-500">Warning: You are viewing a plain text password. This should be updated for security.</p>
                        </div>
                        
                        <div class="flex justify-end gap-4 pt-4">
                            <a href="ShowAllStudent?name=${student.role}" class="px-6 py-2 border border-gray-600 rounded-md text-sm font-medium text-gray-300 hover:bg-gray-700">Cancel</a>
                            <button type="submit" class="px-6 py-2 border border-transparent rounded-md text-sm font-medium text-white bg-[#6D28D9] hover:bg-[#5B21B6]">Update User</button>
                        </div>
                    </form>
                </div>
            </div>
        </main>
    </div>
</body>
</html>