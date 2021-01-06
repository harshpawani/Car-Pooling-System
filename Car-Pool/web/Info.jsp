<%@page import="DAO.DBCon"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%
String eid=request.getParameter("eid");
String ename=request.getParameter("ename");
String department=request.getParameter("dpt");
String email=request.getParameter("email");
String contact=request.getParameter("contact");
String add1=request.getParameter("add1");
String routefrom=request.getParameter("routefrom");
String routeto=request.getParameter("routeto");
String timings=request.getParameter("timings");
String driver=request.getParameter("driver");
String person=request.getParameter("person");
try{
Connection conn=DBCon.getConnection();
PreparedStatement pst = conn.prepareStatement("Insert into services values(?,?,?,?,?,?,?,?,?,?,?)");
pst.setString(1,eid);
pst.setString(2,ename);
pst.setString(3,department);
pst.setString(4,email);
pst.setString(5,contact);
pst.setString(6,add1);
pst.setString(7,routefrom);
pst.setString(8,routeto);
pst.setString(9,timings);
pst.setString(10,driver);
pst.setString(11,person);
pst.executeUpdate();
out.println("update successful");
%> <jsp:forward page="Details.jsp"/><%
}catch(Exception e)
{out.println(e);}
%>
<br>
    </body>
</html>
