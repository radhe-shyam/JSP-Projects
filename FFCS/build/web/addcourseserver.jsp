<%-- 
    Document   : addcourseserver
    Created on : Jul 1, 2014, 6:56:02 AM
    Author     : Administrator
--%>

<%@page import="java.sql.*, java.util.*"%>
<jsp:include page="conn.jsp" />
<%
    ((DriverManager.getConnection("jdbc:mysql://localhost/ffcs", "root", "")).createStatement()).executeUpdate("insert into course values('" + request.getParameter("cid") + "','" +request.getParameter("cname") + "','" + request.getParameter("fname") + "'," + request.getParameter("cdur") + ",'" + request.getParameter("desc") + "')" );
    out.println("<script>alert(\"Course added successfully.\"); window.location=\"showcourses.jsp\";</script>"); 
    
%>
    
