<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style>
<%@include file="/WEB-INF/css/admin-login-form.css"%></s
</style>
</head>
<body>
	<div id="root" style="width: auto;">
		<div class="form">
			<form:form action="checkadminlogin" method="post"
				modelAttribute="admin">
				<h1>****Hello Admin****</h1>
				<div style="margin: 14px 0px 14px 0px;">
					<strong><label for="adminEmail" style="font-size: 35px;">Email :</label></strong>
					<form:input path="adminEmail" id="input"
						placeholder="Enter Your Email"
						style="width: 20%;height: 25px;font-size: 17px;" />
				</div>
				<div style="margin: 14px 0px 14px 0px;">
					<strong> <label class="pa" for="adminPassword"
						style="font-size: 35px;">Password :</label> <form:input
							path="adminPassword" type="password" id="input"
							placeholder="Enter Your Password"
							style="width: 20%;height: 25px;font-size: 17px;" />
					</strong>
				</div>
				<div style="margin-top: 20px; margin-left: 30px;">
					<form:button class="login-form">Login in</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>