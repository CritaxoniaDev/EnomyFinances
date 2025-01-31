<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap">
<title>Register - Enomy Finances</title>
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
<script>
	function toggleVisibility(inputId) {
		const input = document.getElementById(inputId);
		input.type = input.type === 'password' ? 'text' : 'password';
	}

	function validatePasswords() {
		const password = document.getElementById('password').value;
		const confirmPassword = document.getElementById('confirmPassword').value;
		const errorElement = document.getElementById('errorPassword');

		if (password !== confirmPassword) {
			errorElement.textContent = 'Passwords do not match';
			return false;
		}
		return true;
	}
</script>
</head>
<body
	class="bg-gradient-to-br from-gray-50 to-gray-100 font-inter antialiased tracking-tighter">
	<!-- Navigation -->
	<jsp:include page="/WEB-INF/views/components/header.jsp" />

	<!-- Registration Form -->
	<div class="container mx-auto px-4 py-8">
		<div class="max-w-4xl mx-auto bg-white rounded-2xl shadow-xl p-8">
			<form:form action="register" method="post" class="space-y-6"
				onsubmit="return validatePasswords()">
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />

				<!-- Header -->
				<div class="text-center mb-8">
					<h1 class="font-inter tracking-tighter text-4xl font-bold text-gray-800 mb-4">Sign
						Up To Enomy Finances</h1>
					<p
						class="font-inter text-gray-600 text-sm leading-relaxed max-w-2xl mx-auto">
						Unlock a world of financial opportunities and take control of your
						future with Enomy Finances. Join us today and embark on a journey
						towards financial empowerment and security. Let's build a brighter
						tomorrow together!</p>
				</div>

				<!-- Form Grid -->
				<div class="grid grid-cols-1 md:grid-cols-2 gap-6">
					<!-- First Name -->
					<div>
						<label class="block text-sm font-medium text-gray-700 mb-2"
							for="firstName">First Name</label> <input type="text"
							id="firstName" name="fname"
							class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-emerald-500 focus:border-emerald-500"
							maxlength="50" required> <span id="errorFirstName"
							class="text-red-500 text-xs mt-1"></span>
					</div>

					<!-- Last Name -->
					<div>
						<label class="block text-sm font-medium text-gray-700 mb-2"
							for="lastName">Last Name</label> <input type="text" id="lastName"
							name="lname"
							class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-emerald-500 focus:border-emerald-500"
							maxlength="50" required> <span id="errorLastName"
							class="text-red-500 text-xs mt-1"></span>
					</div>

					<!-- Email -->
					<div>
						<label class="block text-sm font-medium text-gray-700 mb-2"
							for="email">Email</label> <input type="email" id="email"
							name="email"
							class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-emerald-500 focus:border-emerald-500"
							required> <span id="errorEmail"
							class="text-red-500 text-xs mt-1"></span>
					</div>

					<!-- Contact Number -->
					<div>
						<label class="block text-sm font-medium text-gray-700 mb-2"
							for="contactNumber">Contact Number</label> <input type="tel"
							id="contactNumber" name="contactNumber"
							class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-emerald-500 focus:border-emerald-500"
							placeholder="+63" pattern="\+63\d{10}" maxlength="13" required>
						<span id="errorContactNumber" class="text-red-500 text-xs mt-1"></span>
					</div>

					<!-- Password -->
					<div>
						<label class="block text-sm font-medium text-gray-700 mb-2"
							for="password">Password</label>
						<div class="relative">
							<input type="password" id="password" name="password"
								class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-emerald-500 focus:border-emerald-500"
								minlength="8" required>
							<div class="mt-1">
								<label class="inline-flex items-center text-sm text-gray-600">
									<input type="checkbox" onclick="toggleVisibility('password')"
									class="mr-2"> Show Password
								</label>
							</div>
						</div>
						<span id="errorPassword" class="text-red-500 text-xs mt-1"></span>
					</div>

					<!-- Confirm Password -->
					<div>
						<label class="block text-sm font-medium text-gray-700 mb-2"
							for="confirmPassword">Confirm Password</label>
						<div class="relative">
							<input type="password" id="confirmPassword"
								name="confirmPassword"
								class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-emerald-500 focus:border-emerald-500"
								required>
							<div class="mt-1">
								<label class="inline-flex items-center text-sm text-gray-600">
									<input type="checkbox"
									onclick="toggleVisibility('confirmPassword')" class="mr-2">
									Show Password
								</label>
							</div>
						</div>
						<span id="errorConfirmPassword" class="text-red-500 text-xs mt-1"></span>
					</div>
				</div>

				<!-- Submit Button -->
				<div class="text-center mt-8">
					<button type="submit"
						class="w-1/2 bg-emerald-600 text-white py-3 px-6 rounded-lg hover:bg-emerald-700 
                                   transition duration-300 ease-in-out transform hover:-translate-y-1">
						Register</button>

					<p class="mt-4 text-gray-600">
						Already have an Account? <a href="login"
							class="text-emerald-600 hover:text-emerald-700 font-medium">Back
							to login</a>
					</p>
				</div>

				<!-- Error Message -->
				<%
				if (request.getAttribute("error") != null) {
				%>
				<div
					class="bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded relative"
					role="alert">
					<%=request.getAttribute("error")%>
				</div>
				<%
				}
				%>
			</form:form>
		</div>
	</div>
</body>
</html>
