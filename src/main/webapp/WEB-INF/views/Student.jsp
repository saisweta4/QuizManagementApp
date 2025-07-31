<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
    // This security check ensures only logged-in students can see this page.
    if (!"Student".equals(session.getAttribute("role"))) {
        response.sendRedirect("login");
        return; // Important to stop further processing of the page
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Dashboard</title>
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
                    Student Dashboard
                </h1>
            </div>
        </header>

        <main>
            <div class="max-w-7xl mx-auto py-6 sm:px-6 lg:px-8">
                <div class="px-4 py-6 sm:px-0">
                    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">

                        <a href="AllTechName" class="bg-[#1F2937] rounded-xl shadow-lg p-6 flex flex-col justify-between hover:bg-gray-700 transition duration-300 ease-in-out transform hover:-translate-y-1">
                            <div>
                                <h3 class="text-white text-lg font-semibold">Start a New Quiz</h3>
                                <p class="text-gray-400 mt-2">Choose from available technologies and test your knowledge.</p>
                            </div>
                            <div class="mt-4">
                                <span class="text-[#8B5CF6] font-bold">Take Quiz &rarr;</span>
                            </div>
                        </a>

                        <div class="bg-[#1F2937] rounded-xl shadow-lg p-6">
                            <h3 class="text-white text-lg font-semibold">Your Results</h3>
                            <p class="text-gray-400 mt-2">View your past quiz scores and performance history here.</p>
                            <div class="mt-4">
                                <span class="text-gray-500 font-bold">Coming Soon...</span>
                            </div>
                        </div>

                        <div class="bg-[#1F2937] rounded-xl shadow-lg p-6">
                            <h3 class="text-white text-lg font-semibold">Your Profile</h3>
                            <p class="text-gray-400 mt-2">View and update your profile information.</p>
                             <div class="mt-4">
                                <span class="text-gray-500 font-bold">Coming Soon...</span>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </main>
    </div>

</body>
</html>