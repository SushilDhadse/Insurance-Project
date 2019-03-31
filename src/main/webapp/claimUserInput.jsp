<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<!-- <script language="javascript" type="text/javascript">
	function validateRegistration() {

		var email = document.forms["regForm"]["email"];
		 var reg = /^([A-Za-z0-9_\-\.])+\@([a-z]{3,10})+\.([a-z]{2,4})$/;

		 if (reg.test(email.value) == false){
		        window.alert("Please enter a valid E-mail Address.");
		        email.focus();
		        return false;
		      }
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
	 
</script>  -->
<title>Claim Input Page</title>
<base href="/insurance/">
</head>

<body>

	<form align="center" name="claimForm"
		onsubmit="return validateRegistration()" action="controller/claimInput"
		method="post" enctype="multipart/form-data">
		<div class="container">
			<c:if test="${error!=null}">
				<p>${error}</p>
 			</c:if>
			<br> Insurance ID : <br> <input type="number" name="insuranceId"
				class="form-control text" placeholder="Enter Insurancd Id" >

 
			<br>Mobile Number: <br> <input type="number" name="contactNumber"
				class="form-control text" placeholder=" Enter Mobile Number "><br>
				
				<br>Select Reason to Claim Insurance : <br>
      <select name="reasonToClaim" class="form-control text" ><br> 
      						<option value="">Select</option>
                          <option value="Natural Disaster">Natural Disaster</option> 
                          <option value="Man-Made Disaster">Man-Made Disaster</option> 
                          <option value="Road Accident">Road Accident</option> 
                          <option value="Theft">Theft</option> 
      </select> 	  
				
			<br>	Upload Document : <input type="file" name="profilePic" /> <br/>
	
			<br><input type="submit" class="btn-btn-primary" value="Submit">
		</div>
	</form>

</body>

</html>

