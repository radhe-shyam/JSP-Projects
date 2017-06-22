<%-- 
    Document   : student_reg_courses
    Created on : Jul 2, 2014, 10:57:48 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <center>
        <div style="border: green solid 1px; width: 600px;">
            <table border="0" style="width:inherit;">
                <th>Course<th>Result<th>Attendence<th colspan="3">More..</th>
    <%@page import="java.sql.*, java.util.*"%>
    <jsp:include page="conn.jsp" />
    <%
        ResultSet rs = ((DriverManager.getConnection("jdbc:mysql://localhost/ffcs", "root", "")).createStatement()).executeQuery("select * from scdetails where regno ='" + request.getParameter("rn") + "'" );
        while(rs.next())
        {
                        ResultSet rs1 = ((DriverManager.getConnection("jdbc:mysql://localhost/ffcs", "root", "")).createStatement()).executeQuery("Select dura from course where cid='" + rs.getObject(2) + "'");
                        rs1.next();
                        int a = (rs.getInt(3)*100)/rs1.getInt(1);
                        out.print("<tr align=\"center\"><td>" + rs.getObject(2) + "<td>" + rs.getObject(4) + "<td>" + a +"%<td><a href=\"student_course_class.jsp?rn=" + request.getParameter("rn") + "&cc=" + rs.getObject(2) + "\">Go To Class</a><td><a href=\"student_exam.jsp?rn=" + request.getParameter("rn") + "&cc=" + rs.getObject(2) + "\">Exam</a><td><a href=\"student_unregister.jsp?rn=" + request.getParameter("rn") + "&cc=" + rs.getObject(2) + "\">Drop the course</a></td></tr>");   
        }
    %>
            </table>
        </div>
</html>
