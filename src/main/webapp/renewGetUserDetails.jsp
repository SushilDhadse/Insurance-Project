<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
div {
	width: 60%;
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px;
	margin-left: auto;
	margin-right: auto;
}

input[type=text], select {
	width: 40%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=number], select {
	width: 40%;
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
	width: 40%;
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}
input[type=submit] {
	width: 20%;
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	align: center;
}

input[type=submit]:hover {
	background-color: #45a049;
}



.split {
	width: 500px;
	height: 500px;
	z-index: 1;
	background: #eee;
	overflow-x: hidden;
}
#p3 {
	background-color: ghostwhite;
}
#div1 {
	width: 60%;
	height: 60%;
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px;
	margin-left: auto;
	margin-right: auto;
}


.error {
	color: red;
}
</style>

<script language="javascript" type="text/javascript">
	function validateRegistration() {

		var email = document.forms["regForm"]["email"];
		var reg = /^([A-Za-z0-9_\-\.])+\@([a-z]{3,10})+\.([a-z]{2,4})$/;

		if (reg.test(email.value) == false) {
			window.alert("Please enter a valid E-mail Address.");
			email.focus();
			return false;
		}

	}
</script>

<title>Renew Get User Details</title>
<base href="/insurance/">
</head>
<body>

	

	
<form name="regForm"  action="controller/getUser" method="POST"  onsubmit="return validateRegistration()">
	<div align="center">
			<h2>Enter Deatils For Renew</h2>
	<c:if test="${error!=null}">
				<p class="error">${error}</p>
 			</c:if>
<table border="1">
<tr>
<td>InsuranceId:&nbsp;&nbsp;<input  type="text"  class="form-control text" name="insuranceId"></td>
</tr>
<tr>
<td>MobileNo:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"  class="form-control text" name="mobileNo"></td>
</tr>
<tr>
<td>Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" class="form-control text"  name="email" ></td>
</tr>
</table>

<p><input type="submit" value="submit"></p>
</div>
</form>



</body>
</html>