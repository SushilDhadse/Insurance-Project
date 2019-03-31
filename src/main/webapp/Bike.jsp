<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bike</title>
</head>
<body>
	<form action="controller/bikeController" method="post">
	BikeName :<input type="text" placeholder="Enter your bike name here" name="bikeName">
	BikePrice :<input type="text" placeholder="Enter your bike price here" name="bikePrice">
	  <input type="submit" value="Submit" >
	</form>
</body>
</html>
