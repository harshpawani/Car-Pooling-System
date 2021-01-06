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
        <title>Car Sharing Report</title>
        <style>
         body
        {
            margin:0;
            background: linear-gradient(#141e30, #243b55);
            background-repeat: no-repeat;
            background-size:100% 100%;
            background-attachment: fixed;
            position: relative;
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
 </style>
    </head>
    <body>
        
        <%if(session.getAttribute("Check_Session")== null)
        {
            response.sendRedirect("EmployeeLogin.jsp");
        }
        %>
    <jsp:include page="empnav.jsp"/><br><br><br><br><br>
        <p><br></p>
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
                String data = "select * from carsharereport where id='"+num+"'";
                rs = st.executeQuery(data);
                while(rs.next()){
            %>
            <input type="hidden" name="id" value='<%=rs.getString("id")%>'>
            <div class="form-group">
                <label style="color:white;">Car Name</label>
                <input type="text" class="form-control" name="carname" value='<%=rs.getString("CarName")%>'>
            </div>
            <div class="form-group">
                <label style="color:white;">Sharing Start</label>
                <input type="date" class="form-control" name="sharingstart" value='<%=rs.getDate("SharingStart")%>'>
            </div>
            <div class="form-group">
                <label style="color:white;">Sharing End</label>
                <input type="date" class="form-control" name="sharingend" value='<%=rs.getDate("SharingEnd")%>'>
            </div>
            <div class="form-group">
                <label style="color:white;">Name</label>
                <input type="text" class="form-control" name="name" value='<%=rs.getString("Name")%>'>
            </div>
            <div class="form-group">
                <label style="color:white;">Mobile</label>
                <input type="text" class="form-control" name="mobile" value='<%=rs.getString("Mobile")%>'>
            </div>
            <div class="form-group">
                <label style="color:white;">Email</label>
                <input type="text" class="form-control" name="email" value='<%=rs.getString("Email")%>'>
            </div>
            <%
                
            %>
            <button type="submit" class="button">Submit</button>
        </form>
    </body>
</html>
<%
    String a = request.getParameter("id");
    String b = request.getParameter("carname");
    String c = request.getParameter("sharingstart");
    String d = request.getParameter("sharingend");
    String e = request.getParameter("name");
    String f = request.getParameter("mobile");
    String g = request.getParameter("email");
    if(a!=null && b!=null && c!=null && d!=null && e!=null && f!=null && g!=null)
    {
        String query = "update carsharereport set CarName=?,SharingStart=?,SharingEnd=?,Name=?,Mobile=?,Email=? where id='"+a+"'";
        ps = conn.prepareStatement(query);
        ps.setString(1,b);
        ps.setString(2,c);
        ps.setString(3,d);
        ps.setString(4,e);
        ps.setString(5,f);
        ps.setString(6,g);
        ps.executeUpdate();
        response.sendRedirect("CarShareReport.jsp");
    }}
%>