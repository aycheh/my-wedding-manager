<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<h3>${Msg}</h3>
<!--h1 align="Right">  ${שםמשתש} ${welcaomeMsg}  </h1-->

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
     <form action="getUser.jsp" method="get">
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
     	
     	<form action="updateReceivedPayment.jsp" method="get">
     	<th><input class="white_button" name="commit" type="submit" value=" updateReceivedPayment" /></th>
     	</form>
     	
     	
     	
     	<form action="getAllReceivedPayment.jsp" method="get">
     	<th><input class="white_button" name="commit" type="submit" value=" getAllReceivedPayment" /></th>
     </form>
     
     <form action="---------" method="get">
     	<th><input class="white_button" name="commit" type="submit" value=" --------" /></th>
     </form>
     <form action="----------" method="get">
     	<th><input class="white_button" name="commit" type="submit" value=" -------" /></th>
     	</form>
     </tr>     
 </table>

</div>


{ReceivedPayment}
<div>
<table border="1">
    <tr>
        <th colspan="10" style="background-color:#7c2f97;">Expenses</th>
    </tr>
    <tr style="background-color:#f0a64e;">
    	<th class="border">id</th>
        <th class="border">user id</th>
        <th class="border">person id</th>
        <th class="border">received payment</th>
        <th class="border">payback payment</th>
        <th class="border">payment type</th>
        <th class="border">event Type</th>
        <th class="border">payback payment eventType</th>
        <th class="border">event Address</th>
        <th class="border">date</th>
        
    </tr>
    <c:forEach var="ReceivedPayment" items="${ReceivedPayment}">
    <tr>
<td>${ReceivedPayment.id}</td>   
<td>${ReceivedPayment.user_id}</td>
<td>${ReceivedPayment.person_id}</td>
<td>${ReceivedPayment.received_payment}</td>
<td>${ReceivedPayment.payback_payment}</td>
<td>${ReceivedPayment.payment_type}</td>
<td>${ReceivedPayment.eventType}</td>
<td>${ReceivedPayment.payback_payment_eventType}</td>
<td>${ReceivedPayment.eventAddress}</td>
<td>${ReceivedPayment.date}</td>
</tr>
 </c:forEach>
</table> 
</div>


</body>
</html>