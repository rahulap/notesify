<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@page import="java.util.*" session="true"%>
<html>
    <head>
        <title>Notesify</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" type="text/css" href="custom.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
		<script>
		function Logout()
		{
			window.location="Logout.jsp";
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
            function getNotes()
            {
                location.href="getNotes.jsp";
            }
            function search()
            {
                location.href="getSearch.jsp";
            }
            function getUpdates()
            {
                window.location="getUpdates.jsp";
            }
        </script>
    </head>
    <body background="images/bgtxt_blue.jpg">
	<div id="toptext" align="right">Welcome, <%=session.getAttribute("FirstName")%>  <input  type="submit" value="Logout" id="submit" onClick="Logout()"/></div>
        <center>
        <br>
        <br>
        <img src ="images/title_new.png"><br><br><br><br><br><br>
        <div><input type="submit" id="notesify_main" value="Get Notes"onClick="getNotes()"><br><br><br></div>
        <div><input type="submit" id="notesify_main" value="Search" onClick="search()"><br><br><br></div>
        <div><input type="submit" id="notesify_main" value="Updates" onClick="getUpdates()"><br></div>
        </center>
    </body>
</html>
