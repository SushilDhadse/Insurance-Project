<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Claim Details Page</title>
</head>
<body>
<table id='users' border=1>
					<!-- <tr>
						<th>Email</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>DOB</th>
						<th>Contact</th>
						<th>Gender</th>
						<th>Address</th>
					</tr> -->

					<c:forEach items="${listOfClaims}" var="claims">

						<tr>
							<td>${claims.claimNo}</td>
							<td>${claims.insuranceID}</td>
							<td>${claims.claimDate}</td>
							<td>${claims.claimStatus}</td>
							<td>${claims.claimAmount}</td>
							<td>${claims.claimReason}</td>
							<td>${claims.user.id}</td>
							<td>${claims.profilePicFileName}</td>
						</tr>
					</c:forEach>
				</table>

</body>
</html>