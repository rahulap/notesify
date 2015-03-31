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
        <title>Logging out</title>
		<%session.invalidate();%>
		<script>
			window.location="index.jsp";
		</script>   
    </head>       
</html>
