<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<meta http-equiv="Content-Type"content="text/html; charset=iso-8859-1">
 <link href="css/style.css" rel="stylesheet" type="text/css">
 
 <title>Update Person</title>
 
<style>
.personERR{
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

<style>
.update_person_MSG{
color:#FF00FF;
font-weight: bold:

}
#login_table{
	border-spacing:20px;
	border:1px outset blue;
	border-radius:10px;
	box-shadow:2px 2px 4px darkgray;
}
</style>


		<div align="Right"> 
	         <form action="Logout" method="get">
     			  <p style="clear:both">
                  <input class="white_button" name="commit" type="submit" value="Logout" /> 
             </form>
		</div>



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
     <li><a href="Logout">Logout<br>
    </a></li>
     Today's date: <%= (new java.util.Date()).toLocaleString()%>
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
<!-- הכנס פה תמונה או משהו יפה  -->

 <div>
<table>
<h3>${Creating_person_and_expenses_succeeded}</h3>
<div class="update_person_MSG">${update_person_MSG}</div>
<div class="personERR">${personERR}</div>
<h3>${Msg}</h3>
<form action="UpdatePerson" method="get" onsubmit="return validateLogin()">
	<table id="UpdatePerson">

		<tr>
			<td colspan=2><h4>please fill the following details </h4></td>
		</tr>
		<tr>
			<td>Person ID:</td>
			<td><input type="text" name="person_id" id="person_id" required/></td>
		</tr>
		<tr>
		
		<tr>
			<td>Person First Name:</td>
			<td><input type="text" name="personName" id="personName" required/></td>
		</tr>
		<tr>
			<td>Person LastName:</td>
			<td><input type="text" name="personLastName" id="personLastName" required/></td>
		</tr>
		<tr>
			<td>Relationship:</td>
			<td><input type="text" name="relationship" id="relationship" required/></td>
		</tr>
				
		<tr>
			<td>Pesron Address:</td>
			<td><input type="text" name="pesronAddress" id="pesronAddress"required/></td>
		</tr>

		<tr>
			<td>Person Phone:</td>
			<td><input type="text" name="personPhone" id="personPhone"required/></td>
		</tr>
		<tr>
			<td>Person Email:</td>
			<td><input type="text" name="personEmail" id="personEmail" required /></td>
		</tr>
		<tr>
			<td>Comment About a person:</td>
			<td><input type="text" name="pesronComment" id="pesronComment" required/></td>
		</tr>
		<tr>
			<td colspan=2>
				<input name="submit" id="submit" type="submit" value=" submit"/>				
			</td>
		</tr>
</div>	
</table>
		<form action=Dashboard.jsp method="get">
		<table>
		<tr>
			<td colspan=2>			
				<button onclick="location.href='Dashboard.jsp'"> cancel</button>
							
			</td>
		</tr>		
	</form>
	
<div>
<table border="1">
    <tr>
        <th colspan="15" style="background-color:#7c2f97;">person</th>
    </tr>
    <tr style="background-color:#f0a64e;">
    	 <th class="border">person id</th>
         <th class="border">user id</th>
        <th class="border">Person Name</th>
        <th class="border">Person Last Name</th>
        <th class="border">relationship</th>
        <th class="border">address</th>
        <th class="border">phone</th>
        <th class="border">email</th>
         <th class="border">comment</th>
    
        
    </tr>
    <c:forEach var="person" items="${person}">
    <tr>
<td>${person.id}</td>
<td>${person.user_id}</td>
<td>${person.firstName}</td>
<td>${person.lastName}</td>
<td>${person.relationship}</td>
<td>${person.address}</td>
<td>${person.phone}</td>
<td>${person.email}</td>
<td>${person.comment}</td>

</tr>
 </c:forEach>
</table>
</div>

</div>

</div>
</div>

<div class="mid-right">
<div class="mid-right-top">
<h2> MAIN MENU</h2>
<ul class="right-nav">

  <li><a href="#">Link goes here<br>
    </a></li>
  <li><form action="GetUser" method="get">
     	<th><input class="white_button" name="commit" type="submit" value="getUser" /></th>
     	</form></li>
  <li><form action="Updateuser.jsp" method="get">    	
     	<th><input class="white_button" name="commit" type="submit" value=" Updateuser" /> </th>
     	</form></li>
  <li><form action="CreatePerson.jsp" method="get">
     	<th><input class="white_button" name="commit" type="submit" value=" CreatePerson" /></th>
     	</form></li>
  <li><form action="GetAllPersons_and_RedirectToUpdatePersonJSP" method="get">
     	<th><input class="white_button" name="commit" type="submit" value=" Update Person" /></th>
     	</form></li>
  <li><form action="CreatePersonAndCreateReceivedPayment.jsp" method="get">
     	<th><input class="white_button" name="commit" type="submit" value=" CreatePersonAndCreateReceivedPayment" /></th>
     	</form></li>
  <li><form action="Get_Expenses_and_forward_to_exp_update_page" method="get">
     	<th><input class="white_button" name="commit" type="submit" value=" Update Person And ReceivedPayment" /></th>
     	</form></li>
  <li><form action="GetAllReceivedPayment" method="get">
     	<th><input class="white_button" name="commit" type="submit" value=" get All ReceivedPayment" /></th>
     </form></li>
  <li><form action="GetAllUserPersons" method="get">
     	<th><input class="white_button" name="commit" type="submit" value="Get all persons" /></th>
     </form></li>
     <li><form action="SearchPerson.jsp" method="get">
     	<th><input class="white_button" name="commit" type="submit" value="Search Persons" /></th>
     </form></li>
     <form action="Dashboard.jsp" method="get">
     	<th><input class="white_button" name="commit" type="submit" value=" Dashboard" /></th>
     </form>
  <li><a href="index.html#">Link goes here</a></li>
  <li><a href="index.html#">Link goes here</a></li>
  <li><a href="index.html#">Link goes here</a></li>
</ul>
</div>
</div>
</div>

<div class="footer">
<!--DO NOT Remove The Footer Links-->
<!--Designed by--><a href="http://www.htmltemplates.net">
<img src="images/footnote.gif" class="copyright" alt="html templates"></a>
<!--In partnership with--><a href="http://websitetemplates.net">
<img src="images/footnote.gif" class="copyright" alt="website templates"></a>
<p class="copyright-text">&copy; Copyright 2013. Designed by <a class="footer-link"
 target="_blank" href="#">Asher</a></p>
<!--DO NOT Remove The Footer Links-->
</div>
</div>
</div>
</div>


 

</body>
</html>