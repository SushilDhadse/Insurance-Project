<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <title>Vehicle Insurance Web Application</title>

  
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
  
<style> 
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
 .split {
  width: 400px;
  height: 500px;
  position: fixed;
  z-index: 1;
  top: 115px;
  right: 50px;
  background: #eee;
  overflow-x: hidden;
  padding: 8px;
}
.right {
  right: 35px;
}
.left {
    left: 35px;
}
input[type=password],
    select {
      width: 80%;
      padding: 20px 20px;
      margin: 8px 0;
      display: inline-block;
      border: 1px solid #ccc;
      border-radius: 4px;
      box-sizing: border-box;
    }
input[type=text],
    select {
      width: 80%;
      padding: 20px 20px;
      margin: 8px 0px;
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
button:hover {
  opacity: 0.8;
}
body {
	margin: 0;
}
.topnav {
  overflow: hidden;
  background-color: #333;
}
.topnav a {
  float: right;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}
.topnav a:hover {
  background-color: #ddd;
  color: black;
}
.topnav a.active {
  background-color: #4CAF50;
  color: white;
}
.active {
	background-color: rgb(159, 226, 71);
}
body {
	height: 100%;
}
html {
	background: url('D:\HomeLoanWorkSpace/bghomeloane.jpg') no-repeat center
		center fixed;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
	background-position: 0 0;
}
img {
  border-radius: 8px;
}
#p3 {background-color: ghostwhite;
}
#grad1 {
  height: 50px;
  background-image: linear-gradient(white, lightgreen);
}
#grad2{
  background-image: linear-gradient(white, lightgreen);
}
#button1 {border-radius: 4px;background-color: grey;}
#button2 {background-color: #4CAF50;}
.mySlides {display:none;}
#div1{
    width: 60%;
      border-radius: 5px;
      background-color: #f2f2f2;
      padding: 20px;
      margin-left: auto;
      margin-right: auto;
}
#headers{
background-color: #A9A9A9;
}

.active, .dot:hover {
  background-color: #717171;
}
::-webkit-scrollbar {
  width: 10px;
}
/* Track */
::-webkit-scrollbar-track {
  box-shadow: inset 0 0 5px #f1f1f1; 
  border-radius: 10px;
}
/* Handle */
::-webkit-scrollbar-thumb {
  background: #888; 
  border-radius: 10px;
}
/* Handle on hover */
::-webkit-scrollbar-thumb:hover {
  background: #555; 
}
</style>
<script language="javascript" type="text/javascript">
	function validateRegistration() {
		
		var email = document.forms["regForm"]["email"];
		var password = document.forms["regForm"]["password"];
		var passwordString = abcd;
		var reg = /^([A-Za-z0-9_\-\.])+\@([a-z]{3,10})+\.([a-z]{2,4})$/;
		 
		 if (email.value == "") {
		        window.alert("Please enter your Email Address");
		        email.focus();
		        return false;
		      }
		 if (reg.test(email.value) == false){
		        window.alert("Please enter a valid E-mail Address.");
		        email.focus();
		        return false;
		 }
		 if (password.value == "") {
		        window.alert("Please enter your Password");
		        password.focus();
		        return false;
		      }
	/* 	  if (!password.value.match(passwordString)){
		        window.alert("Please enter a valid Password");
		        password.focus();
		        return false;
		      } */
	}
</script> 
</head>
<body>
        <div class="w3-container" id="grad1">
                <h2>KARS Insure</h2>  
        </div>
        <div class="w3-bar w3-grey">
               <button class="w3-bar-item w3-button w3-hover-teal w3-right w3-ripple" id="button1"
			              onclick="window.location = 'contact.jsp';">Contact</button>
                <button class="w3-bar-item w3-button w3-hover-teal w3-right w3-ripple" id="button1"
                      onclick="window.location = 'aboutUsPage.jsp';">About Us</button>
                <button class="w3-bar-item w3-button w3-hover-teal w3-right w3-ripple" id="button1"
			                onclick="window.location = 'adminLogin.jsp';">ADMIN</button>
                <button class="w3-bar-item w3-button w3-hover-teal w3-right w3-ripple" id="button1"
			                onclick="window.location = 'displayButton.jsp';">Estimate Insurance</button>
