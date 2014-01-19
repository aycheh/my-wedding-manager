<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link href="css/style.css" rel="stylesheet" type="text/css">

<script src="http://code.jquery.com/jquery-1.9.1.js"></script> 

<title>Wedding manager</title>
<p>
   Today's date: <%= (new java.util.Date()).toLocaleString()%>
</p>
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

<body>
<div class="main">
<div class="page">
<div class="page-in">
<div class="header">
<div class="topmenu">
<ul>
  <li
 style="background: transparent none repeat scroll 0% 50%; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial;">
<a
 href="#">Home</a></li>
  <li><a href="#">About Us</a></li>
  <li><a href="#">Services</a></li>
  <li><a href="#">Links</a></li>
  <li><a href="#">Contact US<br>
    </a></li>
</ul>
</div>
<div class="header-img">
<h1>Wedding manager</h1>
</div>
</div>
<div class="mid">
<div class="mid-left">
<div class="gap-1">
<div>





<form method="post" action="CreateUser" enctype="multipart/form-data">
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
                    <td>Portrait Photo: </td>
                    <td><input type="file" name="photo" size="50"/></td>
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