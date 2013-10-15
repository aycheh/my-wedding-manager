<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session = "false" %>
<!DOCTYPE html>

<html>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/style.css" rel="stylesheet" type="text/css">
<script src="http://code.jquery.com/jquery-1.9.1.js"></script> 

<title>Wedding manager</title>
<table>
<h2 align="center">Welcome To Wedding Manager</h2><br>
<%! int fontSize; %> 
<%for ( fontSize = 1; fontSize <= 2; fontSize++){ %>
   <font color="green" size="<%= fontSize %>">
    Welcome To Wedding Manager
   </font><br />
<%}%>
</table>
<p>
   Today's date: <%= (new java.util.Date()).toLocaleString()%>
</p>


<div align="Right"> 
<form action="LogIng.jsp">
    <input type="submit" value="Loging">   
</form>
<button onclick="location.href='Sign_up.jsp'"> Signup	</button>
</div>

<button onclick="location.href='LogIng.jsp'">
     כניסה למערכת	</button>
     
</head>
<p>
<h2>Why Use Wedding Manager program? </h2>

<body background="images/bg1.jpg">

<div>
<table border="0">
<tr>
<td><p>The average Israely / Ethiopian wedding costs a lot 
		and takes a long time to plan. 
       Planning a wedding can be one of the most joyful events in life, but also can be among the most stressful.
       There is so much to do and remember, but little time to get it all done.</p>
<p>    When planning a wedding, the bride, groom and their families must take many variables into account 
       including who to invite, how much to spend and where everything will take place. 
       However, compared to the big picture, these are the easy questions. 
       After those decisions are made, couples need to track RSVPs, gifts,
       accommodations, thank you notes, lists of tasks and payments.</p>

<p>    Wedding software takes all variables into account and consolidates them into one easy-to-use program.

       One thing couples might keep in mind when choosing wedding planning software is how easy it is to use and how updated its interface is.
       This program comes to allow you very easy way to use and very user friendly.
       We will add some necessary features and updates in the future.
      
       <h3>Using this program allow you:</h3>    
       <ol>
		<li>List of invited.</li>
		<li>Accepted or declined invitation list.</li>
		<li>Guests gave you money? Arrange it as incoming(money).</li>
		</ol>

       <p>Thank you for using this program.</p>
       Hello World!<br/>
       
       
<%
out.println("Your IP address is " + request.getRemoteAddr());
%> 




</p></td>
<td><img src="images/wedding_flowers_background.jpg" name="home_img" border="0" id="home_img" style="height: 367px; width: 500px; "/></td>
</tr>
</table>

<button onclick="location.href='Sign_up.jsp'"> Signup	</button>
</div> 
</html>



</body>
