<%-- 
    Document   : faculty_make_paper
    Created on : Jul 2, 2014, 1:14:41 AM
    Author     : Administrator
--%>

<%@page import="java.sql.*"%>
<jsp:include page="conn.jsp" />
<%
                int result = 0;
                ResultSet rs = ((DriverManager.getConnection("jdbc:mysql://localhost/ffcs", "root", "")).createStatement()).executeQuery("Select ans from question where course = '" + request.getParameter("cc")+ "'");
                rs.next();
                if(rs.getString(1).equals(request.getParameter("q1")))
                    result += 10;
                rs.next();
                if(rs.getString(1).equals(request.getParameter("q2")))
                    result += 10;
                rs.next();
                if(rs.getString(1).equals(request.getParameter("q3")))
                    result += 10;
                rs.next();
                if(rs.getString(1).equals(request.getParameter("q4")))
                    result += 10;
                rs.next();
                if(rs.getString(1).equals(request.getParameter("q5")))
                    result += 10;
                rs.next();
                if(rs.getString(1).equals(request.getParameter("q6")))
                    result += 10;
                rs.next();
                if(rs.getString(1).equals(request.getParameter("q7")))
                    result += 10;
                rs.next();
                if(rs.getString(1).equals(request.getParameter("q8")))
                    result += 10;
                rs.next();
                if(rs.getString(1).equals(request.getParameter("q9")))
                    result += 10;
                rs.next();
                if(rs.getString(1).equals(request.getParameter("q10")))
                    result += 10;
                ((DriverManager.getConnection("jdbc:mysql://localhost/ffcs", "root", "")).createStatement()).executeUpdate("update scdetails set result = " + result + " where cid = '" + request.getParameter("cc")+ "' and regno = '" + request.getParameter("rn")+ "'");
                out.println("<script>alert(\"Exam Completed. See your result in Registered Courses option.\"); window.location=\"showcourses.jsp?rn=" + request.getParameter("rn") + "\";</script>");
%>
