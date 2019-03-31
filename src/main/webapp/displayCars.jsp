<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<H4 align="center">
	<b><strong><h2>Estimate Vehicle Insurance</h2></strong></b>
</H4>
<title>Estimate Vehicle Insurance</title>
<base href="/insurance/">
</head>
<body>
	<form action="controller/listCarController" method="post">
		<style>
input[type=number], select {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid rgb(204, 204, 204);
	border-radius: 10px;
	box-sizing: border-box;
}

input[type=text], select {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid rgb(204, 204, 204);
	border-radius: 10px;
	box-sizing: border-box;
}

input[type=button] {
	width: 60%;
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 100px;
	border: 1px solid rgb(243, 152, 152);
	border-radius: 10px;
	cursor: pointer;
}

input[type=button]:hover {
	background-color: #0daceb;
}

input[type=submit]:hover {
	background-color: #45a049;
}

div {
	width: 60%;
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px;
	margin-left: auto;
	margin-right: auto;
	align: center;
}
</style>

		<body>
			<div>
				<form>
					<table align="center">
						<tr>
							<td>Four Wheeler Insurance Calculator</td>
						</tr>
						<tr>
							<td>Enter Car Model Name :</td>
							<td><select id="carName" name="carName" required>
									<option value="">Select Car Name</option>
									<c:forEach items="${listOfCars}" var="car">
										<option value="${ car.carPrice }">${ car.carName }</option>
									</c:forEach>
							</select></td>
						</tr>
						<tr>
							<td>Enter Car's Age :</td>
							<td><select id="manufactureyear" name="carAge" required>
									<option value="">Select Car Age</option>
									<option value="10">1 Year</option>
									<option value="20">2 Year</option>
									<option value="30">3 Year</option>
							</select></td>
						</tr>
						<tr>
							<td colspan="2"><input type="button"
								value="Calculate Premium" id="cPremium" onclick="calculate()"></td>
						</tr>
						<tr>
							<td>Basic Details : <br>
							</td>
						</tr>
						<tr>
							<td>IDV (Insured Declared Value) :</td>
							<td><input type="number" id="idv-amount"
								placeholder="IDV value" readonly></td>
						</tr>
						<tr>
							<td>Year :</td>
							<td><input type="text" id="year" placeholder="Year" readonly></td>
						</tr>
						<tr>
							<td>[A] OW DAMAGE PREMIUM PACKAGE :</td>
						</tr>
						<tr>
							<td>Vehicle Basic Rate :</td>
							<td><input type="number" id="vehicle-rate"
								placeholder="vehicle basic rate" readonly></td>
						</tr>
						<tr>
							<td>Basic For Vehicle :</td>
							<td><input type="number" id="basic-for-vehicle"
								placeholder="Basic For Vehicle" readonly></td>
						</tr>
						<tr>
							<td>Own Damage Premium :</td>
							<td><input type="number" id="own-damage-premium"
								placeholder="Own Damage Premium" readonly></td>
						</tr>
						<tr>
							<td>Total A :</td>
							<td><input type="number" id="total-a"
								placeholder="Total Premium A" readonly></td>
						</tr>
						<tr>
							<td>[B] Liability Premium :</td>
						</tr>
						<tr>
							<td>Liability Premium (TP) :</td>
							<td><input type="number" id="liability-premium"
								placeholder="Liability Premium" readonly></td>
						</tr>
						<tr>
							<td>LL to Paid Driver :</td>
							<td><input type="number" id="ll-to-paid-driver"
								placeholder="LL to Paid Driver" readonly></td>
						</tr>
						<tr>
							<td>Total Liability Premium [B]:</td>
							<td><input type="number" id="total-liability-premium"
								placeholder="Total Liability Premium" readonly></td>
						</tr>
						<tr>
							<td>[C] Total Premium :</td>
						</tr>
						<tr>
							<td>Total Package Premium <br> [A + B]:
							</td>
							<td><input type="number" id="total-package-premium"
								placeholder="Total Package Premium" readonly></td>
						</tr>
						<tr>
							<td>GST @18%:</td>
							<td><input type="number" id="gst" placeholder="GST" readonly>
							</td>
						</tr>
						<tr>
							<td><b><h3>Final Premium:</h3></b></td>
							<td><input type="number" id="final-premium"
								placeholder="Final Premium" readonly
								style="background-color: #a6a6a6; font-weight: bold;"></td>
						</tr>
					</table>
					<script>
						var idv;
						var vehiclebasicrate;
						var liabilitypremium;
						var lltodriver;
						var totallp;
						var basicforvehicle;
						var owndamagepremium;
						var totala;
						var totalc;
						var gst;
						var finalpremium;
						var year;
						var carprice;

						function calculate() {
							if (document.getElementById("manufactureyear").value == 10) {
								carprice = document.getElementById("carName").value;
								idv = carprice - (carprice * (10 / 100));
								year = "1 Year";
								document.getElementById("year").value = year;
							}
							if (document.getElementById("manufactureyear").value == 20) {
								carprice = document.getElementById("carName").value;
								idv = carprice - (carprice * (20 / 100));
								year = "2 Year";
								document.getElementById("year").value = year;
							}
							if (document.getElementById("manufactureyear").value == 30) {
								carprice = document.getElementById("carName").value;
								idv = carprice - (carprice * (30 / 100));
								year = "3 Year";
								document.getElementById("year").value = year;
							}
							vehiclebasicrate = 3.362;
							liabilitypremium = 1850.00;
							lltodriver = 50.00;
							totallp = 1900.00;
							basicforvehicle = idv * (3.362 / 100);
							owndamagepremium = basicforvehicle;
							totala = owndamagepremium;
							totalb = liabilitypremium + lltodriver;
							totalc = totala + totalb;
							gst = totalc * (18 / 100);
							finalpremium = (totalc + gst) * 12;
							document.getElementById("vehicle-rate").value = vehiclebasicrate;
							document.getElementById("liability-premium").value = liabilitypremium;
							document.getElementById("ll-to-paid-driver").value = lltodriver;
							document.getElementById("total-liability-premium").value = totallp;
							document.getElementById("idv-amount").value = idv;
							document.getElementById("basic-for-vehicle").value = basicforvehicle;
							document.getElementById("own-damage-premium").value = owndamagepremium;
							document.getElementById("total-a").value = totala;
							document.getElementById("total-liability-premium").value = totalb;
							document.getElementById("total-package-premium").value = totalc;
							document.getElementById("gst").value = gst;
							document.getElementById("final-premium").value = finalpremium;
						}
					</script>
					<a href="index.jsp"> <input type="button" value="back"></a>
					</a>
				</form>
			</div>
		</body>
</html>

