<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap">
    <title>Login - Enomy Finances</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    fontFamily: {
                        inter: ['Inter', 'sans-serif'],
                    },
                },
            },
        }
    </script>
</head>

<body class="bg-gradient-to-br from-gray-50 to-gray-100 font-inter antialiased tracking-tighter">
    <jsp:include page="/WEB-INF/views/components/header.jsp" />
    
    <!-- Main Container -->
    <div class="container mx-auto px-4 py-8">
        <div class="flex rounded-2xl shadow-xl overflow-hidden max-w-6xl mx-auto bg-white">
            <!-- Left Side - Image -->
            <div class="hidden lg:block w-1/2 relative">
                <img 
                    src="https://images.unsplash.com/photo-1565514020179-026b92b84bb6?ixlib=rb-4.0.3"
                    alt="Finance Background" 
                    class="object-cover w-full h-full"
                />
                <div class="absolute inset-0 bg-gradient-to-br from-emerald-600/80 to-emerald-800/80 flex items-center justify-center">
                    <div class="text-center text-white p-8">
                        <h2 class="text-4xl font-bold mb-4">Welcome to Enomy Finances</h2>
                        <p class="text-lg">Your trusted partner in financial success</p>
                    </div>
                </div>
            </div>

            <!-- Right Side - Login Form -->
            <div class="w-full lg:w-1/2 p-8 md:p-12">
                <!-- Logo and Header -->
                <div class="text-center mb-8">
                    <h1 class="text-4xl font-bold text-gray-800 tracking-tight mb-2">Welcome Back!</h1>
                    <p class="text-gray-600 text-sm">Sign in to access your account</p>
                </div>

                <!-- Login Form -->
                <form:form action="login" method="post" class="space-y-6">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                    
                    <!-- Email Field -->
                    <div class="space-y-2">
                        <label class="text-sm font-medium text-gray-700 block">Email</label>
                        <div class="relative">
                            <input 
                                type="email" 
                                name="username"
                                class="w-full px-4 py-3 rounded-lg border border-gray-300 focus:ring-2 focus:ring-emerald-500 focus:border-emerald-500 transition-colors"
                                placeholder="Enter your email"
                                required
                            />
                        </div>
                    </div>

                    <!-- Password Field -->
                    <div class="space-y-2">
                        <label class="text-sm font-medium text-gray-700 block">Password</label>
                        <div class="relative">
                            <input 
                                type="password" 
                                name="password"
                                class="w-full px-4 py-3 rounded-lg border border-gray-300 focus:ring-2 focus:ring-emerald-500 focus:border-emerald-500 transition-colors"
                                placeholder="Enter your password"
                                required
                            />
                        </div>
                    </div>

                    <!-- Remember Me & Forgot Password -->
                    <div class="flex items-center justify-between">
                        <label class="flex items-center">
                            <input type="checkbox" class="rounded border-gray-300 text-emerald-600 focus:ring-emerald-500">
                            <span class="ml-2 text-sm text-gray-600">Remember me</span>
                        </label>
                        <a href="#" class="text-sm text-emerald-600 hover:text-emerald-500">Forgot password?</a>
                    </div>

                    <!-- Login Button -->
                    <button 
                        type="submit"
                        class="w-full bg-emerald-600 text-white py-3 px-4 rounded-lg hover:bg-emerald-700 focus:outline-none focus:ring-2 focus:ring-emerald-500 focus:ring-offset-2 transition-colors duration-300"
                    >
                        Sign In
                    </button>
					<div>
						<!-- Error Message - Hidden by default, shows only on wrong credentials -->
						<%
						if (request.getAttribute("error") != null) {
						%>
						    <div class="bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded-relative mb-4 animate-fade-in" role="alert">
						        <div class="flex items-center">
						            <svg class="w-5 h-5 mr-2" fill="currentColor" viewBox="0 0 20 20">
						                <path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7-4a1 1 0 11-2 0 1 1 0 012 0zM9 9a1 1 0 000 2v3a1 1 0 001 1h1a1 1 0 100-2v-3a1 1 0 00-1-1H9z" clip-rule="evenodd"/>
						            </svg>
						            <span class="block sm:inline"><%=request.getAttribute("errorMsg")%></span>
						        </div>
						    </div>
						<%
						}
						%>
					</div>
                    <!-- Register Link -->
                    <p class="text-center text-sm text-gray-600">
                        Don't have an account? 
                        <a href="register" class="text-emerald-600 hover:text-emerald-500 font-medium">
                            Create one now
                        </a>
                    </p>
                </form:form>

                <!-- Social Login Section -->
                <div class="mt-8">
                    <div class="relative">
                        <div class="absolute inset-0 flex items-center">
                            <div class="w-full border-t border-gray-300"></div>
                        </div>
                        <div class="relative flex justify-center text-sm">
                            <span class="px-2 bg-white text-gray-500">Or continue with</span>
                        </div>
                    </div>

                    <!-- Social Buttons -->
                    <div class="grid grid-cols-3 gap-3 mt-6">
                        <button class="flex justify-center items-center py-2.5 border rounded-lg hover:bg-gray-50 transition-colors">
                            <img src="https://www.svgrepo.com/show/475656/google-color.svg" class="h-5 w-5" alt="Google">
                        </button>
                        <button class="flex justify-center items-center py-2.5 border rounded-lg hover:bg-gray-50 transition-colors">
                            <img src="https://www.svgrepo.com/show/475647/facebook-color.svg" class="h-5 w-5" alt="Facebook">
                        </button>
                        <button class="flex justify-center items-center py-2.5 border rounded-lg hover:bg-gray-50 transition-colors">
                            <img src="https://www.svgrepo.com/show/475689/twitter-color.svg" class="h-5 w-5" alt="Twitter">
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>