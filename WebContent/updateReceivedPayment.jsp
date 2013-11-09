<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>updateReceivedPayment</title>
</head>
<body background="images/bg4.jpg">

<div>
<table border="1">
     
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
     	
     	<form action="updateReceivedPayment.jsp" method="get">
     	<th><input class="white_button" name="commit" type="submit" value=" updateReceivedPayment" /></th>
     	</form>
     	
     	
     	
     	<form action="getAllReceivedPayment.jsp" method="get">
     	<th><input class="white_button" name="commit" type="submit" value=" getAllReceivedPayment" /></th>
     </form>
     
     <form action="Dashboard.jsp" method="get">
     	<th><input class="white_button" name="commit" type="submit" value=" Dashboard" /></th>
     </form>
     	<form action="GetAllUserPersons" method="get">
     	<th><input class="white_button" name="commit" type="submit" value="Get all persons" /></th>
     </form>
     </tr>     
 </table>

</div>


</body>
</html>