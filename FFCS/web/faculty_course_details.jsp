<%-- 
    Document   : faculty_course_details
    Created on : Jul 2, 2014, 1:10:53 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><center>
        <div style="border: green solid 1px; width: 600px;">
            <table border="0" style="width:inherit;">
                <th>Students<th>Result<th>Attendence</th>
                <%@page import="java.sql.*"%>
                <jsp:include page="conn.jsp" />
                <%
                ResultSet rs = ((DriverManager.getConnection("jdbc:mysql://localhost/ffcs", "root", "")).createStatement()).executeQuery("Select dura from course where cid='" + request.getParameter("cc") + "'");
                rs.next();
                int t = rs.getInt(1);
                rs = ((DriverManager.getConnection("jdbc:mysql://localhost/ffcs", "root", "")).createStatement()).executeQuery("Select * from scdetails where cid='" + request.getParameter("cc") + "'");
                while(rs.next())
                    {
                        int a = (rs.getInt(3)*100)/t;
                        out.print("<tr align=\"center\"><td>" + rs.getObject(1) + "<td>" + rs.getObject(4) + "<td>" + a +"%</td></tr>");
                    }
                %>
            </table>
        </div>
    </body>
</html>
