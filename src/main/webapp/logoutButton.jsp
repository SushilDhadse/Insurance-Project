<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Vehicle Insurance Web Application Next</title>

  
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
  
<style type="text/css">
#grad1 {
  height: 50px;
  background-image: linear-gradient(white, lightblue); /* Standard syntax (must be last) */
}
#button1 {border-radius: 4px;background-color: black;}

</style>
</head>
<body>
	    <div class="w3-container" id="grad1">
        	<h2 align="left">Insure KARS<i class='fas fa-user-circle' style='font-size:36px;float:right'></i></h2>
        </div>
        <div class="w3-bar w3-black">
    <form action="controller/logout" method="post">
                <button class="w3-bar-item w3-button w3-hover-teal w3-right w3-ripple" id="button1">Logout</button>
			                </form>
                <button class="w3-bar-item w3-button w3-hover-teal w3-right w3-ripple" id="button1"
                      onclick="window.location = 'aboutUsPage.jsp';">Contact</button>
 				<button class="w3-bar-item w3-button w3-hover-teal w3-right w3-ripple" id="button1"
                      onclick="window.location = 'index.jsp';">About Us</button>
</div>

</body>
</html>