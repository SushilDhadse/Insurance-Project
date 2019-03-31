<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.star{
color:red;
}
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
												
												firstName: {
											        lettersonly: true,
											        required: true
											       },
												lastName : 
													{
														lettersonly: true,
											       	 	required: true
													},
												email : {
													required : true,
													email : true
												},						
												 
												dob : "required",
												
												gender : "required",
											       
												contact : {
													required : true,
													minlength : 10,
													maxlength : 10,
													number : true
												},
												address : {
													required : true,
													minlength : 20,
												},
												password : {
													required : true,
													minlength : 5,
												},
												confirmPassword : {
													required : true,
													minlength : 5,
													equalTo : "#password"
												},
												securityQuestion: {
											        required: true
											       },
											       
											       securityAnswer: {
												        required: true
												       }
											},

											messages : {
												
												firstName:  {
													required: "Enter your first name, please.",
													lettersonly: "Please enter letters only not numbers."
												},												 
												lastName:  {
													required: "Enter your last name, please.",
													lettersonly: "Please enter letters only not numbers."
												},
												email : "Please enter a valid email address",
												dob : "Please enter dob",
												gender : "Please select gender",
												
												
												contact : "Please enter a valid mobile number",
											
												address : {
													required : "Please provide a address",
													minlength : "please enter your full address"
												},
												
												password : {
													required : "Please provide a password",
													minlength : "Your password must be at least 5 characters long"
												},
												confirmPassword : {
													required : "Please provide a password",
													minlength : "Your password must be at least 5 characters long"
												},
											
											securityQuestion:  {
												required: "Enter your security question, please.",
												lettersonly: "Please enter letters only not numbers."
											},
											securityAnswer:  {
												required: "Enter your security answer, please.",
												lettersonly: "Please enter letters only not numbers."
											}
												
											}
										});

						$('#SubmitForm').click(function() {
							
							$("#regForm").valid();
													
						});

					});
</script>



</head>

<title>Registration</title>

<body>
<title>Registration</title>
	<form align="center" name="regForm" id="regForm" 
		action="controller/registercontroller" method="post">
		<div class="container">
		<h1>Registration</h1>
			<br/>First Name<span class="star">*</span><br> <input type="text" name="firstName" id="firstName"
				class="form-control text" placeholder="Enter your Last Name here">

			<br/>Last Name<span class="star">*</span><br> <input type="text" name="lastName" id="lastName"
				class="form-control text" placeholder="Enter your Last Name here">

			<br/> E-Mail<span class="star">*</span><br> <input type="text" name="email" id="email"
				class="form-control text" placeholder="Enter your E-Mail ID here">

			<br/>DOB<span class="star">*</span><br> <input type="text" name="dob" id="dob"
				class="form-control text" placeholder="DD-MM-YYYY"> <br/>Select Gender<br/> <select
				name="gender" class="form-control text">
				<option value="">Select</option>
				<option value="Male">Male</option>
				<option value="Female">Female</option>
				<option value="Other">Other</option>
				
			</select> <br/> Mobile Number<span class="star">*</span><br/> <input type="number" name="contact" id="contact" class="form-control text" placeholder="Enter your Mobile Number here"><br/> 
				<br/>Address<span class="star">*</span><br/>
				
			<input type="text" name="address" id="address" class="form-control text"
				placeholder="Enter your Address here"><br/><br/>
				
			New Password<span class="star">*</span><br> <input type="password" name="password" id="password"
				class="form-control text" placeholder="Enter your New Password here"><br/>

			<br/> Confirm Password<span class="star">*</span><br/> <input type="password"
				name="confirmPassword" id="confirmPassword" class="form-control text"
				placeholder="Re-Enter the Password"><br/><br/>
				
			Security Question<span class="star">*</span><br> <input type="text" name="securityQuestion" id="securityQuestion"
				class="form-control text"
				placeholder="Enter your Security Question here"> <br/><br/>
				
			Security Answer<span class="star">*</span><br/> <input type="text" name="securityAnswer" id="securityAnswer"
				class="form-control text"
				placeholder="Enter your Security Answer here"><br/>
				
				<input type="submit" class="btn-btn-primary id="SubmitForm" value="SubmitForm" autofocus>
		</div>
	</form>

</body>

</html>
