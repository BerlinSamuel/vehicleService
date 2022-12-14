<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Service Centre</title>
<style>
<%@include file="/WEB-INF/css/form.css"%>
</style>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="updatecentre" method="post"
				modelAttribute="updateservicecentre">
				<div><label for="serviceCentreId"></label><form:input path="serviceCentreId"
						 Type="hidden" /></div>
				<div class="form-control">
					<label for="centreLocation">Centre Location</label>
					<form:input path="centreLocation"
						placeholder="Enter the Centre Location" required="true" readonly="true"/>
				</div>
				<div class="form-control">
					<label for="centrePhoneNumber">Centre Phone Number</label>
					<form:input path="centrePhoneNumber"
						placeholder="Enter the Centre Phone Number" required="true" readonly="true"/>
				</div>
				<div class="form-control">
					<label for="centreEmail">Centre Email</label>
					<form:input path="centreEmail" placeholder="Enter the Centre Email"
						required="true" readonly="true"/>
				</div>
				<div class="form-control">
					<label for="centreAddress">Centre Address</label>
					<form:input path="centreAddress"
						placeholder="Enter the Centre Address" required="true" />
				</div>
				<div class="form-control">
					<label for="contactPersonName">Contact Person Name</label>
					<form:input path="contactPersonName"
						placeholder="Enter the Contact Person Name" required="true" />
				</div>
				<div class="form-control">
					<label for="contactPersonRole">Contact Person Role</label>
					<form:input path="contactPersonRole"
						placeholder="Enter the Contact Person Role" required="true" />
				</div>
				<br>
				<div>
					<form:button class="button">Update Service Centre</form:button>
				</div>
			</form:form>
				<button class="back" onclick="history.back()">Back</button>

		</div>
	</div>
</body>
</html>