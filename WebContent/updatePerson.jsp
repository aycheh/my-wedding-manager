<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<h3>${Msg}</h3>
<h4>${CREATING_PARAM_MSG}</>
<!--h1 align="Right">  ${שםמשתש} ${welcaomeMsg}  </h1-->

<div align="Right"> 
	         <form action="Logout" method="get">
     			  <p style="clear:both">
                  <input class="white_button" name="commit" type="submit" value="Logout" />             
                  <div class="errMsg">${errorMessage}
                  
                  </div>
             </form>
</div>
<title>Update Person</title>
</head>
<body background="images/bg1.jpg">

<div>
<table border="1">
     
 <tr>
     <tr>
     <form action="/GetUser" method="get">
     	<th><input class="white_button" name="commit" type="submit" value="getUser" /></th>
     	</form>
     	
     	 <form action="Updateuser.jsp" method="get">    	
     	<th><input class="white_button" name="commit" type="submit" value=" Updateuser" /> </th>
     	</form>
 
     	
     	<form action="CreatePerson.jsp" method="get">
     	<th><input class="white_button" name="commit" type="submit" value=" CreatePerson" /></th>
     	</form>
     	
     	<form action="GetAllPersons_and_RedirectToUpdatePersonJSP" method="get">
     	<th><input class="white_button" name="commit" type="submit" value=" Update Person" /></th>
     	</form>
     	
     	<form action="CreatePersonAndCreateReceivedPayment.jsp" method="get">
     	<th><input class="white_button" name="commit" type="submit" value=" CreatePersonAndCreateReceivedPayment" /></th>
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
 <!-- ====================================================================================== -->
 <div>
<table>
<form action="UpdatePerson" method="get" onsubmit="return validateLogin()">
	<table id="UpdatePerson">

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
				<div class="errMsg">${errorMessage}</div>				
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
        <th class="border">payment type</th>
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


</body>
</html>