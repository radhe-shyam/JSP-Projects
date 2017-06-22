<%-- 
    Document   : admin_home
    Created on : Jun 29, 2014, 5:40:18 AM
    Author     : Administrator
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="conn.jsp" />
        <%
            ResultSet rs = ((DriverManager.getConnection("jdbc:mysql://localhost/ffcs", "root", "")).createStatement()).executeQuery("select * from user where uname='" + request.getParameter("uname")+"' and psw = '" + request.getParameter("psw") + "'" );
            if(!rs.next())
                out.println("<script>alert(\"Incorrect UserName or Password\");window.location=\"index.jsp\";</script>");
        %>    
        <jsp:include page="header.jsp"/>
        <jsp:include page="admin_toolbar.jsp" />
        <iframe name="cont" width="100%" height="400" style="border: none;" src="showcourses.jsp"></iframe>
        <jsp:include page="footer.jsp"/>
    </body>
</html>
