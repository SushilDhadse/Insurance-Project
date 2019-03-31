<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<base href="/insurance/">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reset Password Page</title>

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

input[type=Reset]:hover {
	background-color: #45a049;
}
</style>

<!-- <script language="javascript" type="text/javascript">
	function validateRegistration() {

		var email = document.forms["regForm"]["email"];
		var reg = /^([A-Za-z0-9_\-\.])+\@([a-z]{3,10})+\.([a-z]{2,4})$/;

		if (reg.test(email.value) == false) {
			window.alert("Please enter a valid E-mail Address.");
			email.focus();
			return false;
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

	}
</script> -->
<script src="resources/jquery-1.12.4.js"></script>
<script src="resources/jquery.validate.min.js"></script>
<script src="resources/additional-methods.min.js"></script>
<script>
	$(document).ready(function() {
				$("#regForm").validate(
										{
											submitHandler : function(form) {
												if ($(form).valid()) {
													alert("submitted");
													form.submit();
												}
												return false; // prevent normal form posting
											},

											rules : {
												
												
												password : {
													required : true,
													minlength : 5,
												},
												confirmPassword : {
													required : true,
													minlength : 5,
													equalTo : "#password"
												}
												
											},

											messages : {
												

												password : {
													required : "Please provide a password",
													minlength : "Your password must be at least 5 characters long"
												},
												confirmPassword : {
													required : "Please provide a password",
													minlength : "Your password must be at least 5 characters long"
												}
											
											
											}
												
											
										});

						$('#SubmitForm').click(function() {
							
							$("#regForm").valid();
													
						});

					});
</script>
</head>

<body>

	<form align="center" name="regForm" action="controller/update" method="post" id="regForm">
		<div class="container">
			<c:if test="${error!=null}">
				<p>${error}</p>
			</c:if>

			<!-- <br> Email :<br> <input type="text" name="email"
				class="form-control text" placeholder="E-Mail">
				 -->
			 <br>New Password :<br><input type="password" name="password" class="form-control text"
				placeholder=" Enter Password " id="password"><br> 
				
				<br> Confirm Password :<br> <input type="password" name="confirmPassword"
				class="form-control text" placeholder="Re-Enter the Password" id="confirmPassword"><br>

			<input type="submit" class="btn-btn-primary" value="Reset" id="SubmitForm">
		</div>

	</form>


</body>
</html>