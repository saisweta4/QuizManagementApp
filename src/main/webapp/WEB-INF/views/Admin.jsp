<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% 
    // Security check to ensure only logged-in admins can see this page.
    if (!"Admin".equals(session.getAttribute("role"))) {
        response.sendRedirect("login");
        return; // Stop further processing of the page
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
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
                    Admin Dashboard
                </h1>
            </div>
        </header>

        <main>
            <div class="max-w-7xl mx-auto py-6 sm:px-6 lg:px-8">
                <div class="px-4 py-6 sm:px-0">
                    <h2 class="text-xl font-semibold text-gray-300 mb-4">System Overview</h2>
                    <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6">
                        <div class="bg-[#1F2937] rounded-xl shadow-lg p-6">
                            <h3 class="text-gray-400 text-sm font-medium">Total Students</h3>
                            <p class="text-white text-3xl font-bold mt-2">${studentCount}</p>
                        </div>

                        <div class="bg-[#1F2937] rounded-xl shadow-lg p-6">
                            <h3 class="text-gray-400 text-sm font-medium">Total Faculty</h3>
                            <p class="text-white text-3xl font-bold mt-2">${Staffs}</p>
                        </div>
                        
                        <div class="bg-[#1F2937] rounded-xl shadow-lg p-6">
                            <h3 class="text-gray-400 text-sm font-medium">Total Questions</h3>
                            <p class="text-white text-3xl font-bold mt-2">${qnCount}</p>
                        </div>
                    </div>
                </div>

                <div class="px-4 py-6 sm:px-0">
                    <h2 class="text-xl font-semibold text-gray-300 mb-4">User Management</h2>
                    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                        <a href="ShowAllStudent?name=Student" class="bg-[#1F2937] rounded-xl shadow-lg p-6 flex flex-col justify-between hover:bg-gray-700 transition duration-300 ease-in-out transform hover:-translate-y-1">
                            <div>
                                <h3 class="text-white text-lg font-semibold">Manage Students</h3>
                                <p class="text-gray-400 mt-2">View, edit, or remove student accounts.</p>
                            </div>
                            <div class="mt-4">
                                <span class="text-[#8B5CF6] font-bold">View Students &rarr;</span>
                            </div>