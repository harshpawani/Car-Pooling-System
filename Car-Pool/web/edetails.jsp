<%@page import="DAO.DBCon"%>
<%@page import="java.security.MessageDigest"%>
<%@page import = "java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Emp Registration DB</title>
    </head>
    <body>
 <%
String eid=request.getParameter("eid");
String firstname=request.getParameter("firstname");
String lastname=request.getParameter("lastname");
String email=request.getParameter("email");
String contact=request.getParameter("contact");
String username=request.getParameter("username");
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
 String plainText2 = request.getParameter("password2");
        MessageDigest mdAlgorith = MessageDigest.getInstance("MD5");
        mdAlgorith.update(plainText2.getBytes());

        byte[] digest1 = mdAlgorith.digest();
        StringBuilder hexString2 = new StringBuilder();

        for (int i = 0; i < digest.length; i++) {
            plainText2 = Integer.toHexString(0xFF & digest[i]);

            if (plainText2.length() < 2) {
                plainText2 = "0" + plainText2;
            }

            hexString2.append(plainText2);
        }
String Question=request.getParameter("Question");
String Answer=request.getParameter("Answer");
try{
Connection conn=DBCon.getConnection();
Statement st=conn.createStatement();
 ResultSet rs=st.executeQuery("select eid  from edetails where eid='"+eid+"'");

if(rs.next())
	{out.println("User already exist");
     %><a href="employee.jsp"><strong>Please Login</strong></a>
     <%
}
else{
PreparedStatement pst = conn.prepareStatement("insert into edetails(eid,firstname,lastname,email,contact,username,password,password2,Question,Answer) values(?,?,?,?,?,?,?,?,?,?,?)");
pst.setString(1,eid);
pst.setString(2,firstname);
pst.setString(3,lastname);
pst.setString(4,email);
pst.setString(5,contact);
pst.setString(6,username);
pst.setString(7,hexString.toString());
pst.setString(8,hexString2.toString());
pst.setString(9,Question);
pst.setString(10,Answer);
pst.execute();
out.println("Employee Register Successufull...");
%>
<jsp:forward page="employee.jsp"/>
<%
}
}catch(Exception e)
{out.println(e);}
%>
<br>
    </body>
</html>
