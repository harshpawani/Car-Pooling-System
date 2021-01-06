<%@page import="DAO.DBCon"%>
<%@page import="java.security.MessageDigest"%>
<%@page import = "java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Share Car DB</title>
    </head>
    <body>
 <%
   Connection conn=DBCon.getConnection();
   String u = request.getParameter("u");
   String name = request.getParameter("name");
   String mobile = request.getParameter("Mobile");
   String email = request.getParameter("Email");
try{
    Statement st=conn.createStatement();
   String carname = request.getParameter("carname");
   String sharingstart = request.getParameter("sharingstart");
   String sharingend = request.getParameter("sharingend");
 ResultSet rst=st.executeQuery("select ID  from carsharereport where Email='"+email+"'");

if(rst.next())
	{
                out.println("<script type=\"text/javascript\">");
                out.println("alert('User already exist');");
                out.println("location='bookcar.jsp';");
                out.println("</script>");
}
else{
PreparedStatement pst = conn.prepareStatement("INSERT INTO `carsharereport`(`CarName`, `SharingStart`, `SharingEnd`, `Name`, `Mobile`, `Email`) VALUES (?,?,?,?,?,?)");
pst.setString(1,carname);
pst.setString(2,sharingstart);
pst.setString(3,sharingend);
pst.setString(4,name);
pst.setString(5,mobile);
pst.setString(6,email);
pst.execute();
out.println("success");
%>
<jsp:forward page="bookcarprint.jsp"/>
<%
}
}catch(Exception e)
{out.println(e);}
%>
<br>
    </body>
</html>
