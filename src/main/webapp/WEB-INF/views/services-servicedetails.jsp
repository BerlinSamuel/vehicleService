<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Service and Service Details</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getservices">
				<div>
					<label for="serviceDetailId">Service Detail Id</label>
					<div>
						<form:input path="serviceDetailId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="serviceType">Service Type</label>
					<div>
						<form:input path="serviceType" readonly="true" />
					</div>
				</div>
				<div>
					<label for="serviceCharge">Service Charge</label>
					<div>
						<form:input path="serviceCharge" readonly="true" />
					</div>
				</div>
				<div>
					<label for="serviceDescription">Service Description</label>
					<div>
						<form:input path="serviceDescription" readonly="true" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
	<div id="table root">
		<table border='2' width='100' cellpadding='2'>
			<thead>
				<tr>
					<th>Service Detail Id</th>
					<th>Booking Id</th>
					<th>Service Charges</th>
					<th>Service Date</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="ServiceDetails" items="${getservicedetails}">
					<tr>
						<td>${ServiceDetails.serviceDetailId}</td>
						<td>${ServiceDetails.bookingId}</td>
						<td>${ServiceDetails.serviceCharges}</td>
						<td>${ServiceDetails.serviceDate}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>