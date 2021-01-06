<%
    session.setAttribute("uname",null);
    session.invalidate();
    response.sendRedirect("admin.jsp");
%>