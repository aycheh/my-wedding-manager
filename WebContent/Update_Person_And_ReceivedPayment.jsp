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
<body background="images/bg1.jpg">

<div>
<table border="1">
     
 <tr>
     <tr>
     <form action="GetUser" method="get">
     	<th><input class="white_button" name="commit" type="submit" value="getUser" /></th>
     	</form>
     	
     	 <form action="Updateuser.jsp" method="get">    	
     	<th><input class="white_button" name="commit" type="submit" value=" Updateuser" /> </th>
     	</form>
 
     	
     	<form action="CreatePerson.jsp" method="get">
     	<th><input class="white_button" name="commit" type="submit" value=" CreatePerson" /></th>
     	</form>
     	
     	<form action="updatePerson.jsp" method="get">
     	<th><input class="white_button" name="commit" type="submit" value=" updatePerson" /></th>
     	</form>
     	
     	<form action="CreatePersonAndCreateReceivedPayment.jsp" method="get">
     	<th><input class="white_button" name="commit" type="submit" value=" CreatePersonAndCreateReceivedPayment" /></th>
     	</form>
     	
     	<form action="Update_Person_And_ReceivedPayment.jsp" method="get">
     	<th><input class="white_button" name="commit" type="submit" value=" Update Person And ReceivedPayment" /></th>
     	</form>
     	
     	
     	
     	<form action="getAllReceivedPayment.jsp" method="get">
     	<th><input class="white_button" name="commit" type="submit" value=" getAllReceivedPayment" /></th>
     </form>
     
     <form action="Dashboard.jsp" method="get">
     	<th><input class="white_button" name="commit" type="submit" value=" Dashboard" /></th>
     </form>
     <form action="----------" method="get">
     	<th><input class="white_button" name="commit" type="submit" value=" -------" /></th>
     	</form>
     </tr>     
 </table>

</div>

<div>
<table border="1">
    <tr>
        <th colspan="12" style="background-color:#7c2f97;">Expenses</th>
    </tr>
    <tr style="background-color:#f0a64e;">
    	 <th class="border">Expenses Id</th>
         <th class="border">user id</th>
        <th class="border">Person Name</th>
        <th class="border">Person Last Name</th>
        <th class="border">person id</th>
        <th class="border">received payment</th>
        <th class="border">event Type</th>
        <th class="border">payment type</th>
        <th class="border">payback payment</th>
        <th class="border">payback payment eventType</th>
        <th class="border">payback payment event Address</th>
        <th class="border">payback payment date</th>
        
    </tr>
    <c:forEach var="ReceivedPayment" items="${ReceivedPayment}">
    <tr>
 <td>${ReceivedPayment.id}</td>
 <td>${ReceivedPayment.user_id}</td>

<td>${ReceivedPayment.person_firstName}</td>
<td>${ReceivedPayment.person_lastName}</td>
<td>${ReceivedPayment.person_id}</td>
<td>${ReceivedPayment.received_payment}</td>
<td>${ReceivedPayment.eventType}</td>
<td>${ReceivedPayment.payment_type}</td>
<td>${ReceivedPayment.payback_payment}</td>
<td>${ReceivedPayment.payback_payment_eventType}</td>
<td>${ReceivedPayment.eventAddress}</td>
<td>${ReceivedPayment.date}</td>
</tr>
 </c:forEach>
</table> 
</div>


<div>
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
</div>	
</table>
		<form action=Dashboard.jsp method="get">
		<table>
		<tr>
			<td colspan=2>			
				<button onclick="location.href='Dashboard.jsp'"> cancel</button>
				<div class="errMsg">${errorMessage}</div>				
			</td>
		</tr>		
	</form>
</body>
</html>