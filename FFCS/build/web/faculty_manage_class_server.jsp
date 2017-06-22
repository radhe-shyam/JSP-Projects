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
    st.executeUpdate("delete from classdata where course = '" + request.getParameter("cc") + "'");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q1") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q2") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q3") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q4") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q5") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q6") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q7") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q8") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q9") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q10") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q11") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q12") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q13") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q14") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q15") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q16") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q17") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q18") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q19") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q20") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q21") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q22") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q23") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q24") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q25") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q26") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q27") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q28") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q29") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q30") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q31") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q32") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q33") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q34") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q35") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q36") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q37") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q38") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q39") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q40") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q41") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q42") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q43") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q44") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q45") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q46") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q47") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q48") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q49") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q50") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q51") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q52") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q53") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q54") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q55") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q56") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q57") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q58") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q59") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q60") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q61") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q62") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q63") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q64") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q65") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q66") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q67") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q68") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q69") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q70") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q71") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q72") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q73") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q74") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q75") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q76") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q77") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q78") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q79") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q80") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q81") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q82") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q83") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q84") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q85") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q86") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q87") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q88") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q89") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q90") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q91") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q92") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q93") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q94") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q95") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q96") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q97") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q98") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q99") + "','" + request.getParameter("cc") +"')");
    st.executeUpdate("insert into classdata values('"+ request.getParameter("q100") + "','" + request.getParameter("cc") +"')");
    out.println("<script>alert(\"Class Data added successfully.\"); window.location=\"showcourses.jsp\";</script>"); 
    
%>
    
