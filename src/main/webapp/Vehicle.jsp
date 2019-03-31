<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<body>
<style>
    div {
      width: 90%;
      border-radius: 5px;
      background-color: #f2f2f2;
      padding: 20px;
      margin-left: auto;
      margin-right: auto;
    }

    input[type=text],
    select {
      width: 40%;
      padding: 12px 20px;
      margin: 8px 0;
      display: inline-block;
      border: 1px solid #ccc;
      border-radius: 4px;
      box-sizing: border-box;
    }

    input[type=number],
    select {
      width: 40%;
      padding: 12px 20px;
      margin: 8px 0;
      display: inline-block;
      border: 1px solid #ccc;
      border-radius: 4px;
      box-sizing: border-box;
    }
     input[type=password],
    select {
      width: 40%;
      padding: 12px 20px;
      margin: 8px 0;
      display: inline-block;
      border: 1px solid #ccc;
      border-radius: 4px;
      box-sizing: border-box;
    }

    input[type=date],
    select {
      width: 40%;
      padding: 12px 20px;
      margin: 8px 0;
      display: inline-block;
      border: 1px solid #ccc;
      border-radius: 4px;
      box-sizing: border-box;
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
  <head><base href="/insurance/"></head>
<div align="center">
<h1>INSURANCE</h1><br>
<h1>What vehicle do you have ?</h1>
<table align="center">
<tr  align="center">
<td>
<img src="bike.png" alt="Smiley face" height="270" width="480">
</td>
<td>
<img src="car.png" alt="Smiley face" height="270" width="480">
</td>
</tr>
<tr align="center">
	<form align="center" action="controller/buyinsurancecontroller2" method="post">
	<br><br>
	<input type="submit" value="2 Wheeler">
	</form>
	<form align="center" action="controller/buyinsurancecontroller" method="post">
	<br><br>
	<input type="submit" value="4 Wheeler">
</tr>
</table>
<br>
</div>

</body>
</html>