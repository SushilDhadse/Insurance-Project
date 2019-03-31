<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
</style>
<title>Insert title here</title>
<base href="/insurance/">
</head>
<body>
<div class="container">
<p align="center">
<b>Estimation:</b><br>
<input type="number" id="total-package-premium" value="${estimation.estimate}" placeholder="Total Package Premium" readonly>
<p>
<form align="center" action="controller/paymentStatus" method="post"> 
	<!-- <form align="center" action="controller/paymentGatewayController" method="post"> -->
	<br><br>
	<input type="submit" value="BUY"></form>
	<form align="center" action="mainregistrationpage.jsp" method="post">
	<br><br>
	<input type="submit" value="BACK">
</div>
</body>
</html>