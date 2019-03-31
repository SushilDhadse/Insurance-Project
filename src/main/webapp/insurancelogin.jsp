<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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

<head>
<script language="javascript" type="text/javascript">
	function validateRegistration() {

		var email = document.forms["regForm"]["email"];

		if ((email.value == "") && (email.value.indexOf("@", 0) < 0)
				&& (email.value.indexOf(".", 0) < 0)) {
			window.alert("Please enter a valid E-mail Address.");
			email.focus();
			return false;
		}
	}

	if (npassword.value == "") {
		window.alert("Please enter your New Password");
		npassword.focus();
		return false;
	}

	if (cpassword.value == "") {

		window.alert("Please enter your Confirm Password");
		cpassword.focus();
		return false;
	}

	if (npassword.value.match(cpassword.value)) {
	} else {
		window
				.alert("The Entered Password dosen't match...Please Enter the correct Password");
		cpassword.focus();
		return false;
	}

	/*       if (email.value.indexOf("@", 0) < 0) {
	 window.alert("Please enter a valid E-mail Address.");
	 email.focus();
	 return false;
	 }

	 if (email.value.indexOf(".", 0) < 0) {
	 window.alert("Please enter a valid E-mail Address.");
	 email.focus();
	 return false;
	 } */
</script>
</head>
<title>Login</title>




<body>

	<form align="center" name="regForm"
		onsubmit="return validateRegistration()" action="controller/login"
		method="post">
		<div class="container">

			<br> Email :<br> <input type="text" name="email"
				class="form-control text" placeholder="E-Mail"> <br> 
			<br>NewPassword<br> <input type="password" name="password"
				class="form-control text" placeholder="Enter your New Password here"><br>

			<br> Confirm Password<br> <input type="password"
				name="confirmPassword" class="form-control text"
				placeholder="Re-Enter the Password"><br> <input
				type="submit" class="btn-btn-primary" value="Submit">
		</div>
	</form>

</body>

</html>

