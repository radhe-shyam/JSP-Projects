<%-- 
    Document   : faculty_make_paperserver
    Created on : Jul 2, 2014, 6:01:01 AM
    Author     : Administrator
--%>

<%@page import="java.sql.*, java.util.*"%>
<jsp:include page="conn.jsp" />
<%
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/ffcs", "root", "");
    Statement st = conn.createStatement();
    st.executeUpdate("delete from question where course = '" + request.getParameter("cc") + "'");
    st.executeUpdate("insert into question values('"+ request.getParameter("q1") + "','" + request.getParameter("a1") +"','"+ request.getParameter("b1") +"','"+ request.getParameter("c1") +"','"+ request.getParameter("d1") +"','"+ request.getParameter("ca1") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into question values('"+ request.getParameter("q2") + "','" + request.getParameter("a2") +"','"+ request.getParameter("b2") +"','"+ request.getParameter("c2") +"','"+ request.getParameter("d2") +"','"+ request.getParameter("ca2") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into question values('"+ request.getParameter("q3") + "','" + request.getParameter("a3") +"','"+ request.getParameter("b3") +"','"+ request.getParameter("c3") +"','"+ request.getParameter("d3") +"','"+ request.getParameter("ca3") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into question values('"+ request.getParameter("q4") + "','" + request.getParameter("a4") +"','"+ request.getParameter("b4") +"','"+ request.getParameter("c4") +"','"+ request.getParameter("d4") +"','"+ request.getParameter("ca4") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into question values('"+ request.getParameter("q5") + "','" + request.getParameter("a5") +"','"+ request.getParameter("b5") +"','"+ request.getParameter("c5") +"','"+ request.getParameter("d5") +"','"+ request.getParameter("ca5") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into question values('"+ request.getParameter("q6") + "','" + request.getParameter("a6") +"','"+ request.getParameter("b6") +"','"+ request.getParameter("c6") +"','"+ request.getParameter("d6") +"','"+ request.getParameter("ca6") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into question values('"+ request.getParameter("q7") + "','" + request.getParameter("a7") +"','"+ request.getParameter("b7") +"','"+ request.getParameter("c7") +"','"+ request.getParameter("d7") +"','"+ request.getParameter("ca7") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into question values('"+ request.getParameter("q8") + "','" + request.getParameter("a8") +"','"+ request.getParameter("b8") +"','"+ request.getParameter("c8") +"','"+ request.getParameter("d8") +"','"+ request.getParameter("ca8") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into question values('"+ request.getParameter("q9") + "','" + request.getParameter("a9") +"','"+ request.getParameter("b9") +"','"+ request.getParameter("c9") +"','"+ request.getParameter("d9") +"','"+ request.getParameter("ca9") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into question values('"+ request.getParameter("q10") + "','" + request.getParameter("a10") +"','"+ request.getParameter("b10") +"','"+ request.getParameter("c10") +"','"+ request.getParameter("d10") +"','"+ request.getParameter("ca10") + "','" + request.getParameter("cc") +"')");
    out.println("<script>alert(\"Questions added successfully.\"); window.location=\"showcourses.jsp\";</script>"); 
    
%>
    
