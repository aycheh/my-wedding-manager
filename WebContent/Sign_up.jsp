<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/style.css" rel="stylesheet" type="text/css">
<script src="http://code.jquery.com/jquery-1.9.1.js"></script> 

<title>Sign up</title>
<h2 align="center">Welcome To Wedding Manager</h2><br>

<style>
.errMsg{
color:#FF0000;
font-weight: bold:
}
</style>
</head>



<body background="images/bg1.jpg">

<form action="CreateUser" method="get" onsubmit="return validateLogin()">
	<table id="CreateUser">
		<tr>
			<td colspan=2><h4>please fill your details </h4></td>
		</tr>
		<tr>
			<td>FirstName:</td>
			<td><input type="text" name="FirstName" id="FirstName" required/></td>
		</tr>
				<tr>
			<td>LastName:</td>
			<td><input type="text" name="LastName" id="LastName" required/></td>
		</tr>
				<tr>
			<td>Password:</td>
			<td><input type="password" name="password" id="password" required/></td>
		</tr>
				
		<tr>
			<td>Re-enter Password:</td>
			<td><input type="password" name="Re_enterPassword" id="Re_enterPassword" required/></td>
		</tr>
		<tr>
		<tr>
			<td>Email:</td>
			<td><input type="text" name="email" id="email" required/></td>
		</tr>
				
		<tr>
			<td colspan=2>
				<input name="submit" id="submit" type="submit" value=" submit"/>				
			</td>
		</tr>
		
	</table>
	
</form>
		<form action=index.jsp method="get">
		<table>
		<tr>
			<td colspan=2>
				<input type="submit" name="submitted" value="cancel">				
			</td>
		</tr>
		</table>
	</form>
	<div class="errMsg">${errorMessage}</div>
	<button onclick="location.href='index.jsp'"> Home</button>




</body>
</html>