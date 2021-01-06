<%@page import="DAO.DBCon"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Booking Report</title>
    </head>
    <body>
       <%
           String id = request.getParameter("d");
           int num = Integer.parseInt(id);
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/carpooling","root","");
           Statement st = conn.createStatement();
           int i = st.executeUpdate("DELETE from carsharereport where id='"+num+"'");
            if(i>0)
            {
                out.println("<script type=\"text/javascript\">");
                out.println("location='CarShareReportAdmin.jsp';");
                out.println("alert('Records Deleted Successfully!!!');");
                out.println("</script>");
            }
            %>
    </body>
</html>
