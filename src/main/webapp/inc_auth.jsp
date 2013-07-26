<%
    if (session.getAttribute("userLogin") == null)
    {
        response.sendRedirect("login.jsp");
    }
    else if(session.getAttribute("userLogin")=="error")
    {
        response.sendRedirect("login.jsp");
    }
%>