<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@page import="java.util.*" session="true"%>
<html>
    <head>
        <title>Notesify-Get Notes</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" type="text/css" href="custom.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script>
		<% String logfound=(String)session.getAttribute("log-found");
			if(logfound.equals(null) || logfound.equals("false"))
			{%>
				window.location="index.html";
			<%}%>
		</script>
     </head>
    <body background="images/bgtxt_blue.jpg">
        <center>
        <br>
        <br>
        <img src ="images/title_new.png"><br><br><br><br>
        <div id="toptext">Enter Reference Number</div><br>
        <form name="Notes" action="display_Notes.jsp">
        <input type="text" maxlength=5 placeholder="Enter Ref.No" id="notinp" name="notinp"  align="center"/><br><br>
        <input  type="submit" value="GET NOTES" id="submit" name="submit" onClick="test()"/>
        </form>
        </center>
    </body>
</html>
