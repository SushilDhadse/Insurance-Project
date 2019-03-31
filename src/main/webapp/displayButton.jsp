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
	align: center;
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

input[type=submit]:hover {
	background-color: #45a049;
}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Choice Of Insurance</title>

<style>
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
.split {
  width: 400px;
  height: 200px;
  z-index: 1;
  top: 115px;
  bottom: 50px;
  right: 90px;
  background: #eee;
  overflow-x: hidden;
  
}
/* #div1{
    width: 60%;
      border-radius: 5px;
      background-color: #f2f2f2;
      padding: 20px;
      margin-left: auto;
      margin-right: auto;
}
 */
</style>
</head>
<body>
<div class="split" style="width: 35%; border-radius: 5px;" align="center" >
	<h2>Select The Type of Vehicle</h2>
		<form action="controller/displayBikeController" method="post">
			<input type="submit" name="displayBike" value="TWO WHEELER">
		</form>
			<form action="controller/displayCarController" method="post">
		<input type="submit" name="displayCar" value="FOUR WHEELER">
</form>
</div>
</body>
</html>
