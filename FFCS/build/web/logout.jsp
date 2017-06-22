<%-- 
    Document   : logout
    Created on : Jul 1, 2014, 11:32:18 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession ses = request.getSession();
    ses.removeAttribute("user");
    ses.invalidate();
    response.sendRedirect("index.jsp");
%>
