<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://code.jquery.com/jquery-1.9.1.js"></script> 
<h3>${Msg}</h3>
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
<title>CreatePersonAndCreateReceivedPayment</title>
</head>
<body background="images/bg1.jpg">

<div>
<table border="0">
     
 <tr>
     <tr>
     <form action="GetUser" method="get">
     	<th><input class="white_button" name="commit" type="submit" value="getUser" /></th>
     	</form>
     	
     	 <form action="GetAllPersons_and_RedirectToUpdatePersonJSP" method="get">
     	<th><input class="white_button" name="commit" type="submit" value=" Update Person" /></th>
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
     	<form action="GetAllUserPersons" method="get">
     	<th><input class="white_button" name="commit" type="submit" value="Get all persons" /></th>
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


<form action="CreatePersonAndCreateReceivedPayment" method="get" onsubmit="return validateLogin()">
	<table id="CreatePersonAndCreateReceivedPayment">
		<tr>
			<td colspan=2><h4>please fill the following details </h4></td>
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
			<td><input type="text" name="pesronAddress" id="pesronAddress"/></td>
		</tr>
		<tr>
		<tr>
			<td>Person Phone:</td>
			<td><input type="text" name="personPhone" id="personPhone"/></td>
		</tr>
				<tr>
			<td>Person Email:</td>
			<td><input type="text" name="personEmail" id="personEmail" /></td>
		</tr>
				<tr>
			<td>Comment About a person:</td>
			<td><input type="text" name="pesronComment" id="pesronComment" /></td>
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
			<td><input type="text" name="payment_type" id="payment_type"/></td>
		</tr>
				<tr>
			<td>Event Type:</td>
			<td><input type="text" name="eventType" id="eventType"/></td>
		</tr>
				<tr>
			<td>Payback Payment Event Type:</td>
			<td><input type="text" name="payback_payment_eventType" id="payback_payment_eventType" /></td>
		</tr>
				<tr>
			<td>Event Address:</td>
			<td><input type="text" name="eventAddress" id="eventAddress" /></td>
		</tr>
				<tr>
			<td>Paye Comment (About the expenses):</td>
			<td><input type="text" name="payeComment" id="payeComment" /></td>
		</tr>
		
		

		<tr>
			<td colspan=2>
				<input name="submit" id="submit" type="submit" value=" submit"/>				
			</td>
		</tr>
		
	</table>
	<table>

</form>
		<form action=Dashboard.jsp method="get">
		<table>
		<tr>
			<td colspan=2>
				<input type="submit" name="submitted" value="cancel">				
			</td>
		</tr>
		</table>
	</form>
	<div class="errMsg">${errorMessage}</div>
	


</body>
</html>