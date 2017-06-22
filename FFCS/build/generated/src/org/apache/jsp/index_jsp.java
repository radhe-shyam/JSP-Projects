package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>FFCS Login Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("        <div>\n");
      out.write("            <table align=\"center\" cellpadding=\"10\" cellspacing=\"10\">\n");
      out.write("                <tr align=\"center\">\n");
      out.write("                    <td style=\"border: green solid;\">\n");
      out.write("                        <h3 onclick=\"show(1);\" >Student Login</h3>\n");
      out.write("                        <div style=\"display:none;\" id=\"stu_login\" align=\"left\">\n");
      out.write("                            <form method=\"post\" action=\"student_home.jsp\">\n");
      out.write("                                Registration Number <br><input type=\"text\" placeholder=\"Enter Registration Number\" name=\"uname\" />\n");
      out.write("                                <br>Password<br><input type=\"password\" placeholder=\"Password\" name=\"psw\"/>\n");
      out.write("                                <br><center><input type=\"submit\" value=\"Login\"/></center>\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                    </td>\n");
      out.write("                    <td style=\"border: purple solid;\">\n");
      out.write("                        <h3 onclick=\"show(2);\" >Faculty Login</h3>\n");
      out.write("                        <div style=\"display:none;\" id=\"fac_login\" align=\"left\">\n");
      out.write("                            <form method=\"post\" action=\"faculty_home.jsp\">\n");
      out.write("                            Faculty Number <br><input type=\"text\" placeholder=\"Enter Faculty Number\" name=\"uname\" />\n");
      out.write("                            <br>Password<br><input type=\"password\" placeholder=\"Password\" name=\"psw\" />\n");
      out.write("                                <br><center><input type=\"submit\" value=\"Login\"/></center>\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                    </td>\n");
      out.write("                    <td style=\"border: orange solid;\">\n");
      out.write("                        <h3 onclick=\"show(3);\" >Admin Login</h3>\n");
      out.write("                        <div style=\"display:none;\" id=\"adm_login\" align=\"left\">\n");
      out.write("                            <form method=\"post\" action=\"admin_home.jsp\">\n");
      out.write("                            User Name <br><input type=\"text\" placeholder=\"Enter User Name\" name=\"uname\" />\n");
      out.write("                            <br>Password<br><input type=\"password\" placeholder=\"Password\" name=\"psw\" />\n");
      out.write("                                <br><center><input type=\"submit\" value=\"Login\"/></center>\n");
      out.write("                            </form>   \n");
      out.write("                        </div>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr align=\"center\">\n");
      out.write("                <form method=\"post\" action=\"adduser.jsp\">\n");
      out.write("                    <td colspan=\"3\" style=\"border: brown solid;\">\n");
      out.write("                        <h3 onclick=\"show(4);\">New User</h3>\n");
      out.write("                        <div style=\"display: none\" id=\"new_user\">\n");
      out.write("                            <table>\n");
      out.write("                                <tr><td>Name<br><input type=\"text\" placeholder=\"Enter your name\" name=\"name\" /></td>\n");
      out.write("                                    <td>Email Address<br/><input type=\"email\" placeholder=\"Enter email address\" name=\"email\" /></td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr><td>Gender<br/><select name=\"g\"><option value=\"male\"/>Male<option value=\"female\"/>Female</select></td>\n");
      out.write("                                    <td>Password<br/><input type=\"password\" placeholder=\"Enter your password\" name=\"psw\"/></td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr><td>Enroll as<br/><select name=\"enr\"><option value=\"student\"/>Student<option value=\"faculty\"/>Faculty</select></td>\n");
      out.write("                                    <td>Retype Password<br/> <input type=\"password\" placeholder=\"Retype your password\"/></td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td><input style=\"float: right;\" type=\"submit\"/></td>\n");
      out.write("                                    <td><input style=\"float: left;\" type=\"reset\"/></td>\n");
      out.write("                                </tr>\n");
      out.write("                            </table>\n");
      out.write("                        </div>\n");
      out.write("                    </td>\n");
      out.write("                </form>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        </div>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
