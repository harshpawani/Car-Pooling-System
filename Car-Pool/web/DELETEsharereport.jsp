<%@page import="DAO.DBCon"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Car Sharing Report</title>
    </head>
    <body>
       <%
           String id = request.getParameter("d");
           int num = Integer.parseInt(id);
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/carpooling","root","");
           Statement st = conn.createStatement();
           st.executeUpdate("DELETE from carsharereport where id='"+num+"'");
            response.sendRedirect("CarShareReport.jsp");
            %>
    </body>
</html>
