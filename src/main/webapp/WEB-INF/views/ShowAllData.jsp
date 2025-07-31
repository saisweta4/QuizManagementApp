<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% 
    // Security check to ensure only Admins can see this page.
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
    <title>Manage ${name}s</title>
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
                <h1 class="text-3xl font-bold text-white capitalize">
                    Manage All ${name}s
                </h1>
            </div>
        </header>

        <main>
            <div class="max-w-7xl mx-auto py-6 sm:px-6 lg:px-8">
                <div class="bg-[#1F2937] rounded-xl shadow-lg p-6 sm:p-8">
                    
                    <div class="overflow-x-auto">
                        <table class="min-w-full divide-y divide-gray-700">
                            <thead class="bg-gray-800">
                                <tr>
                                    <th scope="col" class="py-3.5 pl-4 pr-3 text-left text-sm font-semibold text-white sm:pl-6">User ID</th>
                                    <th scope="col" class="px-3 py-3.5 text-left text-sm font-semibold text-white">Username</th>
                                    <th scope="col" class="px-3 py-3.5 text-left text-sm font-semibold text-white">Email</th>
                                    <th scope="col" class="px-3 py-3.5 text-left text-sm font-semibold text-white">Role</th>
                                    <th scope="col" class="relative py-3.5 pl-3 pr-4 sm:pr-6 text-right">
                                        Actions
                                    </th>
                                </tr>
                            </thead>
                            <tbody class="divide-y divide-gray-800 bg-[#1F2937]">
                                <c:forEach var="one" items="${users}">
                                    <tr>
                                        <td class="whitespace-nowrap py-4 pl-4 pr-3 text-sm font-medium text-white sm:pl-6">${one.id}</td>
                                        <td class="whitespace-nowrap px-3 py-4 text-sm text-gray-300">${one.username}</td>
                                        <td class="whitespace-nowrap px-3 py-4 text-sm text-gray-300">${one.email}</td>
                                        <td class="whitespace-nowrap px-3 py-4 text-sm text-gray-300">
                                            <%-- This now uses the corrected camelCase variable name --%>
                                            <span class="inline-flex items-center rounded-md bg-purple-500/10 px-2 py-1 text-xs font-medium text-purple-400 ring-1 ring-inset ring-purple-500/20">
                                                ${one.roleEntity.name}
                                            </span>
                                        </td>
                                        <td class="relative whitespace-nowrap py-4 pl-3 pr-4 text-right text-sm font-medium sm:pr-6 space-x-4">
                                            <a href="update?id=${one.id}&roleName=${one.roleEntity.name}" class="text-indigo-400 hover:text-indigo-300">Update</a>
                                            <a href="delete?id=${one.id}" class="text-red-500 hover:text-red-400">Delete</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
                 <div class="mt-6 text-center">
                      <a href="/Admin" class="text-purple-400 hover:text-purple-300 hover:underline">← Go Back to Dashboard</a>
                 </div>
            </div>
        </main>
    </div>
</body>
</html>