<%-- 
    Document   : index
    Created on : Jun 16, 2014, 11:27:46 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        out.println((new java.sql.Time(System.currentTimeMillis())).toString());    
        
        %>
    </body>
</html>
