<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Notesify</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" type="text/css" href="custom.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script>
	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-61196615-1', 'auto');
  ga('send', 'pageview');

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
