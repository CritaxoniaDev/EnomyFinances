<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Savings & Investments - Enomy Finances</title>
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

	<!-- Savings & Investment Content -->
	<div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
		<!-- Title Section -->
		<div class="bg-white rounded-xl shadow-sm p-6 mb-6">
			<h1 class="text-2xl font-bold text-gray-900">Savings &
				Investments</h1>
			<p class="text-gray-500">Plan your financial future with our
				investment options</p>
		</div>

		<!-- Investment Form -->
		<div class="bg-white rounded-xl shadow-sm p-8 mb-6">
			<form:form action="calculate-investment" method="POST"
				class="space-y-8">
				<div class="grid grid-cols-1 md:grid-cols-2 gap-8">
					<!-- Investment Type -->
					<div class="relative">
						<label class="block text-sm font-semibold text-gray-700 mb-2">Investment
							Type</label>
						<div class="relative">
							<select name="investmentType"
								class="appearance-none w-full pl-4 pr-10 py-3 border-2 border-gray-200 rounded-lg focus:border-blue-500 focus:ring focus:ring-blue-200 transition-all duration-200 bg-white">
								<option value="BASIC">Basic Savings Plan</option>
								<option value="PLUS">Savings Plan Plus</option>
								<option value="MANAGED">Managed Stock Investments</option>
							</select>
							<div
								class="absolute inset-y-0 right-0 flex items-center px-2 pointer-events-none">
								<svg class="w-5 h-5 text-gray-500" fill="currentColor"
									viewBox="0 0 20 20">
                                    <path fill-rule="evenodd"
										d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"
										clip-rule="evenodd" />
                                </svg>
							</div>
						</div>
					</div>

					<!-- Initial Investment -->
					<div class="relative">
						<label class="block text-sm font-semibold text-gray-700 mb-2">Initial
							Lump Sum</label>
						<div class="relative mt-1 rounded-lg shadow-sm">
							<div
								class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
								<span class="text-gray-500 sm:text-sm">£</span>
							</div>
							<input type="number" name="initialInvestment" min="0" step="0.01"
								required
								class="w-full pl-8 pr-12 py-3 border-2 border-gray-200 rounded-lg focus:border-blue-500 focus:ring focus:ring-blue-200 transition-all duration-200">
						</div>
					</div>

					<!-- Monthly Investment -->
					<div class="relative">
						<label class="block text-sm font-semibold text-gray-700 mb-2">Monthly
							Investment</label>
						<div class="relative mt-1 rounded-lg shadow-sm">
							<div
								class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
								<span class="text-gray-500 sm:text-sm">£</span>
							</div>
							<input type="number" name="monthlyInvestment" min="50"
								step="0.01" required
								class="w-full pl-8 pr-12 py-3 border-2 border-gray-200 rounded-lg focus:border-blue-500 focus:ring focus:ring-blue-200 transition-all duration-200">
						</div>
					</div>

					<!-- Investment Info Card -->
					<div
						class="bg-gradient-to-br from-blue-50 to-indigo-50 rounded-lg p-6 border border-blue-100">
						<h3 class="font-semibold text-gray-900 mb-3 flex items-center">
							<svg class="w-5 h-5 mr-2 text-blue-500" fill="currentColor"
								viewBox="0 0 20 20">
                                <path fill-rule="evenodd"
									d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7-4a1 1 0 11-2 0 1 1 0 012 0zM9 9a1 1 0 000 2v3a1 1 0 001 1h1a1 1 0 100-2v-3a1 1 0 00-1-1H9z"
									clip-rule="evenodd" />
                            </svg>
							Investment Plans Information
						</h3>
						<ul class="space-y-2 text-sm text-gray-600">
							<li class="flex items-center"><svg
									class="w-4 h-4 mr-2 text-green-500" fill="none"
									stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round"
										stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
                                </svg> Basic Plan: 1.2% - 2.4% returns</li>
							<li class="flex items-center"><svg
									class="w-4 h-4 mr-2 text-green-500" fill="none"
									stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round"
										stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
                                </svg> Plus Plan: 3% - 5.5% returns</li>
							<li class="flex items-center"><svg
									class="w-4 h-4 mr-2 text-green-500" fill="none"
									stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round"
										stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
                                </svg> Managed Stocks: 4% - 23% returns</li>
						</ul>
					</div>
				</div>

				<!-- Submit Button -->
				<div class="flex justify-end mt-8">
					<button type="submit"
						class="inline-flex items-center px-6 py-3 border border-transparent text-base font-medium rounded-lg shadow-sm text-white bg-blue-600 hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500 transition-all duration-200">
						<svg class="w-5 h-5 mr-2" fill="none" stroke="currentColor"
							viewBox="0 0 24 24">
                            <path stroke-linecap="round"
								stroke-linejoin="round" stroke-width="2"
								d="M9 7h6m0 10v-3m-3 3h.01M9 17h.01M9 14h.01M12 14h.01M15 11h.01M12 11h.01M9 11h.01M7 21h10a2 2 0 002-2V5a2 2 0 00-2-2H7a2 2 0 00-2 2v14a2 2 0 002 2z" />
                        </svg>
						Calculate Investment
					</button>
				</div>
			</form:form>
		</div>

		<!-- Results Section -->
		<div
			class="bg-white rounded-xl shadow-sm p-6 ${empty oneYearMin ? 'hidden' : ''}">
			<h2 class="text-xl font-bold text-gray-900 mb-4">Investment
				Projections</h2>

			<!-- 1 Year Projection -->
			<div class="mb-8">
				<h3 class="text-lg font-semibold text-gray-800 mb-4">1 Year
					Projection</h3>
				<div class="grid grid-cols-1 md:grid-cols-4 gap-4">
					<div class="bg-gray-50 rounded-lg p-4">
						<h4 class="text-sm text-gray-500">Minimum Return</h4>
						<p class="text-2xl font-bold text-gray-900 mt-1">
							£
							<fmt:formatNumber value="${oneYearMin}" pattern="#,##0.00" />
						</p>
						<p class="text-sm text-gray-500 mt-2">
							Tax: £
							<fmt:formatNumber value="${oneYearMinTax}" pattern="#,##0.00" />
						</p>
					</div>
					<div class="bg-gray-50 rounded-lg p-4">
						<h4 class="text-sm text-gray-500">Maximum Return</h4>
						<p class="text-2xl font-bold text-gray-900 mt-1">
							£
							<fmt:formatNumber value="${oneYearMax}" pattern="#,##0.00" />
						</p>
						<p class="text-sm text-gray-500 mt-2">
							Tax: £
							<fmt:formatNumber value="${oneYearMaxTax}" pattern="#,##0.00" />
						</p>
					</div>
					<div class="bg-gray-50 rounded-lg p-4">
						<h4 class="text-sm text-gray-500">Total Fees</h4>
						<p class="text-2xl font-bold text-gray-900 mt-1">
							£
							<fmt:formatNumber value="${oneYearFees}" pattern="#,##0.00" />
						</p>
					</div>
					<div class="bg-gray-50 rounded-lg p-4">
						<h4 class="text-sm text-gray-500">Total Profit Range</h4>
						<p class="text-lg font-semibold text-gray-900 mt-1">
							£
							<fmt:formatNumber
								value="${oneYearMin - initialInvestment - (monthlyInvestment * 12)}"
								pattern="#,##0.00" />
							to £
							<fmt:formatNumber
								value="${oneYearMax - initialInvestment - (monthlyInvestment * 12)}"
								pattern="#,##0.00" />
						</p>
					</div>
				</div>
			</div>

			<!-- 5 Year Projection -->
			<div class="mb-8">
				<h3 class="text-lg font-semibold text-gray-800 mb-4">5 Year
					Projection</h3>
				<div class="grid grid-cols-1 md:grid-cols-4 gap-4">
					<div class="bg-gray-50 rounded-lg p-4">
						<h4 class="text-sm text-gray-500">Minimum Return</h4>
						<p class="text-2xl font-bold text-gray-900 mt-1">
							£
							<fmt:formatNumber value="${fiveYearMin}" pattern="#,##0.00" />
						</p>
						<p class="text-sm text-gray-500 mt-2">
							Tax: £
							<fmt:formatNumber value="${fiveYearMinTax}" pattern="#,##0.00" />
						</p>
					</div>
					<div class="bg-gray-50 rounded-lg p-4">
						<h4 class="text-sm text-gray-500">Maximum Return</h4>
						<p class="text-2xl font-bold text-gray-900 mt-1">
							£
							<fmt:formatNumber value="${fiveYearMax}" pattern="#,##0.00" />
						</p>
						<p class="text-sm text-gray-500 mt-2">
							Tax: £
							<fmt:formatNumber value="${fiveYearMaxTax}" pattern="#,##0.00" />
						</p>
					</div>
					<div class="bg-gray-50 rounded-lg p-4">
						<h4 class="text-sm text-gray-500">Total Fees</h4>
						<p class="text-2xl font-bold text-gray-900 mt-1">
							£
							<fmt:formatNumber value="${fiveYearFees}" pattern="#,##0.00" />
						</p>
					</div>
					<div class="bg-gray-50 rounded-lg p-4">
						<h4 class="text-sm text-gray-500">Total Profit Range</h4>
						<p class="text-lg font-semibold text-gray-900 mt-1">
							£
							<fmt:formatNumber
								value="${fiveYearMin - initialInvestment - (monthlyInvestment * 60)}"
								pattern="#,##0.00" />
							to £
							<fmt:formatNumber
								value="${fiveYearMax - initialInvestment - (monthlyInvestment * 60)}"
								pattern="#,##0.00" />
						</p>
					</div>
				</div>
			</div>

			<!-- 10 Year Projection -->
			<div>
				<h3 class="text-lg font-semibold text-gray-800 mb-4">10 Year
					Projection</h3>
				<div class="grid grid-cols-1 md:grid-cols-4 gap-4">
					<div class="bg-gray-50 rounded-lg p-4">
						<h4 class="text-sm text-gray-500">Minimum Return</h4>
						<p class="text-2xl font-bold text-gray-900 mt-1">
							£
							<fmt:formatNumber value="${tenYearMin}" pattern="#,##0.00" />
						</p>
						<p class="text-sm text-gray-500 mt-2">
							Tax: £
							<fmt:formatNumber value="${tenYearMinTax}" pattern="#,##0.00" />
						</p>
					</div>
					<div class="bg-gray-50 rounded-lg p-4">
						<h4 class="text-sm text-gray-500">Maximum Return</h4>
						<p class="text-2xl font-bold text-gray-900 mt-1">
							£
							<fmt:formatNumber value="${tenYearMax}" pattern="#,##0.00" />
						</p>
						<p class="text-sm text-gray-500 mt-2">
							Tax: £
							<fmt:formatNumber value="${tenYearMaxTax}" pattern="#,##0.00" />
						</p>
					</div>
					<div class="bg-gray-50 rounded-lg p-4">
						<h4 class="text-sm text-gray-500">Total Fees</h4>
						<p class="text-2xl font-bold text-gray-900 mt-1">
							£
							<fmt:formatNumber value="${tenYearFees}" pattern="#,##0.00" />
						</p>
					</div>
					<div class="bg-gray-50 rounded-lg p-4">
						<h4 class="text-sm text-gray-500">Total Profit Range</h4>
						<p class="text-lg font-semibold text-gray-900 mt-1">
							£
							<fmt:formatNumber
								value="${tenYearMin - initialInvestment - (monthlyInvestment * 120)}"
								pattern="#,##0.00" />
							to £
							<fmt:formatNumber
								value="${tenYearMax - initialInvestment - (monthlyInvestment * 120)}"
								pattern="#,##0.00" />
						</p>
					</div>
				</div>
			</div>
		</div>

		<!-- Save Investment Button -->
		<div class="mt-6 ${showSaveButton ? '' : 'hidden'}">
			<form action="save-investment" method="POST" class="flex justify-end">
				<input type="hidden" name="investmentType"
					value="${param.investmentType}"> <input type="hidden"
					name="initialInvestment" value="${param.initialInvestment}">
				<input type="hidden" name="monthlyInvestment"
					value="${param.monthlyInvestment}">
				<button type="submit"
					class="inline-flex items-center px-6 py-3 border border-transparent text-base font-medium rounded-lg shadow-sm text-white bg-green-600 hover:bg-green-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-green-500 transition-all duration-200">
					<svg class="w-5 h-5 mr-2" fill="none" stroke="currentColor"
						viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round"
							stroke-width="2" d="M5 13l4 4L19 7" />
            </svg>
					Save Investment
				</button>
			</form>
		</div>

		<!-- Success Message -->
		<div class="mt-4 ${empty success ? 'hidden' : ''}">
			<div class="bg-green-50 border-l-4 border-green-400 p-4">
				<div class="flex">
					<div class="flex-shrink-0">
						<svg class="h-5 w-5 text-green-400" viewBox="0 0 20 20"
							fill="currentColor">
                    <path fill-rule="evenodd"
								d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z"
								clip-rule="evenodd" />
                </svg>
					</div>
					<div class="ml-3">
						<p class="text-sm text-green-700">${success}</p>
					</div>
				</div>
			</div>
		</div>

		<!-- Error Message -->
		<div class="mt-4 ${empty error ? 'hidden' : ''}">
			<div class="bg-red-50 border-l-4 border-red-400 p-4">
				<div class="flex">
					<div class="flex-shrink-0">
						<svg class="h-5 w-5 text-red-400" viewBox="0 0 20 20"
							fill="currentColor">
                            <path fill-rule="evenodd"
								d="M10 18a8 8 0 100-16 8 8 0 000 16zM8.707 7.293a1 1 0 00-1.414 1.414L8.586 10l-1.293 1.293a1 1 0 101.414 1.414L10 11.414l1.293 1.293a1 1 0 001.414-1.414L11.414 10l1.293-1.293a1 1 0 00-1.414-1.414L10 8.586 8.707 7.293z"
								clip-rule="evenodd" />
                        </svg>
					</div>
					<div class="ml-3">
						<p class="text-sm text-red-700">${error}</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
