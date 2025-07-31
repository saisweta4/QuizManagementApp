<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot Password</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style> body { font-family: 'Inter', sans-serif; } </style>
</head>
<body class="bg-[#111827] flex items-center justify-center min-h-screen">

    <div class="relative mx-auto w-full max-w-md bg-[#1F2937] rounded-2xl shadow-2xl overflow-hidden">
        <div class="p-8 md:p-12">
            <h2 class="text-3xl font-bold text-white">Forgot Password</h2>
            <p class="mt-2 text-gray-400">Enter your email and we'll show you your password.</p>
            
            <form action="getPassword" method="post" class="mt-8 space-y-6">
                
                <div>
                    <label for="email" class="text-sm font-medium text-gray-300">Email</label>
                    <input type="email" name="email" id="email" class="mt-1 block w-full px-3 py-2 bg-[#374151] border border-gray-600 rounded-md text-white placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-[#8B5CF6]" placeholder="you@example.com" required>
                </div>
                
                <div>
                    <button type="submit" class="w-full flex justify-center py-3 px-4 rounded-md text-sm font-bold text-white bg-[#6D28D9] hover:bg-[#5B21B6] transition">Get Password</button>
                </div>
            </form>
            
            <c:if test="${not empty password}">
                <div class="mt-6">
                    <label for="retrievedPassword" class="text-sm font-medium text-gray-300">Your Password Is:</label>
                    <input type="text" id="retrievedPassword" value="${password}" class="mt-1 block w-full px-3 py-2 bg-yellow-900/50 border border-yellow-700 rounded-md text-yellow-300 font-mono" readonly>
                </div>
            </c:if>

            <div class="mt-6 text-center">
                 <a href="login" class="text-sm text-purple-400 hover:underline">← Back to Login</a>
            </div>
        </div>
    </div>
</body>
</html>