<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<h3>${UPDATE_EXPENSES_PARAM_MSG}</h3>
<!--h1 align="Right">  ${שםמשתש} ${welcaomeMsg}  </h1-->

<script>
function isNumber(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    return true;
}
</script>

<div align="Right"> 
	         <form action="Logout" method="get">
     			  <p style="clear:both">
                  <input class="white_button" name="commit" type="submit" value="Logout" />             
                  <div class="errMsg">${errorMessage}
                  
                  </div>
             </form>
</div>
<title>getAllReceivedPayment</title>
</head>
<head>
  <meta http-equiv="Content-Type"
 content="text/html; charset=iso-8859-1">
  <title>Dashboard</title>
  <link href="css/style.css" rel="stylesheet" type="text/css">
</head>	

<body>
<h3>${Creating_person_and_expenses_succeeded}</h3>
<h3>${Msg}</h3>
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
<table border="1">
    <tr>
        <th colspan="12" style="background-color:#7c2f97;">Expenses</th>
    </tr>
    <tr style="background-color:#f0a64e;">
    	 <th class="border">Expenses Id</th>
      
        <th class="border">Person Name</th>
        <th class="border">Person Last Name</th>
        <th class="border">person id</th>
        <th class="border">received payment</th>
        <th class="border">event Type</th>
        <th class="border">payment type</th>
        <th class="border">payback payment</th>
        
      
        
    </tr>
    <c:forEach var="ReceivedPayment" items="${ReceivedPayment}">
    <tr>
 <td>${ReceivedPayment.id}</td>
<td>${ReceivedPayment.person_firstName}</td>
<td>${ReceivedPayment.person_lastName}</td>
<td>${ReceivedPayment.person_id}</td>
<td>${ReceivedPayment.received_payment}</td>
<td>${ReceivedPayment.eventType}</td>
<td>${ReceivedPayment.payment_type}</td>
<td>${ReceivedPayment.payback_payment}</td>


</tr>
 </c:forEach>
</table> 
</div>
</div>
<table>
<form action="Update_Person_And_ReceivedPayment" method="get" onsubmit="return validateLogin()">
	<table id="Update_Person_And_ReceivedPayment">

		<tr>
			<td colspan=2><h4>please fill the following details </h4></td>
		</tr>
		<tr>
			<td>Expenses Id:</td>
			<td><input type="text" name="expenses_id" id="expenses_id" required/></td>
		</tr>
		<tr>
			<td>Person ID:</td>
			<td><input type="text" name="person_id" id="person_id" required/></td>
		</tr>
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
			<td>Received Payment:(Insert number 0-1999999)</td>
			<td><input type="text" name="received_payment" id="received_payment" required onkeypress="return isNumber(event)"/></td>
		</tr>
		<tr>
			<td>Payback Payment:(Insert number 0-1999999)</td>
			<td><input type="text" name="payback_payment" id="payback_payment" required onkeypress="return isNumber(event)"/></td>
		</tr>
		<tr>
			<td>Payment Type (check/cash):</td>
			<td><input type="text" name="payment_type" id="payment_type" required/></td>
		</tr>
				<tr>
			<td>Event Type:</td>
			<td><input type="text" name="eventType" id="eventType" required/></td>
		</tr>
		<tr>
			<td>Payback Payment Event Type:</td>
			<td><input type="text" name="payback_payment_eventType" id="payback_payment_eventType" required/></td>
		</tr>
		<tr>
			<td>Event Address:</td>
			<td><input type="text" name="eventAddress" id="eventAddress" required/></td>
		</tr>
		<tr>
			<td>Paye Comment (About the expenses):</td>
			<td><input type="text" name="payeComment" id="payeComment" required/></td>
		</tr>
		<tr>
			<td colspan=2>
				<input name="submit" id="submit" type="submit" value=" submit"/>				
			</td>
		</tr>
</table>
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