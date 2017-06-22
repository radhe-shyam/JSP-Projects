<%-- 
    Document   : index
    Created on : Jun 23, 2014, 10:24:57 AM
    Author     : Administrator
--%>

<%@ page import="java.io.*,java.util.Locale" %>
<%@ page import="javax.servlet.*,javax.servlet.http.* "%>
<%
   //Get the client's Locale
   Locale locale = request.getLocale();
   String language = locale.getLanguage();
   String country = locale.getCountry();
%>
<html>
<head>
<title>Detecting Locale</title>
</head>
<body>
<h1>
<% 
   out.println("Local Language is " + language  + "<br />");
   out.println("Country name is " + country   + "<br />");
%>
</h1>
</body>
</html>