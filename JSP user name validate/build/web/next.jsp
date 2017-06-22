<%-- 
    Document   : next.jso
    Created on : Jun 18, 2014, 11:08:57 AM
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
            
            //response.setIntHeader("refresh", 5);
            int visit = 0 ;
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection conn;
            conn = java.sql.DriverManager.getConnection("jdbc:mysql://localhost/student", "root", "root");
            String pswd = request.getParameter("psw");
            String rf = request.getParameter("uname");
            java.sql.Statement stmt = conn.createStatement();
            String q = "select * from uname where un='" + rf + "' and pw='" + pswd + "'";
            java.sql.ResultSet rs = stmt.executeQuery(q);
            /* TODO output your page here. You may use following sample code. */
            if(rs.next())
            {
                HttpSession ses = request.getSession(true);
                String s = "";
                if ( ses.getAttribute("user") != null )
                    s = ses.getAttribute("user").toString();
                if (!rf.equals(s))
                {
                    ses.removeAttribute("user");
                    ses.invalidate();
                    visit = 0;
                    ses = request.getSession();
                }
                int v = 0;
                if(ses.getLastAccessedTime() - ses.getCreationTime() < 600000)
                {
                    if(ses.getLastAccessedTime() - ses.getCreationTime() < 500) 
                    {
                        ses.setAttribute("user", rf);
                        out.println("New Session created.<br>");
                    }
                    else
                        visit++;
                    out.println("Session id : " + ses.getId()
                    + "<br>Session User : " + ses.getAttribute("user").toString()
                    +"<br>Session creation time : " + new java.sql.Time(ses.getCreationTime())
                    + "<br>Last Accessed time : " + new java.sql.Time(ses.getLastAccessedTime())
                    //+ "<br>Number of visits : " + visit
                    );
                    if (!rf.equals("admin"))
                    {
                        q = "select * from result where regno='" + rf + "'";
                        rs = stmt.executeQuery(q);
                        rs.next();
                        out.println("<center><a href=\"index.jsp\">Logout</a><br>");
                        out.println("<h1>Marksheet</h1><br>");
                        out.println("<table border=\"3\">"
                        + "<tr><td>Registeration number : <td>" + rs.getString(1) +"</tr>"
                        + "<tr><td>Name : <td>" + rs.getString(2) +"</tr>"
                        + "<tr><td>Chemistry : <td>" + rs.getString(3) +"</tr>"
                        + "<tr><td>Physics : <td>" + rs.getInt(4) +"</tr>"
                        + "<tr><td>Maths : <td>" + rs.getInt(5) +"</tr>"
                        + "<tr><td>Total : <td>" + (rs.getInt(3)+rs.getInt(4)+rs.getInt(5)) +"</tr></table>"
                        );
                    }
                    else
                    {
                        out.println("<center><a href=\"index.jsp\">Logout</a><br>");
                        out.println("<h1>Existing Records</h1>");
                        out.println("<br><table border=\"3\"><tr><th>Registration Number</th><th>Name</th><th>Chemistry</th><th>Phyiscs</th><th>Maths</th><th>Actions</th>");
                        rs = stmt.executeQuery("select * from result order by regno");
                        while(rs.next())
                            out.println("<form method=\"get\" action=\"next1.jsp\"><tr><td><input type=\"text\" name=\"rgn\" value=\"" + rs.getString(1)+ "\"/></td>"
                                    + "<td><input type=\"text\" name=\"nme\" value=\"" + rs.getString(2)+ "\"/></td>"
                                    + "<td><input type=\"text\" name=\"c\" value=\"" + rs.getString(3)+ "\"/></td>"
                                    + "<td><input type=\"text\" name=\"p\" value=\"" + rs.getString(4)+ "\"/></td>"
                                    + "<td><input type=\"text\" name=\"m\" value=\"" + rs.getString(5)+ "\"/></td>"
                                    + "<td><select name=\"ch\"><option value=\"del\">Delete</option><option value=\"mod\">Modify</option></select>"
                                    + "<input type=\"submit\" value=\"go\"/></form>");
                        out.println("</table><h1>Add new Records</h1>");
                        out.println("<br><table border=\"3\"><tr><th>Registration Number</th><th>Name</th><th>Chemistry</th><th>Phyiscs</th><th>Maths</th><th>Actions</th>");
                            out.println("<form method=\"get\" action=\"next1.jsp\"><tr><td><input type=\"text\" name=\"rgn\" /></td>"
                                    + "<td><input type=\"text\" name=\"nme\" /></td>"
                                    + "<td><input type=\"text\" name=\"c\" /></td>"
                                    + "<td><input type=\"text\" name=\"p\" /></td>"
                                    + "<td><input type=\"text\" name=\"m\" /></td>"
                                    + "<td><input type=\"hidden\" name=\"ch\" value=\"add\" /><input type=\"submit\" value=\"Add\" /></form></table>");
                    }
                }
                else    
                {
                    out.println("Your session has expired.<br><a href=\"index.jsp\">Click here to login again.</a>");
                    ses.removeAttribute("user");
                    ses.invalidate();
                    visit = 0;
                    request.getRequestDispatcher("/index.jsp").forward(request, response);
                }
                        
            }
            else
                out.println("Invalid username or password.<br><a href=\"index.jsp\">Click here to try again.</a>");
            rs.close(); 
            conn.close();
            %>
    </body>
</html>
