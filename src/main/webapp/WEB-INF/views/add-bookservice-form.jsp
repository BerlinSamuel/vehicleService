<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Book Service</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="addservice" method="post"
				modelAttribute="addbookservice">
				<div>
					<label for="bookingId">Booking Id</label>
					<div>
						<form:input path="bookingId" />
					</div>
				</div>
				<div>
					<label for="serviceCentreId">Service Centre Location</label>
					<form:select path="serviceCentreId">
						<c:forEach var="servicecentre" items="${centrelocation}">
							<form:option value="${servicecentre.serviceCentreId}"
								label="${servicecentre.centreLocation}" />
						</c:forEach>
					</form:select>
				</div>
				<div>
					<label for="vehicleRegNumber">Vehicle Register Number</label>
					<div>
						<form:input path="vehicleRegNumber" />
					</div>
				</div>
				<div>
					<label for="userId">User Id</label>
					<div>
						<form:input path="userId" />
					</div>
				</div>
				<div>
					<label for="serviceDate">Service Date</label>
					<div>
						<form:input path="serviceDate" />
					</div>
				</div>
				<div>
					<label for="returnDate">Return Date</label>
					<div>
						<form:input path="returnDate" />
					</div>
				</div>
				<div>
					<label for="serviceEstimateAmount">Service Estimate Amount</label>
					<div>
						<form:input path="serviceEstimateAmount" />
					</div>
				</div>
				<div>
					<label for="actualServiceAmount">Actual Service Amount</label>
					<div>
						<form:input path="actualServiceAmount" />
					</div>
				</div>
				<div>
					<form:button>Add Book Service</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>