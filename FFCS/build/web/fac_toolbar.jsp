<%-- 
    Document   : fac_toolbar
    Created on : Jun 29, 2014, 10:46:23 PM
    Author     : Administrator
--%>

<div style="height: 30px;width: 100%;">
    <div style="padding: 2px 4px 2px 4px; border: green solid 1px; position:  fixed; top: 130px; left: 10px;"><b>Welcome : <%out.print(request.getParameter("uname"));%> </b></div>
    <%
    String rf = request.getParameter("uname");
    HttpSession ses = request.getSession(true);
        if ( ses.getAttribute("user") == null )
            ses.setAttribute("user",rf);        
    %>
    <table border="0" align="center">
        <tr>
            <td>
               <div style="border:blue solid 2px;float:left;padding: 0px 6px 0px 6px;">
                   <a href="showcourses.jsp" target="cont">Home</a>
        </div> 
            </td>
            <td>
                <div style="border:blue solid 2px;float:left;padding: 0px 6px 0px 6px;">
                    <a href=# target="cont">Profile</a>
        </div> 
            </td>
            <td>
                <div style="border:blue solid 2px;float:left;padding: 0px 6px 0px 6px;">
                    <a href="facultycourses.jsp?fname=<%out.print(rf);%>" target="cont">Alloted Courses</a>
        </div>
            </td>
            
            
            <td>
                <div style="border:blue solid 2px;float:left;padding: 0px 6px 0px 6px;">
                <a href="logout.jsp">Logout</a>
        </div>
            </td>
        </tr>
    </table>
    </div>
<hr  style="border-color: black;">
    
