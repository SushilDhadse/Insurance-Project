<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

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
</style>
<title>Insurance Details Page</title>
<base href="/insurance/"> 
</head>
<body>
	<form align="center" name="regForm" 
		action="controller/payment" method="POST">
		<div class="container">
			<br>Age :<br> <input type="text" 
				class="form-control text" value="${ insurance.age }"
				readonly> <br>chassisNo :<br> <input type="text"
				 class="form-control text"
				value="${ insurance.chassisNo }" readonly> <br>
			DrivingLicense:<br> <input type="text" 
				class="form-control text" value="${ insurance.drivingLicence }" readonly>
				
			<br>	EngineNumber:<br> <input type="text" 
				class="form-control text" value="${ insurance.engineNo }" readonly><br>
				Manufacturer<br> <input type="text" 
				class="form-control text" value="${ insurance.manufacturer}" readonly>
			<br>RegistrationNo:<br> <input type="text" name="contact"
				class="form-control text" value="${ insurance.registerationNo }"
				readonly><br>
				Vehicle Type:<br> <input type="text" name="contact"
				class="form-control text" value="${ insurance. type}"
				readonly><br>Model<br> <input type="text" name="contact"
				class="form-control text" value="${ insurance.model }"
				readonly><br> <br>Years<br> <input
				type="text" name="address" class="form-control text"
				value="${ insurance.years}" readonly><br><br>Policy<br> <input
				type="text" name="address" class="form-control text"
				value="${ insurance.policy }" readonly><br> <br>
				   
	<!-- <br> <input type="button" value="Submit"
				onclick="window.location='makePayment.jsp';"> -->
				<br><input type="submit" value="Submit">
			
		</div>
	</form>
	
</body>
</html>