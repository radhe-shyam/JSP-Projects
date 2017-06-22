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
            <form method="post" action="faculty_make_paper_server.jsp">
                <input type="hidden" name="cc" value="<% out.print(request.getParameter("cc"));%>"/>
                <%@page import="java.sql.*"%>
                <jsp:include page="conn.jsp" />
                <%
                ResultSet rs = ((DriverManager.getConnection("jdbc:mysql://localhost/ffcs", "root", "")).createStatement()).executeQuery("Select * from question where course = '" + request.getParameter("cc")+ "'");
                if(rs.next())
                {
                     for(int i=1;i<11;i++)
                    {
                        out.print("<div style=\"border: green solid 1px; width: 600px;\">");
                        out.print("<div align=\"left\"><u>Question #" + i + "</u></div>");    
                        out.print("<table border=\"0\" style=\"width:inherit;\">");
                        out.print("<tr><td><textarea name=\"q" + i + "\" placeholder=\"Enter the Question\" cols=\"70\" rows=\"5\" required>" + rs.getObject(1)+ "</textarea></tr>");
                        out.print("<tr><td>A : <input type=\"text\"  value=\"" + rs.getObject(2)+ "\" name=\"a"+ i + "\" placeholder=\"1st Option\" required/></tr>");
                        out.print("<tr><td>B : <input type=\"text\"  value=\"" + rs.getObject(3)+ "\" name=\"b"+ i + "\" placeholder=\"2nd Option\" required/></tr>");
                        out.print("<tr><td>C : <input type=\"text\"  value=\"" + rs.getObject(4)+ "\" name=\"c"+ i + "\" placeholder=\"3rd Option\" required/></tr>");
                        out.print("<tr><td>D : <input type=\"text\"  value=\"" + rs.getObject(5)+ "\" name=\"d"+ i + "\" placeholder=\"4th Option\" required/></tr>");
                        if(rs.getObject(6).equals("A"))
                        out.print("<tr><td>Correct Answer :<select name=\"ca" + i +"\"><option value=\"A\" selected>A</option><option value=\"B\">B</option><option value=\"C\">C</option><option value=\"D\">D</option></select></tr>");
                        else if(rs.getObject(6).equals("B"))
                            out.print("<tr><td>Correct Answer :<select name=\"ca" + i +"\"><option value=\"A\">A</option><option value=\"B\" selected>B</option><option value=\"C\">C</option><option value=\"D\">D</option></select></tr>");
                        else if(rs.getObject(6).equals("C"))
                            out.print("<tr><td>Correct Answer :<select name=\"ca" + i +"\"><option value=\"A\">A</option><option value=\"B\">B</option><option value=\"C\" selected>C</option><option value=\"D\">D</option></select></tr>");
                        else
                            out.print("<tr><td>Correct Answer :<select name=\"ca" + i +"\"><option value=\"A\">A</option><option value=\"B\">B</option><option value=\"C\">C</option><option value=\"D\" selected>D</option></select></tr>");
                        out.print("</table>");
                        out.print("</div><br>");
                        rs.next();
                    }
                }
                else
                {
                for(int i=1;i<11;i++)
                    {
                        out.print("<div style=\"border: green solid 1px; width: 600px;\">");
                        out.print("<div align=\"left\"><u>Question #" + i + "</u></div>");    
                        out.print("<table border=\"0\" style=\"width:inherit;\">");
                        out.print("<tr><td><textarea name=\"q" + i + "\" placeholder=\"Enter the Question\" cols=\"70\" rows=\"5\" required></textarea></tr>");
                        out.print("<tr><td>A : <input type=\"text\" name=\"a"+ i + "\" placeholder=\"1st Option\" required/></tr>");
                        out.print("<tr><td>B : <input type=\"text\" name=\"b"+ i + "\" placeholder=\"2nd Option\" required/></tr>");
                        out.print("<tr><td>C : <input type=\"text\" name=\"c"+ i + "\" placeholder=\"3rd Option\" required/></tr>");
                        out.print("<tr><td>D : <input type=\"text\" name=\"d"+ i + "\" placeholder=\"4th Option\" required/></tr>");
                        out.print("<tr><td>Correct Answer :<select name=\"ca" + i +"\"><option value=\"A\">A</option><option value=\"B\">B</option><option value=\"C\">C</option><option value=\"D\">D</option></select></tr>");
                        out.print("</table>");
                        out.print("</div><br>");
                    }
                }
                %>
                <input type="submit" value="Update"/><input type="reset"/>
            </form>
                
</html>
