<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login | Quiz Management System</title>
    
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
<body class="bg-[#111827] flex items-center justify-center min-h-screen">

    <div class="relative mx-auto w-full max-w-4xl bg-[#1F2937] rounded-2xl shadow-2xl overflow-hidden grid grid-cols-1 md:grid-cols-2">
        
        <div class="relative hidden md:block">
            <img class="absolute inset-0 h-full w-full object-cover" 
                 src="https://images.unsplash.com/photo-1476514525535-07fb3b4ae5f1?q=80&w=2070&auto=format&fit=crop" 
                 alt="Inspirational background image">
            <div class="absolute inset-0 bg-black/60"></div>
            <div class="relative flex flex-col justify-between h-full p-8 text-white">
                <h1 class="text-2xl font-bold tracking-wider">QUIZ MGMT</h1>
                <div>
                    <h2 class="text-3xl font-bold">Welcome Back</h2>
                    <p class="mt-2 text-gray-300">Log in to continue your journey.</p>
                </div>
            </div>
        </div>
        
        <div class="p-8 md:p-12">
            <h2 class="text-3xl font-bold text-white">Login</h2>
            <p class="mt-2 text-gray-400">Don't have an account? 
                <a href="signUp" class="text-[#8B5CF6] hover:underline">Register here</a>
            </p>
            
            <form action="checkLogin" method="post" class="mt-8 space-y-6">
                
                <div>
                    <label for="email" class="text-sm font-medium text-gray-300">Email</label>
                    <input type="email" name="email" id="email" 
                           class="mt-1 block w-full px-3 py-2 bg-[#374151] border border-gray-600 rounded-md text-white placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-[#8B5CF6] focus:border-transparent" 
                           placeholder="you@example.com" required>
                </div>
                
                <div>
                    <div class="flex justify-between items-center">
                        <label for="password" class="text-sm font-medium text-gray-300">Password</label>
                        <a href="forget" class="text-sm text-[#8B5CF6] hover:underline">Forgot password?</a>
                    </div>
                    <input type="password" name="password" id="password" 
                           class="mt-1 block w-full px-3 py-2 bg-[#374151] border border-gray-600 rounded-md text-white placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-[#8B5CF6] focus:border-transparent" 
                           placeholder="Enter your password" required minlength="6">
                </div>
                
                <div>
                    <button type="submit" 
                            class="w-full flex justify-center py-3 px-4 border border-transparent rounded-md shadow-sm text-sm font-bold text-white bg-[#6D28D9] hover:bg-[#5B21B6] focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-[#8B5CF6] transition duration-150 ease-in-out">
                        Login
                    </button>
                </div>
            </form>
            
            <div class="mt-6">
                <div class="relative">
                    <div class="absolute inset-0 flex items-center">
                        <div class="w-full border-t border-gray-600"></div>
                    </div>
                    <div class="relative flex justify-center text-sm">
                        <span class="px-2 bg-[#1F2937] text-gray-400">Or continue with</span>
                    </div>
                </div>
                <div class="mt-6 grid grid-cols-2 gap-3">
                    <div>
                        <a href="#" class="w-full inline-flex justify-center py-2 px-4 border border-gray-600 rounded-md shadow-sm bg-[#374151] text-sm font-medium text-white hover:bg-gray-700">
                           Google
                        </a>
                    </div>
                    <div>
                        <a href="#" class="w-full inline-flex justify-center py-2 px-4 border border-gray-600 rounded-md shadow-sm bg-[#374151] text-sm font-medium text-white hover:bg-gray-700">
                           Apple
                        </a>
                    </div>
                </div>
            </div>
            
        </div>
    </div>

</body>
</html>