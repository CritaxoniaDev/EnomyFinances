<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dashboard - Enomy Finances</title>
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
<body
	class="bg-gradient-to-br from-gray-50 to-gray-100 font-inter antialiased tracking-tighter">
	<!-- Navigation -->
	<jsp:include page="/WEB-INF/views/components/header.jsp" />

	<!-- Dashboard Content -->
	<div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
		<!-- Welcome Section -->
		<div class="bg-white rounded-xl shadow-sm p-6 mb-6">
			<h1 class="text-2xl font-bold text-gray-900">Welcome back,
				${user.fname} ${user.lname}!</h1>
			<p class="text-gray-500">Here's an overview of your finances</p>
		</div>

		<!-- Stats Grid -->
		<div class="grid grid-cols-1 md:grid-cols-3 gap-6 mb-6">
			<!-- Balance Card -->
			<div class="bg-white rounded-xl shadow-sm p-6">
				<div class="flex items-center justify-between">
					<h3 class="text-gray-500">Total Balance</h3>
					<div
						class="w-8 h-8 bg-emerald-100 rounded-full flex items-center justify-center">
						<svg class="w-5 h-5 text-emerald-600" fill="none"
							stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round"
								stroke-linejoin="round" stroke-width="2"
								d="M12 8c-1.657 0-3 .895-3 2s1.343 2 3 2 3 .895 3 2-1.343 2-3 2m0-8c1.11 0 2.08.402 2.599 1M12 8V7m0 1v8m0 0v1m0-1c-1.11 0-2.08-.402-2.599-1M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                        </svg>
					</div>
				</div>
				<p class="text-2xl font-bold text-gray-900 mt-2">$24,500.00</p>
				<p class="text-sm text-emerald-600 mt-2">↑ 2.5% from last month</p>
			</div>

			<!-- Savings Card -->
			<div class="bg-white rounded-xl shadow-sm p-6">
				<div class="flex items-center justify-between">
					<h3 class="text-gray-500">Total Savings</h3>
					<div
						class="w-8 h-8 bg-blue-100 rounded-full flex items-center justify-center">
						<svg class="w-5 h-5 text-blue-600" fill="none"
							stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round"
								stroke-linejoin="round" stroke-width="2"
								d="M13 7h8m0 0v8m0-8l-8 8-4-4-6 6"></path>
                        </svg>
					</div>
				</div>
				<p class="text-2xl font-bold text-gray-900 mt-2">$12,750.00</p>
				<p class="text-sm text-blue-600 mt-2">↑ 4.75% from last month</p>
			</div>

			<!-- Expenses Card -->
			<div class="bg-white rounded-xl shadow-sm p-6">
				<div class="flex items-center justify-between">
					<h3 class="text-gray-500">Monthly Expenses</h3>
					<div
						class="w-8 h-8 bg-red-100 rounded-full flex items-center justify-center">
						<svg class="w-5 h-5 text-red-600" fill="none"
							stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round"
								stroke-linejoin="round" stroke-width="2"
								d="M13 17h8m0 0V9m0 8l-8-8-4 4-6-6"></path>
                        </svg>
					</div>
				</div>
				<p class="text-2xl font-bold text-gray-900 mt-2">$3,250.00</p>
				<p class="text-sm text-red-600 mt-2">↓ 1.2% from last month</p>
			</div>
		</div>

		<!-- Recent Transactions -->
		<div class="bg-white rounded-xl shadow-sm p-6">
			<h2 class="text-xl font-bold text-gray-900 mb-4">Recent
				Transactions</h2>
			<div class="space-y-4">
				<!-- Transaction Item -->
				<div
					class="flex items-center justify-between p-4 hover:bg-gray-50 rounded-lg transition duration-300">
					<div class="flex items-center space-x-4">
						<div
							class="w-10 h-10 bg-emerald-100 rounded-full flex items-center justify-center">
							<svg class="w-6 h-6 text-emerald-600" fill="none"
								stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round"
									stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                            </svg>
						</div>
						<div>
							<p class="font-medium text-gray-900">Online Payment</p>
							<p class="text-sm text-gray-500">Netflix Subscription</p>
						</div>
					</div>
					<div class="text-right">
						<p class="font-medium text-gray-900">-$14.99</p>
						<p class="text-sm text-gray-500">Today</p>
					</div>
				</div>

				<!-- More Transaction Items -->
				<!-- Add more transaction items following the same pattern -->
			</div>
		</div>
	</div>
</body>
</html>
