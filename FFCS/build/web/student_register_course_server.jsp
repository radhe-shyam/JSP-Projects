<%-- 
    Document   : student_register_course_server
    Created on : Jul 2, 2014, 9:09:33 AM
    Author     : Administrator
--%>

<%@page import="java.sql.*, java.util.*"%>
<jsp:include page="conn.jsp" />
<%
    ((DriverManager.getConnection("jdbc:mysql://localhost/ffcs", "root", "")).createStatement()).executeUpdate("insert into scdetails values('" + request.getParameter("rn") + "','" +request.getParameter("cc") + "',0,null)" );
    out.println("<script>alert(\"Course Registered successfully.\"); window.location=\"showcourses.jsp?rn=" + request.getParameter("rn") + "\";</script>"); 
    
%>
