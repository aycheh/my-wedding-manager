
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session = "false" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script src="http://code.jquery.com/jquery-1.9.1.js"></script> 

<title>Wedding manager</title>
<link href="/style.css" rel="stylesheet" type="text/css">


<style>
.errMsg{
color:#FF0000;
font-weight: bold:

}
#login_table{
	border-spacing:20px;
	border:1px outset blue;
	border-radius:10px;
	box-shadow:2px 2px 4px darkgray;
}
</style>


</head>

<body background="images/bg1.jpg">
<h2 align="center">Welcome To Wedding Manager</h2><br>
<img src="images/wedding_flowers_background.jpg" name="home_img" border="0" id="home_img" style="height: 156px; width: 367px; "/>
<br/><br/>


<form action="login" method="get" onsubmit="return validateLogin()">
	<table id="login_table">
		<tr>
			<td colspan=2><h3>Sign In</h3></td>
		</tr>
		<tr>
			<td>Email:</td>
			<td><input type="text" name="client_id" id="client_id" required/></td>
		</tr>
		<tr>
			<td>Password:</td>
			<td><input type="password" name="password" id="passowrd" required/></td>
		</tr>
		<tr>
			<td colspan=2>
				<input name="submit" id="submit" type="submit" value=" Login"/>
			</td>
		</tr>
	</table>
</form>
<div class="errMsg">${errorMessage}</div>

</body>
</html>