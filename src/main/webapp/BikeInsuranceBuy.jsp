<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
.star{
color:red;
}
</style>
<script src="resources/jquery-1.12.4.js"></script>
<script src="resources/jquery.validate.min.js"></script>
<script src="resources/additional-methods.min.js"></script>
    <script language="javascript" type="text/javascript">
	
    function dynamicdropdown(listindex)
    {
        switch (listindex)
        {
        case "bajaj" :
            document.getElementById("status").options[0]=new Option("Select Model","");
            document.getElementById("status").options[1]=new Option("PULSUR NS200","pulsur ns200");
            document.getElementById("status").options[2]=new Option("PULSUR RS200","pulsur rs200");
			document.getElementById("status").options[3]=new Option("PULSUR DOMINAR","pulsur dominar");
			document.getElementById("status").options[4]=new Option("AVENGER CRUISE","avenger cruise");
            break;
        case "hero" :
            document.getElementById("status").options[0]=new Option("Select Model","");
            document.getElementById("status").options[1]=new Option("XTREME 200R","xtreme 200r");
            document.getElementById("status").options[2]=new Option("MAESTRO EDGE","maestro edge");
            document.getElementById("status").options[3]=new Option("SPLENDER PLUS","splender plus");
            break;
		case "ktm" :
            document.getElementById("status").options[0]=new Option("Select Model","");
            document.getElementById("status").options[1]=new Option("DUKE 200","buke 200");
            document.getElementById("status").options[2]=new Option("RC 200","rc 200");
            document.getElementById("status").options[3]=new Option("ADVENTURE 390","adventure 390");
            break;
        }
        return true;
    }
    
    </script>
    <script>$(document).ready(function() {
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
						
						drivingLicence: {
							minlength : 10,
							maxlength : 10,
					       },

						registerationNo : {
							minlength : 10,
							maxlength : 10,
						},						
						years : "required",
						manufacturer : "required",
						policyNo : "required",
						status : "required",
						age : "required",
						
						engineNo :{
							minlength : 10,
							maxlength : 10,
						},	
						chassisNo:{
							minlength : 17,
							maxlength : 17,
						}

					},

					messages : {
						
						drivingLicence:  {
							required: "Enter a valid Driving Licence, please.",
						},												 
						registerationNo:  {
							required: "Enter a valid Registeration No, please.",
						
						},
						years : "please choose plan year",
						manufacturer : "please choose manufacturer of your vehicle",
						policyNo : "please choose a policyNo",
						
						
						status : "please choose model of your vehicle",
						age : "please choose age of your vehicle",
					
						engineNo : {
							required : "Please enter your engine no",
							minlength : "please enter a valid engine no"
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
	<div class="container">
	<form align="center" name="regForm" id="regForm" action="estimationController2" method="post">
    <br>MANUFACTURER<span class="star">*</span><br>
        <select id="manufacturer" name="manufacturer" onchange="javascript: dynamicdropdown(this.options[this.selectedIndex].value);" required>
        <option value="">Select Manufacturer</option>
        <option value="bajaj">BAJAJ</option>
        <option value="hero">HERO</option>
		<option value="ktm">KTM</option>
        </select>
        </br>
    <br>MODEL<span class="star">*</span><br>
        <script type="text/javascript" language="JavaScript">
        document.write('<select name="model" id="status" required><option value="">Select Model</option></select>')
        </script>
    <br>       	
	<br>DRIVING LICENCE<span class="star">*</span> <br> <input type="text" id="drivingLicence" name="drivingLicence" placeholder="Enter Your Driving Licence" required><br>
	
	
	<br>BIKE AGE<span class="star">*</span> <br> <select id="age" name="age" required>
       <option value="">select a policy</option>
       <option value="0">Less Than A Year</option>
        <option value="1">One Year</option>
        <option value="2">Two Year</option>
        <option value="3">Three Year</option>
        </select><br>
	
	
	<br>REGISTRATION#<span class="star">*</span><br><input type="text" id="registerationNo" name="registerationNo" placeholder="Enter Your Registration Number" required><br>
	<br>ENGINE#<span class="star">*</span> <br><input type="text" id="engineNo" name="engineNo" placeholder="Enter Your Engine Number " required><br>
	<br>CHASSIS#<span class="star">*</span> <br><input type="text"  id="chassisNo" name="chassisNo" placeholder="Enter Your Chassis Number" required><br>
	
	       <br>POLICIES<span class="star">*</span><br> <select id="policyNo" name="policyNo" required>
       <option value="">select a policy</option>
           <c:forEach items="${listOfPolicy}" var="policy">  
        		<option value="${policy.policyid}">${policy.policyname}<p>                  </p>${policy.discount}<p>%</p></option>
		    </c:forEach>
        </select><br>
        
     <br>POLICY DURATION<span class="star">*</span><br> <select id="years" name="years"  >
       <option value="">select a policy</option>
        <option value="1">One Year</option>
        <option value="2">Two Year</option>
        <option value="3">Three Year</option>
        </select><br>
	<input type="submit" id="SubmitForm" value="SubmitForm" name="SUBMIT" >

	</form>
	</div>
    </body>
</html>