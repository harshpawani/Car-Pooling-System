<%
    session.setAttribute("username",null);
    session.invalidate();
    response.sendRedirect("employee.jsp");
%>