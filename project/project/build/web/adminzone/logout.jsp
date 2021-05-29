<%-- 
    Document   : logout
    Created on : Jan 21, 2021, 12:12:22 PM
    Author     : swarnim
--%>
<%
    
    session.invalidate();
    

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGOUT</title>
        <script>
            function logout()
            {
                window.history.forward();   
                window.setTimeout(window.location.href='../adminlogin.jsp',2000);
            }
        </script>
    </head>
    <body onload="logout()" bgcolor="black">
     
    </body>
</html>
