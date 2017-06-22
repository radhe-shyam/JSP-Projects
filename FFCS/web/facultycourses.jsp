<%-- 
    Document   : facultycourses
    Created on : Jul 1, 2014, 10:54:32 PM
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
        <h1>Alloted Courses</h1>
        <%@page import="java.sql.*"%>
        <jsp:include page="conn.jsp" />
        <%
            ResultSet rs = ((DriverManager.getConnection("jdbc:mysql://localhost/ffcs", "root", "")).createStatement()).executeQuery("Select * from course where faculty = '" + request.getParameter("fname") + "'");
            while(rs.next())
            {
                    out.print("<div style=\"border:green solid 1px; width:600px; \"><table style=\"width:inherit; \" border=\"0\"><tr><td colspan=\"2\"><b>Course Code : </b>" + rs.getObject(1) + "</td><td><b>Course Duration :</b>" + rs.getObject(4) +  "days</td></tr><tr><td colspan=\"2\"><b>Course Title : </b>" + rs.getObject(2) + "</td></tr><tr><td colspan=\"2\"><b>Course Faculty : </b>" + rs.getObject(3) + "</td></tr><tr><td colspan=\"3\"><dl><dh><b>Description:</b></dh><dd>" + rs.getObject(5) + "</dd></dl></td></tr><tr align=\"center\"><td><a href=\"faculty_course_details.jsp?cc=" + rs.getObject(1)+ "\">See Student Details</a><td><a href=\"faculty_manage_class.jsp?cc="+rs.getObject(1)+ "\">Manage Classes</a><td><a href=\"faculty_make_paper.jsp?cc="+rs.getObject(1)+ "\">Make Question Paper</a></tr></table></div><br>");
                    
            }
        %>
        
    </body>
</html>
