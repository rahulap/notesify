<%-- 
    Document   : New_User_Update
    Created on : 31 Mar, 2015, 1:09:57 PM
    Author     : Rahulap
--%>

<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*" session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Updating</title>
        <script>
		<% String logfound=null;
			try
			{
			logfound=(String)session.getAttribute("log-found");
                 if(logfound==null)
                 {
                     session.setAttribute("log-found","false");
                     logfound="false";
                 }
                 
			}	catch(Exception e)
			{
					session.setAttribute("log-found","false");
			}
			if(logfound.equals(null) || logfound.equals("false"))
			{%>
				window.location="index.jsp";
			<%}%>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            String username=null,password=null;
			   boolean flag=false;
            boolean found = false;
            session.setAttribute("log-found","false");
			String from_user = (String)session.getAttribute("username");
            String to_user = request.getParameter("to");
            String subject = request.getParameter("sub");
            String message = request.getParameter("msg");
			//Hello
			if(username!=null)
			if(to_user.equals("username"))
			{
				%>
					window.alert("You are sending to yourself. Message not sent.");
					window.location="compose.jsp";
				<%
			}
            try{
                
            Connection conn = DriverManager.getConnection("jdbc:mysql://127.5.254.130:3306/main","adminneUhFbw","friendship96");
            Statement stmt = conn.createStatement();
            String retrieve,notesify;
			java.util.Date now = new java.util.Date();
            retrieve = "insert into MessageDetails values(\'"+from_user +"\',\'"+to_user +"\',\'"+subject +"\',\'"+message +"\',\'"+now.toString() +"\',\'NA\',\'WAIT\')";
            stmt.executeUpdate(retrieve);
             stmt.close();
             conn.close();
            }
            catch(Exception e)
            {
				flag = true;
                %>
				window.alert("Sorry. Username doesn't exist.");
				window.location="compose.jsp";
				<%
            }
			if(!flag)
			{
            
    %>
            window.alert("Message Sent.");
            window.location="main.jsp";
			<%
			}
			%>
            </script>
            </head>
            <body>
                
    </body>
</html>
