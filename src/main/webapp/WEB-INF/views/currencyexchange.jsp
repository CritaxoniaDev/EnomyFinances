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
<title>Currency Exchange - Enomy Finances</title>
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

	<!-- Currency Exchange Content -->
	<div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
		<!-- Title Section -->
		<div class="bg-white rounded-xl shadow-sm p-6 mb-6">
			<h1 class="text-2xl font-bold text-gray-900">Currency Exchange</h1>
			<p class="text-gray-500">Convert between multiple currencies with
				real-time rates</p>
		</div>

		<!-- Exchange Form -->
		<div class="bg-white rounded-xl shadow-sm p-8 mb-6">
			<form:form action="exchange" method="POST" class="space-y-8">
				<div class="grid grid-cols-1 md:grid-cols-2 gap-8">
					<!-- From Currency -->
					<div class="relative">
						<label class="block text-sm font-semibold text-gray-700 mb-2">From
							Currency</label>
						<div class="relative">
							<select name="fromCurrency"
								class="appearance-none w-full pl-4 pr-10 py-3 border-2 border-gray-200 rounded-lg focus:border-blue-500 focus:ring focus:ring-blue-200 transition-all duration-200 bg-white">
								<option value="GBP">🇬🇧 British Pound (GBP)</option>
								<option value="USD">🇺🇸 US Dollar (USD)</option>
								<option value="EUR">🇪🇺 Euro (EUR)</option>
								<option value="BRL">🇧🇷 Brazilian Real (BRL)</option>
								<option value="JPY">🇯🇵 Japanese Yen (JPY)</option>
								<option value="TRY">🇹🇷 Turkish Lira (TRY)</option>
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

					<!-- To Currency -->
					<div class="relative">
						<label class="block text-sm font-semibold text-gray-700 mb-2">To
							Currency</label>
						<div class="relative">
							<select name="toCurrency"
								class="appearance-none w-full pl-4 pr-10 py-3 border-2 border-gray-200 rounded-lg focus:border-blue-500 focus:ring focus:ring-blue-200 transition-all duration-200 bg-white">
								<option value="USD">🇺🇸 US Dollar (USD)</option>
								<option value="GBP">🇬🇧 British Pound (GBP)</option>
								<option value="EUR">🇪🇺 Euro (EUR)</option>
								<option value="BRL">🇧🇷 Brazilian Real (BRL)</option>
								<option value="JPY">🇯🇵 Japanese Yen (JPY)</option>
								<option value="TRY">🇹🇷 Turkish Lira (TRY)</option>
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

					<!-- Amount -->
					<div class="relative">
						<label class="block text-sm font-semibold text-gray-700 mb-2">Amount</label>
						<div class="relative mt-1 rounded-lg shadow-sm">
							<div
								class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
								<span class="text-gray-500 sm:text-sm">$</span>
							</div>
							<input type="number" name="amount" min="300" max="5000"
								step="0.01" required placeholder="Enter amount (300-5000)"
								class="w-full pl-8 pr-12 py-3 border-2 border-gray-200 rounded-lg focus:border-blue-500 focus:ring focus:ring-blue-200 transition-all duration-200">
							<div
								class="absolute inset-y-0 right-0 pr-3 flex items-center pointer-events-none">
								<span class="text-gray-500 sm:text-sm">.00</span>
							</div>
						</div>
						<p class="mt-1 text-sm text-gray-500">Min: 300 - Max: 5000</p>
					</div>

					<!-- Fee Information -->
					<div
						class="bg-gradient-to-br from-blue-50 to-indigo-50 rounded-lg p-6 border border-blue-100">
						<h3 class="font-semibold text-gray-900 mb-3 flex items-center">
							<svg class="w-5 h-5 mr-2 text-blue-500" fill="currentColor"
								viewBox="0 0 20 20">
                        <path fill-rule="evenodd"
									d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7-4a1 1 0 11-2 0 1 1 0 012 0zM9 9a1 1 0 000 2v3a1 1 0 001 1h1a1 1 0 100-2v-3a1 1 0 00-1-1H9z"
									clip-rule="evenodd" />
                    </svg>
							Transaction Fees
						</h3>
						<ul class="space-y-2 text-sm text-gray-600">
							<li class="flex items-center"><svg
									class="w-4 h-4 mr-2 text-green-500" fill="none"
									stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round"
										stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
                        </svg> Up to 500: 3.5%</li>
							<li class="flex items-center"><svg
									class="w-4 h-4 mr-2 text-green-500" fill="none"
									stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round"
										stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
                        </svg> Over 500: 2.7%</li>
							<li class="flex items-center"><svg
									class="w-4 h-4 mr-2 text-green-500" fill="none"
									stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round"
										stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
                        </svg> Over 1500: 2.0%</li>
							<li class="flex items-center"><svg
									class="w-4 h-4 mr-2 text-green-500" fill="none"
									stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round"
										stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
                        </svg> Over 2500: 1.5%</li>
						</ul>
					</div>
				</div>

				<!-- Submit Button -->
				<div class="flex justify-end mt-8">
					<button type="submit"
						class="inline-flex items-center px-6 py-3 border border-transparent text-base font-medium rounded-lg shadow-sm text-white bg-blue-600 hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500 transition-all duration-200">
						<svg class="w-5 h-5 mr-2" fill="none" stroke="currentColor"
							viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round"
								stroke-width="2"
								d="M9 7h6m0 10v-3m-3 3h.01M9 17h.01M9 14h.01M12 14h.01M15 11h.01M12 11h.01M9 11h.01M7 21h10a2 2 0 002-2V5a2 2 0 00-2-2H7a2 2 0 00-2 2v14a2 2 0 002 2z" />
                </svg>
						Calculate Exchange
					</button>
				</div>
			</form:form>
		</div>

		<!-- Result Section (shown conditionally) -->
		<div
			class="bg-white rounded-xl shadow-sm p-6 ${empty originalAmount ? 'hidden' : ''}">
			<h2 class="text-xl font-bold text-gray-900 mb-4">Exchange Result</h2>
			<div class="grid grid-cols-1 md:grid-cols-3 gap-6">
				<!-- Original Amount -->
				<div class="bg-gray-50 rounded-lg p-4">
					<h3 class="text-sm text-gray-500">Original Amount</h3>
					<p class="text-2xl font-bold text-gray-900 mt-1">${originalAmount}</p>
				</div>

				<!-- Exchange Rate -->
				<div class="bg-gray-50 rounded-lg p-4">
					<h3 class="text-sm text-gray-500">Exchange Rate</h3>
					<p class="text-2xl font-bold text-gray-900 mt-1">1 =
						${exchangeRate}</p>
				</div>

				<!-- Converted Amount Before Fees -->
				<div class="bg-gray-50 rounded-lg p-4">
					<h3 class="text-sm text-gray-500">Converted Amount</h3>
					<p class="text-2xl font-bold text-gray-900 mt-1">${convertedAmount}</p>
				</div>

				<!-- Fee Percentage -->
				<div class="bg-gray-50 rounded-lg p-4">
					<h3 class="text-sm text-gray-500">Fee Rate</h3>
					<p class="text-2xl font-bold text-gray-900 mt-1">${feePercentage}%</p>
				</div>

				<!-- Fee Amount -->
				<div class="bg-gray-50 rounded-lg p-4">
					<h3 class="text-sm text-gray-500">Fee Amount</h3>
					<p class="text-2xl font-bold text-gray-900 mt-1">${feeAmount}</p>
				</div>

				<!-- Final Amount -->
				<div class="bg-blue-50 rounded-lg p-4 border-2 border-blue-200">
					<h3 class="text-sm text-blue-600 font-semibold">Final Amount</h3>
					<p class="text-3xl font-bold text-gray-900 mt-1">${finalAmount}</p>
				</div>
			</div>
		</div>

		<div
			class="mt-8 bg-white rounded-xl shadow-sm p-6 ${empty exchangeHistory ? 'hidden' : ''}">
			<h2 class="text-xl font-bold text-gray-900 mb-4">Transaction
				History</h2>
			<div class="overflow-x-auto">
				<table class="min-w-full divide-y divide-gray-200">
					<thead class="bg-gray-50">
						<tr>
							<th
								class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Date</th>
							<th
								class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">From</th>
							<th
								class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">To</th>
							<th
								class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Original
								Amount</th>
							<th
								class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Exchange
								Rate</th>
							<th
								class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Final
								Amount</th>
						</tr>
					</thead>
					<tbody class="bg-white divide-y divide-gray-200">
						<c:forEach items="${exchangeHistory}" var="exchange">
							<tr class="hover:bg-gray-50 transition-colors duration-200">
								<td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
									<fmt:parseDate value="${exchange.transactionDate}"
										pattern="yyyy-MM-dd'T'HH:mm" var="parsedDate" type="both" />
									<fmt:formatDate value="${parsedDate}"
										pattern="yyyy-MM-dd HH:mm" />
								</td>
								<td class="px-6 py-4 whitespace-nowrap"><span
									class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-blue-100 text-blue-800">
										${exchange.fromCurrency} </span></td>
								<td class="px-6 py-4 whitespace-nowrap"><span
									class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-green-100 text-green-800">
										${exchange.toCurrency} </span></td>
								<td class="px-6 py-4 whitespace-nowrap text-sm text-gray-900">
									${exchange.originalAmount}</td>
								<td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
									${exchange.exchangeRate}</td>
								<td
									class="px-6 py-4 whitespace-nowrap text-sm font-medium text-green-600">
									${exchange.finalAmount}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>

		<!-- Error Message (if any) -->
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
