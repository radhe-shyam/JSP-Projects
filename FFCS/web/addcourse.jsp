<%-- 
    Document   : addcourse
    Created on : Jul 1, 2014, 5:52:58 AM
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
        <form action="addcourseserver.jsp" method="post">
            <center>
                <h1>Add New Course</h1>
            <div style="border:green solid; width: 25%; ">
            <table align="center">
                <%@page import="java.sql.*"%>
                <jsp:include page="conn.jsp"/>
                <tr>
                    <td>Course Code<td><input type="text"
                                              
                                              value="<%
                                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/ffcs", "root", "");
                                Statement st = conn.createStatement();
                                ResultSet rs = st.executeQuery("Select count(*) from course");
                                rs.next();
                                out.print(String.format("CRDJ%03d",rs.getInt(1)+1));
                                %>" readonly name="cid" />
                </tr>
                <tr>
                    <td>Course Title<td><input type="text" name="cname" placeholder="Enter course title" required />
                </tr>
                <tr>
                    <td>Faculty name<td><select name="fname">
                            <%
                                rs = st.executeQuery("Select fid,name from faculty");
                                while(rs.next())
                                    out.println("<option value=\"" + rs.getString(1) + "\">" + rs.getString(2) );
                            %>
                        </select>
                </tr>
                <tr>
                    <td>Course Duration<td><input type="number" name="cdur" placeholder="Enter Duration" required/>
                </tr>
                <tr>
                    <td>Course Description<td><textarea name="desc" placeholder="Enter course description" rows="5" required></textarea>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit"/>
                </tr>
        </table>
                            </div>
        </form>
    </body>
</html>
