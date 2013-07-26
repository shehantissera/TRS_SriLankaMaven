<%-- 
    Document   : logout
    Created on : Jun 28, 2013, 2:05:08 AM
    Author     : Shehan Tis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
session.setAttribute("userLogin", null);
session.setAttribute("fname", null);
session.setAttribute("lname", null);
session.setAttribute("email", null);
response.sendRedirect("index.jsp");
%>