<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>List of Services Booked</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style><%@include file ="/WEB-INF/css/style.css"%>
.table-size{
border:2px ;
width:100%;
cellpadding:2px;
 }
 body {
    background-image:
        url(https://img.freepik.com/free-vector/clean-medical-patterned-background-vector_53876-140867.jpg?w=826&t=st=1660760346~exp=1660760946~hmac=94b2f8a92cea8e0c6b1bcc857e0bcb539b3a9dba8ad36e03082ab462c68d2837);
}
</style>
</head>
<body>
    <div>
    <button style="    font-size: 12px;
    background-color: #f44336;
    color: black;
    float: left;" onclick="history.back()"><span class="fa fa-home" style="font-size:38px;"></span></button>
        <h1> LIST OF SERVICES BOOKED</h1>
        <div id="table root">
            <table class="table-size">
            <caption></caption>
                <colgroup>
                    <col span="10" style="background-color: #ff9999">
                    <col span="4" style="background-color: white">
                </colgroup>
			<thead>
				<tr>
					<th>Booking Id</th>
					<th>Service Centre Id</th>
					<th>Vehicle Register Number</th>
					<th>User Id</th>
					<th>Service Date</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="BookService" items="${allbookservice}">
					<tr>
						<td>${BookService.bookingId}</td>
						<td>${BookService.serviceCentreId}</td>
						<td>${BookService.vehicleRegNumber}</td>
						<td>${BookService.userId}</td>
						<td>${BookService.serviceDate}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	</div>
</body>
</html>