<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>RenewInsurance</title>
<base href="/insurance/">
</head>
<body>
<form action="controller/getUser" method="POST" >
<table border="1">
<tr>
<td>InsuranceId:<input  type="text" name="insuranceId"></td>
</tr>
<tr>
<td>MobileNo:<input type="text" name="mobileNo"></td>
</tr>
<tr>
<td>Email:<input type="text" name="email"></td>
</tr>
</table>

<p><input type="submit" value="submit"></p>
</form>

</body>
</html>