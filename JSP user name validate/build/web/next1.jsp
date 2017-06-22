<%-- 
    Document   : next1
    Created on : Jun 19, 2014, 3:30:49 AM
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
        <%
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection conn;
            conn = java.sql.DriverManager.getConnection("jdbc:mysql://localhost/student", "root", "root");
            java.sql.Statement stmt = conn.createStatement();
            if(request.getParameter("ch").equals("add"))
            {
                stmt.execute("insert into result values('" + request.getParameter("rgn") + "','" + request.getParameter("nme") + "'," + request.getParameter("p") + "," +request.getParameter("c") + "," + request.getParameter("m") + ")");    
                stmt.execute("insert into uname values('" + request.getParameter("rgn") + "','" + request.getParameter("rgn") + "')");
                out.println("Record inserted successfully.");
            }
            else if(request.getParameter("ch").equals("del"))
            {
                stmt.execute("delete from uname where un='"+request.getParameter("rgn")+"'");
                stmt.execute("delete from result where regno='"+request.getParameter("rgn")+"'");
                out.println("Record deleted successfully.");
            }
            else if(request.getParameter("ch").equals("mod"))
            {
                String q = "update result set name='" + request.getParameter("nme") + "', sub1=" + request.getParameter("c") + ", sub2=" + request.getParameter("p") + ", sub3=" + request.getParameter("m") + " where regno='" + request.getParameter("rgn")+ "'";
                stmt.execute(q);
                out.println( q + "<br>Record updated successfully.");
            }
            
            conn.close();
            response.setStatus(response.SC_MOVED_TEMPORARILY);
            response.setHeader("Location", "next.jsp?uname=admin&psw=admin");
            //java.sql.ResultSet rs = stmt.executeQuery();
        %>
    </body>
</html>
