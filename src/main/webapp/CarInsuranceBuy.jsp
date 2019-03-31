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
    <script language="javascript" type="text/javascript">
	
    function dynamicdropdown(listindex)
    {
        switch (listindex)
        {
        case "mahindra" :
            document.getElementById("status").options[0]=new Option("Select Model","");
            document.getElementById("status").options[1]=new Option("SCORPIO","scorpio");
            document.getElementById("status").options[2]=new Option("BOLERO","bolero");
			document.getElementById("status").options[3]=new Option("XUV500","xuv500");
			document.getElementById("status").options[4]=new Option("XYLO","xylo");
            break;
        case "honda" :
            document.getElementById("status").options[0]=new Option("Select Model","");
            document.getElementById("status").options[1]=new Option("CIVIC","civic");
            document.getElementById("status").options[2]=new Option("ACCORD","accord");
            document.getElementById("status").options[3]=new Option("CITY","city");
			document.getElementById("status").options[4]=new Option("AMAZE","amaze");
            break;
		case "tata" :
            document.getElementById("status").options[0]=new Option("Select Model","");
            document.getElementById("status").options[1]=new Option("NANO","nano");
            document.getElementById("status").options[2]=new Option("TIAGO","tiago");
            document.getElementById("status").options[3]=new Option("NEXON","nexon");
			document.getElementById("status").options[4]=new Option("TIGOR","tigor");
            break;
        }
        return true;
    }
    </script>
    </head>
	
   
        <body>
	<div class="container">
	<form align="center" name="regForm" id="regForm" action="estimationController2" method="post">
    <br>MANUFACTURER<span class="star">*</span><br>
        <select id="manufacturer" name="manufacturer" onchange="javascript: dynamicdropdown(this.options[this.selectedIndex].value);" >
        <option value="">Select Manufacturer</option>
        <option value="mahindra">MAHINDRA</option>
        <option value="honda">HONDA</option>
		<option value="tata">TATA</option>
        </select>
           </br>
    <br>MODEL<span class="star">*</span><br>
        <script type="text/javascript" language="JavaScript">
        document.write('<select name="model" id="status"><option value="">Select Model</option></select>')
        </script>
    <br>       	
	<br>DRIVING LICENCE<span class="star">*</span> <br> <input type="text" id="drivingLicence" name="drivingLicence" placeholder="Enter Your Driving Licence"><br>
	
	
	<br>CAR AGE<span class="star">*</span> <br> <select id="age" name="age"  >
       <option value="">select a policy</option>
       <option value="0">Less Than A Year</option>
        <option value="1">One Year</option>
        <option value="2">Two Year</option>
        <option value="3">Three Year</option>
        </select><br>
	
	
	<br>REGISTRATION#<span class="star">*</span><br><input type="text" id="registerationNo" name="registerationNo" placeholder="Enter Your Registration Number"><br>
	<br>ENGINE#<span class="star">*</span> <br><input type="text" id="engineNo" name="engineNo" placeholder="Enter Your Engine Number "><br>
	<br>CHASSIS#<span class="star">*</span> <br><input type="text"  id="chassisNo" name="chassisNo" placeholder="Enter Your Chassis Number"><br>
	
	       <br>POLICIES<span class="star">*</span><br> <select id="policyNo" name="policyNo"  >
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