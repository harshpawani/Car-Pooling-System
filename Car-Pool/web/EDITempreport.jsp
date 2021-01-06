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
        <title>Edit Employee Report</title>
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
            font-size:18px;
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
        <jsp:include page="adminnav.jsp"/><br><br><br><br><br>
    <center>
        <div style="
        
            width: 600px;
            box-sizing: border-box;
            background: rgba(0,0,0,.5);
            box-shadow: 0 15px 25px rgba(0,0,0,.6);
            border-radius: 10px;" >
        <%
             Connection conn = null;
             Statement st = null;
             ResultSet rs = null;
             Class.forName("com.mysql.jdbc.Driver");
             conn = DriverManager.getConnection("jdbc:mysql://localhost/carpooling","root","");
             PreparedStatement ps = null;
        %>
        <form action="" method="POST">
            <%
                st = conn.createStatement();
                String u = request.getParameter("u");
                int num =Integer.parseInt(u);
                String data = "select * from edetails where EmpID='"+num+"'";
                rs = st.executeQuery(data);
                while(rs.next()){
            %>
            <input type="hidden" name="id" value='<%=rs.getString("EmpID")%>'><br>
            <div class="form-group">
                <label>First Name</label>
                <input type="text" class="form-control" name="FirstName" value='<%=rs.getString("FirstName")%>'>
            </div>
            <div class="form-group">
                <label>Car Number</label>
                <input type="text" class="form-control" name="CarNumber" value='<%=rs.getString("CarNumber")%>'>
            </div>
            <div class="form-group">
                <label>Email</label>
                <input type="text" class="form-control" name="Email" value='<%=rs.getString("Email")%>'>
            </div>
            <div class="form-group">
                <label>Contact Number</label>
                <input type="text" class="form-control" name="ContactNumber" value='<%=rs.getString("ContactNumber")%>'>
            </div>
            <%
                
            %>
            <button type="submit" class="button">Submit</button><br>
        </form>
        </div>
    </center>
    </body>
</html>
<%
    String a = request.getParameter("id");
    String b = request.getParameter("FirstName");
    String c = request.getParameter("CarNumber");
    String d = request.getParameter("Email");
    String e = request.getParameter("ContactNumber");
    if(a!=null && b!=null && c!=null && d!=null && e!=null)
    {
        String query = "update edetails set FirstName=?,CarNumber=?,Email=?,ContactNumber=? where EmpID='"+a+"'";
        ps = conn.prepareStatement(query);
        ps.setString(1,b);
        ps.setString(2,c);
        ps.setString(3,d);
        ps.setString(4,e);
        if((ps.executeUpdate())>0)
        {
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Records Updated Successfully!!!');");
            out.println("location='vemp.jsp';");
            out.println("</script>"); 
        }
    }}
%>