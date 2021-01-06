<%@page import = "java.sql.*"%>
<%@page import="DAO.DBCon"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <script language="javascript">
function validateForm(formObj){
	if(formObj.uname.value.length==0){
		alert("Please Enter your uname name");
		formObj.uname.focus();
		return false;
	}
	if(formObj.pws.value.length==0){
		alert("Please Enter your pws");
		formObj.pws.focus();
		return false;
    }
	  }
  </script>
    </head>
    <body>
        <%
try{
	String eid=request.getParameter("eid");
		String email=request.getParameter("email");
			String message=request.getParameter("Report");
			if(message!=null)
	{
			Connection con=DBCon.getConnection();
   PreparedStatement pst=con.prepareStatement("insert into message values(?,?,?)");
  pst.setString(1,eid);
    pst.setString(2,email);
	  pst.setString(3,message);
	  pst.executeUpdate();
	  }
	  %> 
	  <jsp:forward page="Report1.jsp"/>
	  <%
}catch(Exception e)
{out.println(e);}
%>
    </body>
</html>
