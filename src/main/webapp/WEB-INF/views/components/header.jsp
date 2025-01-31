<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<header class="relative">
	<!-- Top Bar -->
	<div class="bg-blue-900 text-white py-2">
		<div
			class="max-w-7xl mx-auto px-4 flex justify-between items-center text-sm">
			<div class="flex space-x-4">
				<span class="flex items-center"> <svg class="w-4 h-4 mr-1"
						fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round"
							stroke-linejoin="round" stroke-width="2"
							d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z" />
                    </svg> 1-800-BANKING
				</span> <span class="flex items-center"> <svg class="w-4 h-4 mr-1"
						fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round"
							stroke-linejoin="round" stroke-width="2"
							d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
                    </svg> support@modernbank.com
				</span>
			</div>
			<div class="flex space-x-4">
				<a href="#" class="hover:text-blue-200">Locations</a> <a href="#"
					class="hover:text-blue-200">Careers</a> <a href="#"
					class="hover:text-blue-200">Help Center</a>
			</div>
		</div>
	</div>

	<!-- Main Navigation -->
	<nav class="bg-white shadow-lg">
		<div class="max-w-7xl mx-auto px-4">
			<div class="flex justify-between items-center h-20">
				<!-- Logo -->
				<div class="flex-shrink-0 flex items-center">
					<img class="h-12 w-auto"
						src="<c:url value='/images/enomy-logo.png'/>"
						alt="Enomy Finances Logo"> <span
						class="ml-3 text-2xl font-bold bg-gradient-to-r from-emerald-600 to-emerald-800 bg-clip-text text-transparent">Enomy
						Finances</span>
				</div>

				<!-- Desktop Navigation -->
				<div class="hidden md:flex items-center space-x-8">

					<!-- Guest Navigation (For unauthenticated users) -->
					<sec:authorize access="isAnonymous()">
						<a href="#"
							class="text-gray-700 hover:text-blue-600 px-3 py-2 font-medium">Personal
							Banking</a>
						<a href="#"
							class="text-gray-700 hover:text-blue-600 px-3 py-2 font-medium">Business
							Banking</a>
						<a href="#"
							class="text-gray-700 hover:text-blue-600 px-3 py-2 font-medium">Investments</a>
						<a href="#"
							class="text-gray-700 hover:text-blue-600 px-3 py-2 font-medium">Insurance</a>
					</sec:authorize>
					
					    <!-- Admin Navigation -->
				    <sec:authorize access="hasRole('ADMIN')">
				        <a href="adminpage" class="text-gray-700 hover:text-blue-600 px-3 py-2 font-medium">Admin Dashboard</a>
				    </sec:authorize>

					<!-- Authenticated User Navigation (For logged-in users with ROLE_USER) -->
					<sec:authorize access="hasAnyRole('USER', 'ADMIN')">
						<a href="currencyexchange"
							class="text-gray-700 hover:text-blue-600 px-3 py-2 font-medium">Currency
							Exchange</a>
						<a href="savingsandinvestments"
							class="text-gray-700 hover:text-blue-600 px-3 py-2 font-medium">Savings
							& Investment Plans</a>
					</sec:authorize>
				</div>

				<!-- Action Buttons -->
				<div class="flex items-center space-x-4">
					<sec:authorize access="isAnonymous()">
						<a href="/EnFinance/login"><button
								class="hidden md:block px-4 py-2 text-blue-600 font-medium hover:text-blue-700 transition duration-150">Sign
								In</button></a>
						<a href="/EnFinance/register"><button
								class="bg-blue-600 text-white px-6 py-2 rounded-lg hover:bg-blue-700 transform hover:scale-105 transition duration-150">Open
								Account</button></a>
					</sec:authorize>

					<sec:authorize access="isAuthenticated()">
					    <form:form action="logout" method="post">
					        <button type="submit" class="bg-red-600 text-white px-6 py-2 rounded-lg hover:bg-red-700 transform hover:scale-105 transition duration-150">
					            Logout
					        </button>
					    </form:form>
					</sec:authorize>

					<!-- Mobile Menu Button -->
					<button
						class="md:hidden rounded-md p-2 inline-flex items-center justify-center text-gray-700 hover:text-blue-600 hover:bg-gray-100">
						<svg class="h-6 w-6" fill="none" stroke="currentColor"
							viewBox="0 0 24 24">
                            <path stroke-linecap="round"
								stroke-linejoin="round" stroke-width="2"
								d="M4 6h16M4 12h16M4 18h16" />
                        </svg>
					</button>
				</div>
			</div>
		</div>
	</nav>

	<!-- Mobile Menu (Hidden by default) -->
	<div class="hidden md:hidden bg-white border-t">
		<div class="px-2 pt-2 pb-3 space-y-1">
			<a href="#"
				class="block px-3 py-2 rounded-md text-base font-medium text-gray-700 hover:text-blue-600 hover:bg-gray-50">Home</a>

			<sec:authorize access="isAnonymous()">
				<a href="#"
					class="block px-3 py-2 rounded-md text-base font-medium text-gray-700 hover:text-blue-600 hover:bg-gray-50">Personal
					Banking</a>
				<a href="#"
					class="block px-3 py-2 rounded-md text-base font-medium text-gray-700 hover:text-blue-600 hover:bg-gray-50">Business
					Banking</a>
				<a href="#"
					class="block px-3 py-2 rounded-md text-base font-medium text-gray-700 hover:text-blue-600 hover:bg-gray-50">Investments</a>
				<a href="#"
					class="block px-3 py-2 rounded-md text-base font-medium text-gray-700 hover:text-blue-600 hover:bg-gray-50">Insurance</a>
			</sec:authorize>

			<sec:authorize access="hasRole('USER')">
				<a href="#"
					class="block px-3 py-2 rounded-md text-base font-medium text-gray-700 hover:text-blue-600 hover:bg-gray-50">Currency
					Exchange</a>
				<a href="#"
					class="block px-3 py-2 rounded-md text-base font-medium text-gray-700 hover:text-blue-600 hover:bg-gray-50">Savings</a>
				<a href="#"
					class="block px-3 py-2 rounded-md text-base font-medium text-gray-700 hover:text-blue-600 hover:bg-gray-50">Investment
					Plans</a>
			</sec:authorize>
		</div>
	</div>
</header>
