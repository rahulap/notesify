<%@page import="java.io.IOException"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.URLConnection"%>
<%@page import="java.net.URL"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Notesify</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" type="text/css" href="custom.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <%
                    String finaltext = "",result="",getp="",f="";
        try {
            
            Calendar now = Calendar.getInstance();
            String tempurl="http://ibatchnotes.blogspot.com/2015/03/search.html";
            URL url = new URL(tempurl);
            URLConnection con = url.openConnection();
            BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream()));
             String line;
                boolean temp=false,hashbool=false;
                result = request.getParameter("notinp");
                boolean breaker = false;
                boolean id = false,parse=false;
                result = "#"+result.toLowerCase();
                //read content of the file line by line
                while((line=br.readLine())!=null){
                    if(temp)
                    {
                        f = f + line;
                    }
                    if(line.contains("<div id=\"hashes\">"))
                        hashbool=true;
                    if(line.contains(result)&&hashbool) {
                        temp = true;
                    }
                    if(line.contains("</div>") && hashbool) {
                        temp = false;
                        hashbool=false;
                    }

                }
                if(f.equals(""))
                       f="The Keyword did not match any document. Please try again with a different Keyword.";
            }catch (Exception e) {
                e.printStackTrace();
                //close dialog if error occurs
               
            }

        

         %>
        </head>
    <body background="images/bgtxt_blue.jpg">
        <center>
        <br>
        <br>
        <img src ="images/title_new.png"><br><br><br><br>
        </center>
         <div id="boxnote"><%=f%></div>
     </body>
</html>