<%-- 
    Document   : adduser
    Created on : Jun 29, 2014, 10:57:23 AM
    Author     : Administrator
--%>

<%@page import="java.sql.*, java.util.*"%>
<jsp:include page="conn.jsp" />
<%
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/ffcs", "root", "");
    Statement st = conn.createStatement();
    ResultSet rs;
    int y = (new java.util.Date()).getYear() - 100;
    if(request.getParameter("enr").equals("student")) 
    {
        rs = st.executeQuery("Select count(*) from student where regno like '" + y + "%'");
        rs.next();
        String r = y + "RDJ";
        r = String.format("%s%04d",r,rs.getInt(1)+1);
        out.println("<h1>Registration No : " + r + "</h1>");
        rs.close();
        st.executeUpdate("insert into student values('"+ request.getParameter("name")+ "','','" + request.getParameter("g") + "','','" + r + "','" + request.getParameter("email") + "','"+ request.getParameter("psw")+ "')");
        out.println("<script>alert(\"You are registered successfully. Please note down your Registration number, it will be helpfull for login.\"); window.location=\"index.jsp\";</script>"); 
    }
    else
    {
        rs = st.executeQuery("Select count(*) from faculty");
        rs.next();
        String r = String.format("RDJ%04d",rs.getInt(1)+1);
        out.println("<h1>Faculty ID No : " + r + "</h1>");
        rs.close();
        st.executeUpdate("insert into faculty values('"+ request.getParameter("name")+ "','','" + request.getParameter("g") + "','','" + r + "','" + request.getParameter("email") + "','"+ request.getParameter("psw")+ "')");
            out.println("<script>alert(\"You are registered successfully. Please note down your Faculty ID number, it will be helpfull for login.\"); window.location=\"index.jsp\";</script>"); 
    }   
    
    
%>
