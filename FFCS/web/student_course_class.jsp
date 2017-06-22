<%-- 
    Document   : student_course_class
    Created on : Jul 2, 2014, 11:55:00 AM
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
    <center>    
    <h3>Classes for <% out.print( request.getParameter("cc") );%></h3>
    <%@page import="java.sql.*, java.util.*"%>
    <jsp:include page="conn.jsp" />
    <%
        int i = 1;
        ResultSet rs = ((DriverManager.getConnection("jdbc:mysql://localhost/ffcs", "root", "")).createStatement()).executeQuery("Select dura from course where cid = '" + request.getParameter("cc")+ "'");
        rs.next();
        int k = rs.getInt(1);
        rs = ((DriverManager.getConnection("jdbc:mysql://localhost/ffcs", "root", "")).createStatement()).executeQuery("select * from classdata where course ='" + request.getParameter("cc") + "'" );
        while(i<=k)
        {
                        rs.next();
                        out.print("<div style=\"border: green solid 1px; width: 600px;\">");
                        out.print("<div align=\"left\"><u>Class #" + i + "</u></div>");
                        out.print("<textarea cols=70 rows=5 style=\"border:none\">"+rs.getObject(1)+"</textarea>");
                        out.print("</div><br>");
                        i++;
        }
        rs = ((DriverManager.getConnection("jdbc:mysql://localhost/ffcs", "root", "")).createStatement()).executeQuery("select attendence from scdetails where cid ='" + request.getParameter("cc") + "' and regno='" + request.getParameter("rn") + "'" );
        rs.next();
        k = rs.getInt(1);
        k++;
        ((DriverManager.getConnection("jdbc:mysql://localhost/ffcs", "root", "")).createStatement()).executeUpdate("update scdetails set attendence = " + k + " where cid ='" + request.getParameter("cc") + "' and regno='" + request.getParameter("rn") + "'" );
    %>     
    </body>
</html>
