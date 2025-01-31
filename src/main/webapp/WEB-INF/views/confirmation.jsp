<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Enomy Finances - Secure Financial Solutions</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap">
<script src="https://cdn.tailwindcss.com"></script>
<script>
	tailwind.config = {
		theme : {
			extend : {
				fontFamily : {
					inter : [ 'Inter', 'sans-serif' ],
				},
			},
		},
	}
</script>
</head>

<body class="bg-gradient-to-br from-gray-50 to-gray-100 min-h-screen font-inter tracking-tighter">
    <div class="container mx-auto px-4 py-16">
        <div class="max-w-2xl mx-auto">
            <!-- Success Card -->
            <div class="bg-white rounded-2xl shadow-xl overflow-hidden">
                <!-- Header Section -->
                <div class="bg-emerald-600 px-8 py-6">
                    <div class="flex items-center justify-center">
                        <svg class="h-12 w-12 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                        </svg>
                    </div>
                    <h1 class="text-3xl font-bold text-white text-center mt-4">Registration Successful!</h1>
                </div>

                <!-- Content Section -->
                <div class="px-8 py-6">
                    <p class="text-gray-600 text-center mb-8">
                        Welcome to Enomy Finances! Your account has been successfully created.
                    </p>

                    <!-- User Details Card -->
                    <div class="bg-gray-50 rounded-xl p-6 mb-6">
                        <h2 class="playfair text-xl font-semibold text-gray-800 mb-4">Account Details</h2>
                        
                        <div class="space-y-4">
                            <div class="flex items-center border-b border-gray-200 pb-3">
                                <span class="w-1/3 text-gray-600">Name:</span>
                                <span class="w-2/3 font-medium text-gray-800">${user.fname} ${user.lname}</span>
                            </div>
                            
                            <div class="flex items-center border-b border-gray-200 pb-3">
                                <span class="w-1/3 text-gray-600">Email:</span>
                                <span class="w-2/3 font-medium text-gray-800">${user.email}</span>
                            </div>
                            
                            <div class="flex items-center border-b border-gray-200 pb-3">
                                <span class="w-1/3 text-gray-600">Contact:</span>
                                <span class="w-2/3 font-medium text-gray-800">${user.contactNumber}</span>
                            </div>
                            
                            <div class="flex items-center pb-3">
                                <span class="w-1/3 text-gray-600">Account Type:</span>
                                <span class="w-2/3">
                                    <span class="bg-emerald-100 text-emerald-800 px-3 py-1 rounded-full text-sm font-medium">
                                        ${user.roles}
                                    </span>
                                </span>
                            </div>
                        </div>
                    </div>

                    <!-- Next Steps Card -->
                    <div class="bg-blue-50 rounded-xl p-6 mb-8">
                        <h3 class="playfair text-lg font-semibold text-blue-900 mb-3">Next Steps</h3>
                        <ul class="space-y-2 text-blue-800">
                            <li class="flex items-center">
                                <svg class="h-5 w-5 mr-2" fill="currentColor" viewBox="0 0 20 20">
                                    <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd"></path>
                                </svg>
                                Complete your profile information
                            </li>
                            <li class="flex items-center">
                                <svg class="h-5 w-5 mr-2" fill="currentColor" viewBox="0 0 20 20">
                                    <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd"></path>
                                </svg>
                                Verify your email address
                            </li>
                            <li class="flex items-center">
                                <svg class="h-5 w-5 mr-2" fill="currentColor" viewBox="0 0 20 20">
                                    <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd"></path>
                                </svg>
                                Set up your security preferences
                            </li>
                        </ul>
                    </div>

                    <!-- Action Buttons -->
                    <div class="flex flex-col sm:flex-row gap-4 justify-center">
                        <a href="<c:url value='/login'/>" 
                           class="inline-flex justify-center items-center px-6 py-3 border border-transparent text-base font-medium rounded-md text-white bg-emerald-600 hover:bg-emerald-700 transition duration-300 ease-in-out transform hover:-translate-y-1">
                            Proceed to Login
                        </a>
                        <a href="<c:url value='/'/>" 
                           class="inline-flex justify-center items-center px-6 py-3 border border-gray-300 text-base font-medium rounded-md text-gray-700 bg-white hover:bg-gray-50 transition duration-300 ease-in-out transform hover:-translate-y-1">
                            Back to Home
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
