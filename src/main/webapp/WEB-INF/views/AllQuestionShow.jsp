<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% 
    // Security check
    if (!"Faculty".equals(session.getAttribute("role"))) {
        response.sendRedirect("login");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Questions</title>
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
                    Manage All Questions
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
                                    <th scope="col" class="py-3.5 pl-4 pr-3 text-left text-sm font-semibold text-white sm:pl-6">#</th>
                                    <th scope="col" class="px-3 py-3.5 text-left text-sm font-semibold text-white">Question</th>
                                    <th scope="col" class="px-3 py-3.5 text-left text-sm font-semibold text-white">Options</th>
                                    <th scope="col" class="px-3 py-3.5 text-left text-sm font-semibold text-white">Correct Answer</th>
                                    <th scope="col" class="relative py-3.5 pl-3 pr-4 sm:pr-6">
                                        <span class="sr-only">Actions</span>
                                    </th>
                                </tr>
                            </thead>
                            <tbody class="divide-y divide-gray-800 bg-[#1F2937]">
                                <c:forEach var="question" items="${page.content}" varStatus="status">
                                    <tr>
                                        <td class="whitespace-nowrap py-4 pl-4 pr-3 text-sm font-medium text-white sm:pl-6">${page.number * page.size + status.count}</td>
                                        <td class="whitespace-normal px-3 py-4 text-sm text-gray-300 max-w-sm">${question.qname}</td>
                                        <td class="whitespace-nowrap px-3 py-4 text-sm text-gray-400">
                                            <ol class="list-decimal list-inside">
                                                <li>${question.opt1}</li>
                                                <li>${question.opt2}</li>
                                                <li>${question.opt3}</li>
                                                <li>${question.opt4}</li>
                                            </ol>
                                        </td>
                                        <td class="whitespace-nowrap px-3 py-4 text-sm font-medium text-green-400">${question.correctOpt}</td>
                                        <td class="relative whitespace-nowrap py-4 pl-3 pr-4 text-right text-sm font-medium sm:pr-6">
                                            <a href="deleteQuestion?qid=${question.qid}" class="text-red-500 hover:text-red-700">Delete</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>

                    <nav class="flex items-center justify-between border-t border-gray-700 px-4 py-3 sm:px-6 mt-6" aria-label="Pagination">
                        <div class="flex flex-1 justify-between sm:justify-end">
                            <c:if test="${page.hasPrevious()}">
                                <a href="?page=${page.number-1}" class="relative inline-flex items-center rounded-md bg-[#374151] px-3 py-2 text-sm font-medium text-gray-300 hover:bg-gray-700">Previous</a>
                            </c:if>
                            
                            <c:if test="${page.hasNext()}">
                                <a href="?page=${page.number+1}" class="relative ml-3 inline-flex items-center rounded-md bg-[#374151] px-3 py-2 text-sm font-medium text-gray-300 hover:bg-gray-700">Next</a>
                            </c:if>
                        </div>
                    </nav>

                </div>
                 <div class="mt-6 text-center">
                      <a href="/Faculty" class="text-purple-400 hover:text-purple-300 hover:underline">← Go Back to Dashboard</a>
                 </div>
            </div>
        </main>
    </div>
</body>
</html>