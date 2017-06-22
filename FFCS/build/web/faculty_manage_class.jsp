<%-- 
    Document   : faculty_make_paper
    Created on : Jul 2, 2014, 1:14:41 AM
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
            <form method="post" action="faculty_manage_class_server.jsp">
                <input type="hidden" name="cc" value="<% out.print(request.getParameter("cc"));%>"/>
                <%@page import="java.sql.*"%>
                <jsp:include page="conn.jsp" />
                <%
                int i=1;
                
                ResultSet rs = ((DriverManager.getConnection("jdbc:mysql://localhost/ffcs", "root", "")).createStatement()).executeQuery("Select dura from course where cid = '" + request.getParameter("cc")+ "'");
                rs.next();
                int k = rs.getInt(1);
                rs = ((DriverManager.getConnection("jdbc:mysql://localhost/ffcs", "root", "")).createStatement()).executeQuery("Select * from classdata where course = '" + request.getParameter("cc")+ "'");
                while(rs.next() && i <= k )
                {
                        out.print("<div style=\"border: green solid 1px; width: 600px;\">");
                        out.print("<div align=\"left\"><u>Class #" + i + "</u></div>");    
                        out.print("<table border=\"0\" style=\"width:inherit;\">");
                        out.print("<tr><td><textarea name=\"q" + i + "\" placeholder=\"Enter the Data\" cols=\"70\" rows=\"8\">" + rs.getObject(1)+ "</textarea></tr>");
                        
                        out.print("</table>");
                        out.print("</div><br>");
                        i++;
                }
                for(;i<=k;i++)
                {
                        out.print("<div style=\"border: green solid 1px; width: 600px;\">");
                        out.print("<div align=\"left\"><u>class #" + i + "</u></div>");    
                        out.print("<table border=\"0\" style=\"width:inherit;\">");
                        out.print("<tr><td><textarea name=\"q" + i + "\" placeholder=\"Enter the Data\" cols=\"70\" rows=\"8\"></textarea></tr>");
                        out.print("</table>");
                        out.print("</div><br>");
                }
                %>
                <input type="submit" value="Update"/><input type="reset"/>
            </form>
                
</html>
