<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration page</title>
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

<script language="javascript" type="text/javascript">
	function validateRegistration() {
		var fname = document.forms["regForm"]["firstName"];
		var lname = document.forms["regForm"]["lastName"];
		var email = document.forms["regForm"]["email"];
		var dob = document.forms["regForm"]["dob"];
		//var gender = document.forms["regForm"]["gender"];
		var mobile = document.forms["regForm"]["contact"];
		var address = document.forms["regForm"]["address"];
		//var npassword = document.forms["regForm"]["password"];
		//var cpassword = document.forms["regForm"]["confirmPassword"];
		//var squestion = document.forms["regForm"]["securityQuestion"];
		//var sanswer = document.forms["regForm"]["securityAnswer"];
		var phoneno = /^\d{10}$/;
		var reg = /^([A-Za-z0-9_\-\.])+\@([a-z]{3,10})+\.([a-z]{2,4})$/;

		if (fname.value == "") {
			window.alert("Please enter your First Name.");
			fname.focus();
			return false;
		}

		if (lname.value == "") {
			window.alert("Please enter your Last Name.");
			lname.focus();
			return false;
		}

		if (reg.test(email.value) == false) {
			window.alert("Please enter a valid E-mail Address.");
			email.focus();
			return false;
		}

		if (dob.value == "") {
			window.alert("Please select your Date Of Birth(DOB)");
			dob.focus();
			return false;
		}

	/*	if (gender.selectedIndex == "") {
			window.alert("Please select your Gender");
			gender.focus();
			return false;
		}*/

		if (mobile.value == "") {
			window.alert("Please enter Mobile number having 10 digits");
			mobile.focus();
			return false;
		}

		if (!mobile.value.match(phoneno)) {
			window.alert("Please enter Mobile number having 10 digits");
			mobile.focus();
			return false;
		}

		if (address.value == "") {
			window.alert("Please enter your Address.");
			address.focus();
			return false;
		}

	/*	if (npassword.value == "") {
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

		if (squestion.value == "") {
			window.alert("Please enter your Security Question");
			squestion.focus();
			return false;
		}

		if (sanswer.value == "") {
			window.alert("Please enter your Security Answer");
			sanswer.focus();
			return false;
		}*/

		return true;
	}
</script>

</head>
<body>
	<form align="center" name="regForm"
		onsubmit="return validateRegistration()"
		action="controller/registercontroller" method="post">
		<div class="container">
			<br>First Name :<br><input type="text" name="firstName"
				class="form-control text"  value="${ policydetails.firstName }" readonly>

			<br>Last Name :<br> <input type="text" name="lastName"
				class="form-control text" value="${ policydetails.lastName }" readonly>

			<br> E-Mail :<br> <input type="text" name="email"
				class="form-control text" value="${ policydetails.email }" readonly>

			<br>DOB<br> <input type="text" name="DOB"
				class="form-control text" value="${ policydetails.DOB }" readonly>
			
			 <br> Mobile Number<br> <input type="text" name="contact"
				class="form-control text"
				value="${ policydetails.contact }" readonly><br> 
				<br>Address<br>
			<input type="text" name="address" class="form-control text"
				value="${ policydetails.address}"  readonly><br> <br>
			
			<br> <input
				type="submit" class="btn-btn-primary" value="Submit">
		</div>
	</form>
</body>
</html>