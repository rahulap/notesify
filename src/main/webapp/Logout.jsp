<%-- 
    Document   : IP_Store.jsp
    Created on : 28 Mar, 2015, 7:31:36 PM
    Author     : Rahulap
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" session="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body>
        <h4>Your IP address is <%= request.getRemoteAddr()%></h4><br>
        <h4>Your Gateway is <%= request.getHeader("VIA")%></h4><br>
        <h4>Your IP is<%=request.getHeader("X-FORWARDED-FOR")%></h4><br>
        <h4>Your Username is<%=session.getAttribute("username")%></h4><br>
        <h4>Your Password is<%=session.getAttribute("password")%></h4><br>
        <%String s=(String)session.getAttribute("log-found"); %>
        <h4>Logged in? <%=s%></h4><br>
        <%session.invalidate();%>
	<script>
		window.location="index.html"
	</script>      
    </body>
</html>