</div>
        <div id="div1" class="split right" style="width: 35%; border-radius: 5px;" align="center" >
                <div class="w3-container">
                        <h2 align="center">Login</h2>
                </div>
                <form align="center" name="regForm" action="controller/userlogin"
                  method="post" onsubmit="return validateRegistration()">
                     <c:if test="${error!=null}">
                      <p>${error}</p>
                     </c:if>
                    <br> Email :<br> <input type="text" name="email" class="form-control text" placeholder="E-Mail">
                   <br>Password<br> <input type="password" name="password" class="form-control text" placeholder=" Password "><br>
                      <a href="getemail.jsp" >forgot password ??</a></br>
                    <input type="submit" value="LOGIN"><br/>
                      <a href="Register.jsp" ><button type="button" class="button">REGISTER</button></a>      
                </form>
        </div>
          
        <div class="split left" style="width: 58%; border-radius: 5px;" id="p3">
            <h2 id="grad2" align="center">Vehicle Insurance Benefits ! ! !</h2>
                 <div class="split left" style="width: 58%;   text-align: justify;text-justify: inter-word; border-radius: 5px;" id="p3" >
            <h2 id="headers" align="center" style=" background-color: #70db70;">Vehicle Insurance Benefits..!!!</h2>
            
                <p> When you purchase vehicle insurance online, you can pick out a policy and make the payment directly. Since there is no paperwork and physical documentation required, insurance companies benefit from this. Furthermore, no need to pay agents a commission for selling you a policy, which is why, it is cheaper to purchase car insurance online.
                    
                    The lack of distribution and processing costs brings down the price of the policy. The savings are usually enjoyed by customers in the form of lower premiums.
                    
                    Furthermore, in order to stay competitive and encourage more customers to purchase policies online, insurance companies also provide customers with discounts and offers, sometimes up to 60-70%. Furthermore, since credit card companies have reward points system and discounts on online transactions, this can bring the price down further when you buy motor insurance online.
           			</p> <br>
                   <b> Free From Agents</b>
                   <p>
                    Dealing with insurance agents can sometimes turn out to be cumbersome, as they have their own agendas and they push for policies so that they can earn good commissions. Since agents may not be as impartial as you hope, purchasing car insurance online just might be a better option. Plus, there is the added threat of theft and having to deal with fake agents.
                    
                    Of course, for those who would rather have their queries answered and doubts addressed in a more prompt fashion, dealing with an agent is more convenient than having them answered online or by agents at the call centers. Agents can advise you about hidden clauses and provide you with smart investment tips that you might not necessarily be able to avail if you buy motor insurance online
                   </p>
                    <b>Security and Convenience</b>
                    <p>When you purchase a car policy online, you can compare various options, pick a policy and complete all the paperwork online itself. Plus, you can ensure that the information is filled in accurately, as agents might miss out on vital information if you rely on them to fill out your form. This can later lead to the claim being rejected altogether due to inaccurate information provided.
                    
                    Also, having to go to a car insurance office in person can prove to be a time-consuming task, sometimes requiring several trips back and forth. The online route also makes it easier to save all your important documents, where there is no threat of physical documents being stolen or damages by the fire or a natural calamity.
                    
                    There is however, that risk of personal information being leaked, or credit card information being accessible to thieves if you purchase motor insurance online. Choosing a policy provided by a well-known brand is more prudent, as they would have all their safeguards in place. Policyholders should also remember never to share their policy details with anyone online, posing as the company representative – they should only refer to the company website and speak with the customer care agents listed.
                </p><br>
                <b>Renewals and payment of premiums</b>
                    <p>
                    It is quite easy to forget that the payment of a premium is due, and this is where having an online account helps. Timely reminders are provided to the policyholders so that they never miss out on making payments or renewing their policy, thereby ensuring that the policy does not lapse.
                    
                    Furthermore, since everything is online, you don’t need to follow-up with agents during renewal, or having to make many trips to the insurance provider’s branch.
                    
                    Of course, during the time of renewal, your insurer might want to inspect your car, and in such cases, renewing your policy online might not be possible.
                    
                </p><br>
                <b> Wide Policy Options</b>
                <p>
                    With online comparison tools provided, it is now easy to compare policies. You can choose those features that suit your requirements and build a package according to your needs in an easy and transparent manner before you complete the purchase of your motor insurance online.
                  </p> <br> 
                    <b>Insured Declared Value (IDV)</b>
                    <p>The value of your car is assessed by the insurance company in stages, in order to gauge its current value. The Insured Declared Value is that value, once depreciation is deducted from the original value of your car. Usually, the lower the IDV, the lower the premium paid. But, this could mean trouble when the time comes to make a claim. Buying car insurance online can prevent such a situation from taking place to a large extent.
                    </p><br>
                    <b>Cash-Less facilities</b>
                    
                    <p>With online car insurance, policyholders can also avail the cashless facility. When the time comes to repair your vehicle, you can simply make a claim online and opt for the cashless garage facility where the insurer will directly pay to the garage.
                    
                    Weigh the pros and cons, consider all scenarios and thereafter decide whether online insurance is the right fit for you.
            </p>

            </marquee>
            
        </div>
            
        </div>
</body>
</html>