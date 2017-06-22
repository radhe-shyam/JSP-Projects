<%-- 
    Document   : student_unregister
    Created on : Jul 2, 2014, 11:46:55 AM
    Author     : Administrator
--%>

<%@page import="java.sql.*, java.util.*"%>
<jsp:include page="conn.jsp" />
<%
    ((DriverManager.getConnection("jdbc:mysql://localhost/ffcs", "root", "")).createStatement()).executeUpdate("delete from scdetails where regno = '" + request.getParameter("rn") + "' and cid = '" +request.getParameter("cc") + "'" );
    out.println("<script>alert(\"Course Unregistered successfully.\"); window.location=\"student_registered_courses.jsp?rn=" + request.getParameter("rn") + "\";</script>"); 
    
%>
