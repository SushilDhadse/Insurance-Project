<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
div {
	width: 60%;
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px;
	margin-left: auto;
	margin-right: auto;
}

.button {
	background-color: #4CAF50;
	width: 10%;
	border: none;
	color: white;
	padding: 14px 20px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	border-radius: 4px;
}

input[type=text], select {
	width: 18%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=number], select {
	width: 10%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=password], select {
	width: 40%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=date], select {
	width: 40%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

label {
	cursor: pointer
}

.error {
	color: red;
}

input[type=number] {
	width: 18%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=submit] {
	width: 40%;
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type=submit]:hover {
	background-color: #45a049;
}

#users, #policy {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#users td th {
	background-color: #f2f2f2;
	border: 1px solid #ddd;
	padding: 8px;
	padding-top: 6px;
}

#users, #policy tr:nth-child(even) {
	background-color: #f2f2f2;
	padding-top: 6px;
}

#users tr:hover {
	background-color: #ddd;
}

#users, #policy th {
	padding-top: 6px;
	padding-bottom: 12px;
	text-align: left;
	background-color: #4CAF50;
	color: white;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<base href="/insurance/">
</head>
<script>
	/////USERS
	function showTable() {
		document.getElementById('users').style.visibility = "visible";
	}
	function hideTable() {
		document.getElementById('users').style.visibility = "hidden";
	}
	/////POLICY
	function showTablePolicy() {
		document.getElementById('policy').style.visibility = "visible";
	}
	function hideTablePolicy() {
		document.getElementById('policy').style.visibility = "hidden";
	}
</script>

<body onload="javascript:hideTable();javascript:hideTablePolicy();">
	<div>
		<h1 align="center">WELCOME ${sessionScope.admin.userName }</h1>
		

		<!-- ADD POLICY -->
		<h3>Add Policy</h3>
		<b>Policy Name<b><br> 
		<form align="center" action="controller/addPolicy" method="post" >
		<input type="text"
				name="policyname" class="form-control text"
				placeholder="Policy Name" required>
				 <input type="number"
				name="discount" class="form-control text" placeholder="Discount" min=1 max=100 required>
				<input type="submit" class="btn-btn-primary" value="ADD"></form><br>



				<button class="button"
					onclick="window.location.href='controller/showusercontroller'">Load
					DATA</button>
					<button class="button"
					onclick="window.location.href='controller/fetchClaims'">CLAIM
					DATA</button>
				<h3>Users</h3> <input type="button" class="button"
				onClick='javascript:showTable();' value='show'> <input
				type="button" class="button" onClick='javascript:hideTable();'
				value='hide'>
				<h3>Policy</h3> <input type="button" class="button"
				onClick='javascript:showTablePolicy();' value='show'> <input
				type="button" class="button" onClick='javascript:hideTablePolicy();'
				value='hide'></br>

				<table id='users' border=1>
					<tr>
						<th>Email</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>DOB</th>
						<th>Contact</th>
						<th>Gender</th>
						<th>Address</th>
					</tr>

					<c:forEach items="${listOfUsers}" var="user">

						<tr>
							<td>${user.email}</td>
							<td>${user.firstName}</td>
							<td>${user.lastName}</td>
							<td>${user.dob}</td>
							<td>${user.contact}</td>
							<td>${user.gender}</td>
							<td>${user.address}</td>
						</tr>
					</c:forEach>
				</table>

				<table id='policy' border=1>
					<tr>
						<th>Policy Id</th>
						<th>Policy Name</th>
						<th>Discount %</th>
					</tr>
					<c:forEach items="${listOfPolicy}" var="policy">
						<tr>
							<td>${policy.policyid}</td>
							<td>${policy.policyname}</td>
							<td>${policy.discount}</td>
						</tr>
					</c:forEach>
				</table>
	</div>

	</div>
</body>
</html>