<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@page import="java.util.*" session="true"%>

<html>
    <head>
        <title>Notesify-Search</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" type="text/css" href="custom.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
		<script>
		function Logout()
		{
			window.location="Logout.jsp";
		}
		function back()
		{
			window.location="main.jsp";
		}
		<% String logfound=null;
			try
			{
			logfound=(String)session.getAttribute("log-found");
			}
			catch(Exception e)
			{
					session.setAttribute("log-found","false");
			}
			if(logfound.equals(null) || logfound.equals("false"))
			{%>
				window.location="index.jsp";
			<%}%>
		</script>
     </head>
    <body background="images/bgtxt_blue.jpg">
	<input  type="submit" value="Back" id="submit" onClick="back()"/>
	<div id="toptext" align="right">Welcome, <%=session.getAttribute("FirstName")%>  <input  type="submit" value="Logout" id="submit" onClick="Logout()"/></div>
        <center>
        <br>
        <br>
        <img src ="images/title_new.png"><br><br><br><br>
        <div id="toptext">Enter a Keyword</div><br>
        <form name="Notes" action="display_Search.jsp">
        <input type="text"  id="notinp" name="notinp"  align="center"/><br><br>
        <input  type="submit" value="SEARCH" id="submit" name="submit"/>
        </form>
        </center>
    </body>
</html>
