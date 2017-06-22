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
            <%
                ResultSet rs = ((DriverManager.getConnection("jdbc:mysql://localhost/ffcs", "root", "")).createStatement()).executeQuery("select attendence from scdetails where cid = '" + request.getParameter("cc")+ "' and regno = '" + request.getParameter("rn")+ "'");
                rs.next();
                ResultSet rs1 = ((DriverManager.getConnection("jdbc:mysql://localhost/ffcs", "root", "")).createStatement()).executeQuery("Select dura from course where cid='" + request.getParameter("cc") + "'");
                rs1.next();
                int a = (rs.getInt(1)*100)/rs1.getInt(1);
                if(a < 75)
                    out.println("<script>alert(\"You are not eligible for exam becuase you have <75% attendence.\"); window.location=\"showcourses.jsp?rn=" + request.getParameter("rn") + "\";</script>");
                    
            %>
            <form method="post" action="student_exam_server.jsp">
                <input type="hidden" name="cc" value="<% out.print(request.getParameter("cc"));%>"/>
                <input type="hidden" name="rn" value="<% out.print(request.getParameter("rn"));%>"/>
                <%@page import="java.sql.*"%>
                <jsp:include page="conn.jsp" />
                <%
                rs = ((DriverManager.getConnection("jdbc:mysql://localhost/ffcs", "root", "")).createStatement()).executeQuery("Select * from question where course = '" + request.getParameter("cc")+ "'");
                if(rs.next())
                {
                     for(int i=1;i<11;i++)
                    {
                        out.print("<div style=\"border: green solid 1px; width: 600px;\">");
                        out.print("<div align=\"left\"><u>Question #" + i + "</u></div>");    
                        out.print("<table border=\"0\" style=\"width:inherit;\">");
                        out.print("<tr><td><textarea cols=\"70\" rows=\"5\" style=\"border:none\" readonly>" + rs.getObject(1)+ "</textarea></tr>");
                        out.print("<tr><td>A : <input type=\"radio\"  value=\"A\" name=\"q"+ i + "\"/>" + rs.getObject(2)+ "</tr>");
                        out.print("<tr><td>B : <input type=\"radio\"  value=\"B\" name=\"q"+ i + "\"/>" + rs.getObject(3)+ "</tr>");
                        out.print("<tr><td>C : <input type=\"radio\"  value=\"C\" name=\"q"+ i + "\"/>" + rs.getObject(4)+ "</tr>");
                        out.print("<tr><td>D : <input type=\"radio\"  value=\"D\" name=\"q"+ i + "\"/>" + rs.getObject(5)+ "</tr>");
                        out.print("</table>");
                        out.print("</div><br>");
                        rs.next();
                    }
                }
                else
                {
                out.print("Exam not scheduled yet.<br> Sorry for inconvenience.");
                }
                %>
                <input type="submit" value="Update"/><input type="reset"/>
            </form>
                
</html>
