<%-- 
    Document   : IP_Store.jsp
    Created on : 28 Mar, 2015, 7:31:36 PM
    Author     : Rahulap
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h4>Your IP address is <%= request.getRemoteAddr()%></h4><br>
        <h4>Your Gateway is <%= request.getHeader("VIA")%></h4><br>
        <h4>Your IP is<%=request.getHeader("X-FORWARDED-FOR")%></h4>
    </body>
</html>
