<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
<!--h1 align="Right">  ${שםמשתש} ${welcaomeMsg}  </h1-->

<div align="Right"> 
	                     
                  <div class="errMsg">${errorMessage}
                  
                  </div>
             
</div>
<title>getAllReceivedPayment</title>
  <link href="css/style.css" rel="stylesheet" type="text/css">
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
<h3>${Msg}</h3>
<div>
<table border="1">
    <tr>
        <th colspan="15" style="background-color:#7c2f97;">Expenses</th>
    </tr>
    <tr style="background-color:#f0a64e;">
    
       
        <th class="border">Person Name</th>
        <th class="border">Person Last Name</th>
        
        <th class="border">received payment</th>
        <th class="border">event Type</th>
        <th class="border">payment type</th>
        <th class="border">payback payment</th>
        <th class="border">payback payment eventType</th>
        <th class="border">payback payment event Address</th>
        <th class="border">payback payment date</th>
         <th class="border">comment</th>
        
        
    </tr>
    <c:forEach var="ReceivedPayment" items="${ReceivedPayment}">
    <tr>

<td>${ReceivedPayment.person_firstName}</td>
<td>${ReceivedPayment.person_lastName}</td>

<td>${ReceivedPayment.received_payment}</td>
<td>${ReceivedPayment.eventType}</td>
<td>${ReceivedPayment.payment_type}</td>
<td>${ReceivedPayment.payback_payment}</td>
<td>${ReceivedPayment.payback_payment_eventType}</td>
<td>${ReceivedPayment.eventAddress}</td>
<td>${ReceivedPayment.date}</td>
<td>${ReceivedPayment.comment}</td>
</tr>
 </c:forEach>
</table> 
<script type="text/javascript">
</script>
<form>
<input type="button" value="Print" onclick="window.print()" />
</form>
</div>
</div>

</div>
</div>

----
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
     <form action="Dashboard.jsp" method="get">
     	<th><input class="white_button" name="commit" type="submit" value=" Dashboard" /></th>
     </form>
  <li><a href="index.html#">Link goes here</a></li>
  <li><a href="index.html#">Link goes here</a></li>
  <li><a href="index.html#">Link goes here</a></li>


</ul>
</div>


</body>
</html>