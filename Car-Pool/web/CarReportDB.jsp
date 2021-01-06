<%@page import="DAO.DBCon"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Car Report DB</title>
    </head>
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
             Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carpooling?zeroDateTimeBehavior=convertToNull","root",""); 
        int id=0;
if(session.getAttribute("username")!=null){
        String name = (String)session.getAttribute("username");
        String company = request.getParameter("company");
        String carname = request.getParameter("carname");
        String carnumber = request.getParameter("carnumber");
        String from = request.getParameter("from");
        String to = request.getParameter("to");
        String fromdate = request.getParameter("fromdate");
        String todate = request.getParameter("todate");
        String city = request.getParameter("city");
        String type = request.getParameter("type");
        String seats = request.getParameter("seats");
        String price = request.getParameter("price");
        String pickup = request.getParameter("pickup");
        if(name!=null && company!=null && carname!=null && carnumber!=null && from!=null && to!=null && fromdate!=null && todate!=null && city!=null && type!=null && seats!=null && price!=null && pickup!=null ){
        try {

            PreparedStatement pst = conn.prepareStatement("INSERT INTO `carreport`(`SrNo`, `Owner`, `Company`, `Name`, `Number`, `CarFrom`, `CarTo`, `DateFrom`, `DateTo`, `city`, `type`, `Seats`, `Price`, `pickup`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            pst.setInt(1,id);
            pst.setString(2,name);
            pst.setString(3,company);
            pst.setString(4,carname);
            pst.setString(5,carnumber);
            pst.setString(6,from);
            pst.setString(7,to);
            pst.setString(8,fromdate);
            pst.setString(9,todate);
            pst.setString(10,city);
            pst.setString(11,type);
            pst.setString(12,seats);
            pst.setString(13,price);
            pst.setString(14,pickup);
            int i = pst.executeUpdate();
            if(i>0){
                 out.println("<script type=\"text/javascript\">");
                out.println("alert('Car Added Successfully!!!');");
                out.println("location='Addcar.jsp';");
                out.println("</script>"); 
            }
            }
        catch(Exception e){
                out.println("<script type=\"text/javascript\">");
                out.println("alert('"+e+"');");
                out.println("location='Addcar.jsp';");
                out.println("</script>"); 
        }
    }
}
else{
        String name = (String)session.getAttribute("uname");
        String company = request.getParameter("company");
        String carname = request.getParameter("carname");
        String carnumber = request.getParameter("carnumber");
        String from = request.getParameter("from");
        String to = request.getParameter("to");
        String fromdate = request.getParameter("fromdate");
        String todate = request.getParameter("todate");
        String city = request.getParameter("city");
        String type = request.getParameter("type");
        String seats = request.getParameter("seats");
        String price = request.getParameter("price");
        String pickup = request.getParameter("pickup");
        if(name!=null && company!=null && carname!=null && carnumber!=null && from!=null && to!=null && fromdate!=null && todate!=null && city!=null && type!=null && seats!=null && price!=null && pickup!=null ){
        try {

            PreparedStatement pst = conn.prepareStatement("INSERT INTO `carreport`(`SrNo`, `Owner`, `Company`, `Name`, `Number`, `CarFrom`, `CarTo`, `DateFrom`, `DateTo`, `city`, `type`, `Seats`, `Price`, `pickup`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            pst.setInt(1,id);
            pst.setString(2,name);
            pst.setString(3,company);
            pst.setString(4,carname);
            pst.setString(5,carnumber);
            pst.setString(6,from);
            pst.setString(7,to);
            pst.setString(8,fromdate);
            pst.setString(9,todate);
            pst.setString(10,city);
            pst.setString(11,type);
            pst.setString(12,seats);
            pst.setString(13,price);
            pst.setString(14,pickup);
            int i = pst.executeUpdate();
            if(i>0){
                 out.println("<script type=\"text/javascript\">");
                out.println("alert('Car Added Successfully!!!');");
                out.println("location='AddcarAdmin.jsp';");
                out.println("</script>"); 
            }
            }
        catch(Exception e){
                out.println("<script type=\"text/javascript\">");
                out.println("alert('"+e+"');");
                out.println("location='AddcarAdmin.jsp';");
                out.println("</script>"); 
        }
    }
}
         %>
    </body>
</html>
