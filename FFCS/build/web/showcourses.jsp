<%-- 
    Document   : showcourses
    Created on : Jul 1, 2014, 7:18:40 AM
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
        <h1>Recent Courses</h1>
        <%@page import="java.sql.*"%>
        <jsp:include page="conn.jsp" />
        <%  
            ResultSet rs = ((DriverManager.getConnection("jdbc:mysql://localhost/ffcs", "root", "")).createStatement()).executeQuery("Select * from course");
            while(rs.next())
            {
                    if(request.getParameter("rn") != null)
                    {
                       int i = 0;
                       ResultSet rs1 = ((DriverManager.getConnection("jdbc:mysql://localhost/ffcs", "root", "")).createStatement()).executeQuery("Select cid from scdetails where regno='" + request.getParameter("rn") + "'"); 
                       while(rs1.next())
                       {
                           if(rs.getString(1).equals(rs1.getString(1)))
                           {
                               i = 1;
                               break;
                           }
                       }
                       if(i == 0)
                           out.print("<div style=\"border:green solid 1px; width:600px; \"><table style=\"width:inherit; \" border=\"0\"><tr><td><b>Course Code : </b>" + rs.getObject(1) + "</td><td><b>Course Duration :</b>" + rs.getObject(4) +  "days</td></tr><tr><td colspan=\"2\"><b>Course Title : </b>" + rs.getObject(2) + "</td></tr><tr><td colspan=\"2\"><b>Course Faculty : </b>" + rs.getObject(3) + "</td></tr><tr><td colspan=\"2\"><dl><dh><b>Description:</b></dh><dd>" + rs.getObject(5) + "</dd></dl></td></tr><tr align=\"center\"><td colspan=2><a href=\"student_register_course_server.jsp?rn=" + request.getParameter("rn") + "&cc=" + rs.getObject(1) + "\">Register Course</a></tr></table></div><br>");
                       continue;
                    }
                    out.print("<div style=\"border:green solid 1px; width:600px; \"><table style=\"width:inherit; \" border=\"0\"><tr><td><b>Course Code : </b>" + rs.getObject(1) + "</td><td><b>Course Duration :</b>" + rs.getObject(4) +  "days</td></tr><tr><td colspan=\"2\"><b>Course Title : </b>" + rs.getObject(2) + "</td></tr><tr><td colspan=\"2\"><b>Course Faculty : </b>" + rs.getObject(3) + "</td></tr><tr><td colspan=\"2\"><dl><dh><b>Description:</b></dh><dd>" + rs.getObject(5) + "</dd></dl></td></tr></table></div><br>");
            }
        %>
    </body>
</html>
