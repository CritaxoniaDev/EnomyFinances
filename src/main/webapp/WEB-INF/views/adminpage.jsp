<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Dashboard - Enomy Finance</title>
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
			<h1 class="text-2xl font-bold text-gray-900">Admin Dashboard</h1>
			<p class="text-gray-500">Manage users and monitor transactions</p>
		</div>

		<!-- Stats Grid -->
		<div class="grid grid-cols-1 md:grid-cols-3 gap-6 mb-6">
			<!-- Total Users Card -->
			<div class="bg-white rounded-xl shadow-sm p-6">
				<div class="flex items-center justify-between">
					<h3 class="text-gray-500">Total Users</h3>
					<div
						class="w-8 h-8 bg-blue-100 rounded-full flex items-center justify-center">
						<svg class="w-5 h-5 text-blue-600" fill="none"
							stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round"
								stroke-linejoin="round" stroke-width="2"
								d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z" />
                        </svg>
					</div>
				</div>
				<p class="text-2xl font-bold text-gray-900 mt-2">${users.size()}</p>
				<p class="text-sm text-blue-600 mt-2">Total registered users</p>
			</div>

			<!-- Total Investments Card -->
			<div class="bg-white rounded-xl shadow-sm p-6">
				<div class="flex items-center justify-between">
					<h3 class="text-gray-500">Total Investments</h3>
					<div
						class="w-8 h-8 bg-emerald-100 rounded-full flex items-center justify-center">
						<svg class="w-5 h-5 text-emerald-600" fill="none"
							stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round"
								stroke-linejoin="round" stroke-width="2"
								d="M12 8c-1.657 0-3 .895-3 2s1.343 2 3 2 3 .895 3 2-1.343 2-3 2m0-8c1.11 0 2.08.402 2.599 1M12 8V7m0 1v8m0 0v1m0-1c-1.11 0-2.08-.402-2.599-1M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
                        </svg>
					</div>
				</div>
				<p class="text-2xl font-bold text-gray-900 mt-2">${investments.size()}</p>
				<p class="text-sm text-emerald-600 mt-2">Active investment plans</p>
			</div>

			<!-- System Status Card -->
			<div class="bg-white rounded-xl shadow-sm p-6">
				<div class="flex items-center justify-between">
					<h3 class="text-gray-500">System Status</h3>
					<div
						class="w-8 h-8 bg-green-100 rounded-full flex items-center justify-center">
						<svg class="w-5 h-5 text-green-600" fill="none"
							stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round"
								stroke-linejoin="round" stroke-width="2"
								d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
                        </svg>
					</div>
				</div>
				<p class="text-2xl font-bold text-gray-900 mt-2">Active</p>
				<p class="text-sm text-green-600 mt-2">All systems operational</p>
			</div>
		</div>

		<!-- Users Section -->
		<div class="bg-white rounded-xl shadow-sm mb-6">
			<div class="p-6 border-b border-gray-200">
				<h2 class="text-xl font-bold text-gray-900">Registered Users</h2>
			</div>
			<div class="overflow-x-auto">
				<table class="min-w-full divide-y divide-gray-200">
					<thead class="bg-gray-50">
						<tr>
							<th
								class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Name</th>
							<th
								class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Email</th>
							<th
								class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Contact</th>
							<th
								class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Role</th>
						</tr>
					</thead>
					<tbody class="bg-white divide-y divide-gray-200">
						<c:forEach items="${users}" var="user">
							<tr class="hover:bg-gray-50 transition duration-150">
								<td class="px-6 py-4 whitespace-nowrap">
									<div class="text-sm font-medium text-gray-900">${user.fname}
										${user.lname}</div>
								</td>
								<td class="px-6 py-4 whitespace-nowrap">
									<div class="text-sm text-gray-900">${user.email}</div>
								</td>
								<td class="px-6 py-4 whitespace-nowrap">
									<div class="text-sm text-gray-900">${user.contactNumber}</div>
								</td>
								<td class="px-6 py-4 whitespace-nowrap"><c:if
										test="${not empty user.roles}">
										<c:forEach items="${user.roles}" var="role">
											<span
												class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-green-100 text-green-800">
												${role.id == 1 ? 'ADMIN' : 'USER'} </span>
										</c:forEach>
									</c:if> <c:if test="${empty user.roles}">
										<span
											class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-gray-100 text-gray-800">
											No Role Assigned </span>
									</c:if></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>

		<!-- Transactions Section -->
		<div class="bg-white rounded-xl shadow-sm">
			<div class="p-6 border-b border-gray-200">
				<h2 class="text-xl font-bold text-gray-900">Investment
					Transactions</h2>
			</div>
			<div class="overflow-x-auto">
				<table class="min-w-full divide-y divide-gray-200">
					<thead class="bg-gray-50">
						<tr>
							<th
								class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">User</th>
							<th
								class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Type</th>
							<th
								class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Initial
								Investment</th>
							<th
								class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Monthly
								Investment</th>
							<th
								class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Min
								Return</th>
							<th
								class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Max
								Return</th>
							<th
								class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Date</th>
						</tr>
					</thead>
					<tbody class="bg-white divide-y divide-gray-200">
						<c:forEach items="${investments}" var="investment">
							<tr class="hover:bg-gray-50 transition duration-150">
								<td class="px-6 py-4 whitespace-nowrap">
									<div class="text-sm text-gray-900">${investment.user.fname}
										${investment.user.lname}</div>
								</td>
								<td class="px-6 py-4 whitespace-nowrap"><span
									class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-blue-100 text-blue-800">
										${investment.investmentType} </span></td>
								<td class="px-6 py-4 whitespace-nowrap">
									<div class="text-sm text-gray-900">£${investment.initialInvestment}</div>
								</td>
								<td class="px-6 py-4 whitespace-nowrap">
									<div class="text-sm text-gray-900">£${investment.monthlyInvestment}</div>
								</td>
								<td class="px-6 py-4 whitespace-nowrap">
									<div class="text-sm text-gray-900">£${investment.minimumReturn}</div>
								</td>
								<td class="px-6 py-4 whitespace-nowrap">
									<div class="text-sm text-gray-900">£${investment.maximumReturn}</div>
								</td>
								<td class="px-6 py-4 whitespace-nowrap">
									<div class="text-sm text-gray-900">
										<c:if test="${not empty investment.investmentDate}">
											<fmt:parseDate value="${investment.investmentDate}"
												pattern="yyyy-MM-dd'T'HH:mm" var="parsedDate" type="both" />
											<fmt:formatDate value="${parsedDate}"
												pattern="dd/MM/yyyy HH:mm" />
										</c:if>
										<c:if test="${empty investment.investmentDate}">
                                    N/A
                                </c:if>
									</div>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
