<%@page import="java.security.MessageDigest"%>
<%@page import="DAO.DBCon"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Registration DB</title>
    </head>
    <body>
        <%

String id=request.getParameter("id");
String uname=request.getParameter("username");
String plainText = request.getParameter("password");
 MessageDigest mdAlgorithm = MessageDigest.getInstance("MD5");
        mdAlgorithm.update(plainText.getBytes());

        byte[] digest = mdAlgorithm.digest();
        StringBuilder hexString = new StringBuilder();

        for (int i = 0; i < digest.length; i++) {
            plainText = Integer.toHexString(0xFF & digest[i]);

            if (plainText.length() < 2) {
                plainText = "0" + plainText;
            }

            hexString.append(plainText);
        }
String Question=request.getParameter("Question");
String Answer=request.getParameter("Answer");
try{
Connection conn=DBCon.getConnection();
Statement st=conn.createStatement();
 ResultSet rs=st.executeQuery("select id  from `admindetails` where id='"+id+"'");

if(rs.next())
	{out.println("User already exist");
     %><a href="admin.jsp"><strong>Please Login</strong></a>
     <%
}
else{
PreparedStatement pst = conn.prepareStatement("INSERT INTO `admindetails`(`uname`,`pw`,`Question`,`Answer`,`id`) VALUES ('"+uname+"','"+hexString.toString()+"','"+Question+"','"+Answer+"','"+id+"')");
pst.execute();
%><script>alert("Admin Registered Successufull...");</script><%
%>
<jsp:forward page="admin.jsp"/>
<%
}
}catch(Exception e)
{out.println(e);}
%>
    </body>
</html>
