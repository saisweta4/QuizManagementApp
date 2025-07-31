<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome | Quiz Management System</title>
    
    <script src="https://cdn.tailwindcss.com"></script>
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
    
    <style>
        body {
            font-family: 'Inter', sans-serif;
        }
    </style>
</head>
<body class="relative">

    <div class="absolute inset-0 z-[-1]">
        <img src="https://images.unsplash.com/photo-1554176259-aa961fc32671?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8ZGFyayUyMG1vdW50YWlufGVufDB8fDB8fHww?q=80&w=2070&auto=format&fit=crop" 
             class="h-full w-full object-cover">
        <div class="absolute inset-0 bg-black/70"></div>
    </div>

    <div class="flex flex-col items-center justify-center min-h-screen text-center px-4">
        
        <h1 class="text-5xl md:text-7xl font-extrabold text-white leading-tight">
            Welcome to the
            <span class="bg-gradient-to-r from-purple-500 to-indigo-500 text-transparent bg-clip-text">
                Quiz Platform
            </span>
        </h1>
        
        <p class="mt-6 max-w-2xl text-lg md:text-xl text-gray-300">
            Challenge your knowledge, climb the leaderboards, and become a master in your field.
        </p>

        <div class="mt-10 flex flex-col sm:flex-row items-center gap-4">
            <a href="login" 
               class="w-full sm:w-auto inline-block px-8 py-3 text-lg font-bold text-white bg-[#6D28D9] rounded-full hover:bg-[#5B21B6] transition-transform duration-300 hover:scale-105">
                Login
            </a>
            <a href="signUp" 
               class="w-full sm:w-auto inline-block px-8 py-3 text-lg font-bold text-white bg-transparent border-2 border-white rounded-full hover:bg-white hover:text-black transition-all duration-300">
                Register as Student
            </a>
        </div>
        
    </div>

</body>
</html>