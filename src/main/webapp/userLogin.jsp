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

   .button {
  background-color: #4CAF50;
   width: 40%;
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
		 var reg = /^([A-Za-z0-9_\-\.])+\@([a-z]{3,10})+\.([a-z]{2,4})$/;

		 if (reg.test(email.value) == false){
		        window.alert("Please enter a valid E-mail Address.");
		        email.focus();
		        return false;
		      }
	}

	 
</script> 
<base href="/insurance/">
</head>
<title>Login</title>


<body>

<a href="adminLogin.jsp"  align="center"><button type="button" class="button">ADMIN LOGIN</button></a>
	<form align="center" name="regForm"
		onsubmit="return validateRegistration()" action="controller/userlogin"
		method="post">
		<div class="container">
			<c:if test="${error!=null}">
				<p>${error}</p>
 			</c:if>
			<br> Email :<br> <input type="text" name="email"
				class="form-control text" placeholder="E-Mail" >


			<br>Password<br> <input type="password" name="password"
				class="form-control text" placeholder=" Password "><br>
				<a href="getemail.jsp" >forgot password ??</button></a></br>
			<input type="submit" class="btn-btn-primary" value="LOGIN"><br/>
			<a href="Register.jsp" ><button type="button" class="button">REGISTER</button></a>
		</div>
	</form>

</body>

</html>

