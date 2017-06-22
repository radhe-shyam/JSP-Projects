<%-- 
    Document   : index
    Created on : Jun 27, 2014, 10:17:16 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FFCS Login Page</title>
    </head>
    <body>
        <%
        HttpSession ses = request.getSession();
        if(ses.getAttribute("user") != null)
            response.sendRedirect("logout.jsp");
        %>
        <jsp:include page="header.jsp"/>
        <div>
            <table align="center" cellpadding="10" cellspacing="10">
                <tr align="center">
                    <td style="border: green solid;">
                        <h3 onclick="show(1);" >Student Login</h3>
                        <div style="display:none;" id="stu_login" align="left">
                            <form method="post" action="student_home.jsp">
                                Registration Number <br><input type="text" placeholder="Enter Registration Number" name="uname" />
                                <br>Password<br><input type="password" placeholder="Password" name="psw"/>
                                <br><center><input type="submit" value="Login"/></center>
                            </form>
                        </div>
                    </td>
                    <td style="border: purple solid;">
                        <h3 onclick="show(2);" >Faculty Login</h3>
                        <div style="display:none;" id="fac_login" align="left">
                            <form method="post" action="faculty_home.jsp">
                            Faculty Number <br><input type="text" placeholder="Enter Faculty Number" name="uname" />
                            <br>Password<br><input type="password" placeholder="Password" name="psw" />
                                <br><center><input type="submit" value="Login"/></center>
                            </form>
                        </div>
                    </td>
                    <td style="border: orange solid;">
                        <h3 onclick="show(3);" >Admin Login</h3>
                        <div style="display:none;" id="adm_login" align="left">
                            <form method="post" action="admin_home.jsp">
                            User Name <br><input type="text" placeholder="Enter User Name" name="uname" />
                            <br>Password<br><input type="password" placeholder="Password" name="psw" />
                                <br><center><input type="submit" value="Login"/></center>
                            </form>   
                        </div>
                    </td>
                </tr>
                <tr align="center">
                <form method="post" action="adduser.jsp">
                    <td colspan="3" style="border: brown solid;">
                        <h3 onclick="show(4);">New User</h3>
                        <div style="display: none" id="new_user">
                            <table>
                                <tr><td>Name<br><input type="text" placeholder="Enter your name" name="name" /></td>
                                    <td>Email Address<br/><input type="email" placeholder="Enter email address" name="email" /></td>
                                </tr>
                                <tr><td>Gender<br/><select name="g"><option value="male"/>Male<option value="female"/>Female</select></td>
                                    <td>Password<br/><input type="password" placeholder="Enter your password" name="psw"/></td>
                                </tr>
                                <tr><td>Enroll as<br/><select name="enr"><option value="student"/>Student<option value="faculty"/>Faculty</select></td>
                                    <td>Retype Password<br/> <input type="password" placeholder="Retype your password"/></td>
                                </tr>
                                <tr>
                                    <td><input style="float: right;" type="submit"/></td>
                                    <td><input style="float: left;" type="reset"/></td>
                                </tr>
                            </table>
                        </div>
                    </td>
                </form>
                </tr>
            </table>
        </div>
        <jsp:include page="footer.jsp"/>
    </body>
</html>
