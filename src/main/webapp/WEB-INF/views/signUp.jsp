<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up | Quiz Management System</title>
    
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
<body class="bg-[#111827] flex items-center justify-center min-h-screen py-12">

    <div class="relative mx-auto w-full max-w-4xl bg-[#1F2937] rounded-2xl shadow-2xl overflow-hidden grid grid-cols-1 md:grid-cols-2">
        
        <div class="relative hidden md:block">
            <img class="absolute inset-0 h-full w-full object-cover" 
                 src="https://c4.wallpaperflare.com/wallpaper/326/803/769/the-dark-mountain-wallpaper-preview.jpg?q=80&w=2070&auto=format&fit=crop" 
                 alt="Inspirational background image">
            <div class="absolute inset-0 bg-black/60"></div>
            <div class="relative flex flex-col justify-between h-full p-8 text-white">
                <h1 class="text-2xl font-bold tracking-wider">QUIZ MGMT</h1>
                <div>
                    <h2 class="text-3xl font-bold">Join Our Community</h2>
                    <p class="mt-2 text-gray-300">Create an account to start your learning journey.</p>
                </div>
            </div>
        </div>
        
        <div class="p-8 md:p-12">
            <h2 class="text-3xl font-bold text-white">Create an Account</h2>
            <p class="mt-2 text-gray-400">Already have an account? 
                <a href="login" class="text-[#8B5CF6] hover:underline">Log in</a>
            </p>
            
            <form action="saveData" method="post" class="mt-8 space-y-5">
                
                <div>
                    <label for="username" class="text-sm font-medium text-gray-300">Username</label>
                    <input type="text" name="username" id="username" 
                           class="mt-1 block w-full px-3 py-2 bg-[#374151] border border-gray-600 rounded-md text-white placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-[#8B5CF6] focus:border-transparent" 
                           placeholder="Choose a username" required>
                </div>

                <div>
                    <label for="email" class="text-sm font-medium text-gray-300">Email</label>
                    <input type="email" name="email" id="email" 
                           class="mt-1 block w-full px-3 py-2 bg-[#374151] border border-gray-600 rounded-md text-white placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-[#8B5CF6] focus:border-transparent" 
                           placeholder="you@example.com" required>
                </div>
                
                <div>
                    <label for="password" class="text-sm font-medium text-gray-300">Password</label>
                    <input type="password" name="password" id="password" 
                           class="mt-1 block w-full px-3 py-2 bg-[#374151] border border-gray-600 rounded-md text-white placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-[#8B5CF6] focus:border-transparent" 
                           placeholder="Create a strong password" required minlength="6">
                </div>
                
                <div>
                    <button type="submit" 
                            class="w-full flex justify-center py-3 px-4 border border-transparent rounded-md shadow-sm text-sm font-bold text-white bg-[#6D28D9] hover:bg-[#5B21B6] focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-[#8B5CF6] transition duration-150 ease-in-out">
                        Create Account
                    </button>
                </div>
            </form>

            <c:if test="${not empty message}">
                <div class="mt-4 text-center p-2 rounded-md bg-green-500/20 text-green-300">
                    <p>${message}</p>
                </div>
            </c:if>

        </div>
    </div>

</body>
</html>