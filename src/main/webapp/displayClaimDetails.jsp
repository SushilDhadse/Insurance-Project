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
<title>Claim Details Page</title>
<base href="/insurance/">
</head>
<body>
<form align="center">
<div>

<table>
  <tr>
    <th>CLAIM NO</th>
    <th>CLAIM AMOUNT</th>
      <th>CLAIM DATE</th>
        <th>CLAIM REASON</th>
          <th>CLAIM STATUS</th>
            <th>INSURANCE ID</th>
             
  </tr>
  
  <tr>
    <td>${claimHistory.claimNo}</td>
    <td>${claimHistory.claimAmount}</td>
    <td>${claimHistory.claimDate}</td>
    <td>${claimHistory.claimReason}</td>
    <td>${claimHistory.claimStatus}</td>
    <td>${claimHistory.insuranceID}</td>
   
    
  </tr>
  
</table>

</div>
</form>
</body>
</html>