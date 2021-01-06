<%@page import="DAO.DBCon"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <title>My Account</title>
        <style>
        h2 
        {
            margin: 0 0 30px;
            padding: 0;
            color: #fff;
            text-align: center;
        }
        body
        {
            margin:0;
            background: linear-gradient(#141e30, #243b55);
            background-repeat: no-repeat;
            background-size:100% 100%;
            background-attachment: fixed;
            position: relative;
        }
        .h
        {
            margin-top:20px;
            font-size: 55px;
            font-family: 'Lobster';
            background-color:blueviolet;
            color:white;
            overflow:hidden;
            display:block;
        }
        .input
        {
            width: 320px;
            height: 31px;
        }
        h3
        {
            color:#FC8D07;
        }
        .button{
          position: relative;
          align-items: center;
          height: 50px;
          width: 150px;
          border: none;
          outline: none;
          color: cyan;
          background: transparent;
          text-transform: uppercase;
          cursor: pointer;
          border-radius: 5px;
          overflow: hidden;
          transition: .5s;
          font-size: 20px;
          font-family: 'Raleway', sans-serif;
        }

        .button:hover {
          background: #03e9f4;
          color: #fff;
          border-radius: 5px;
          box-shadow: 0 0 5px #03e9f4,
                      0 0 25px #03e9f4,
                      0 0 50px #03e9f4,
                      0 0 100px #03e9f4;
        }
        p,pre
        {
            font-size: 16px;
        }
        label
        {
            font-family:Trebuchet MS;
            font-size: 18px;
            color:#f4f4f5;
        }
        h3
        {
            font-family:Trebuchet MS;
            color:#34495e;
        }
 </style>
    </head>
    <body>
    <jsp:include page="empnav.jsp"/><br><br><br><br><br>
    <center>
        <div style="
        
            width: 600px;
            box-sizing: border-box;
            background: rgba(0,0,0,.5);
            box-shadow: 0 15px 25px rgba(0,0,0,.6);
            border-radius: 10px;
        
        " >
        <form action="" method="POST">
           <%try{
             Class.forName("com.mysql.jdbc.Driver");
             Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carpooling?zeroDateTimeBehavior=convertToNull","root","");
             Statement st =conn.createStatement();
             String ul = (String)session.getAttribute("username");
             String data = "select * from edetails where Username='"+ul+"'";
             ResultSet rs = st.executeQuery(data);
             PreparedStatement ps = null;
             while(rs.next()){
        %>
        <input type="text" hidden="yes" name="id" value='<%=rs.getInt("EmpID")%>'><br><br>
                <label>First Name:</label>&nbsp&nbsp&nbsp&nbsp&nbsp
                <input type="text" name="firstname" value='<%=rs.getString("FirstName")%>'><br><br>
                <label>Last Name: </label>&nbsp&nbsp&nbsp&nbsp&nbsp
                <input type="text"  name="lastname" value='<%=rs.getString("LastName")%>'><br><br>
                <label>E-mail: </label>&nbsp&nbsp&nbsp&nbsp&nbsp
                <input type="text" name="email" value='<%=rs.getString("Email")%>'><br><br>
                <label>Phone No.: </label>&nbsp&nbsp&nbsp&nbsp&nbsp
                <input type="text" name="contact" value='<%=rs.getString("ContactNumber")%>'><br><br>
                 <button type="submit"  class="button">Submit</button>
        </form><br>
        </div>  
       </center>
    </body>
</html>
<%
    String a = request.getParameter("firstname");
    String b = request.getParameter("lastname");
    String c = request.getParameter("cno");
    String d = request.getParameter("email");
    String e = request.getParameter("contact");
    String f = request.getParameter("id");
    if(a!=null && b!=null && c!=null && d!=null && e!=null)
    {
        String query = "update edetails set FirstName=?,LastName=?,CarNumber=?,Email=?,ContactNumber=? where EmpID='"+f+"'";
        ps = conn.prepareStatement(query);
        ps.setString(1,a);
        ps.setString(2,b);
        ps.setString(3,c);
        ps.setString(4,d);
        ps.setString(5,e);
        ps.executeUpdate();
        if((ps.executeUpdate())>0)
        {
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Records Updated Successfully!!!');");
            out.println("location='empaccount.jsp';");
            out.println("</script>"); 
        }
    }}}
catch(Exception ex){
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+ex+"');");
            out.println("location='empaccount.jsp';");
            out.println("</script>"); }
%>