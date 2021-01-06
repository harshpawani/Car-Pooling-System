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
        <title>Edit Car Share Report</title>
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
        <jsp:include page="adminnav.jsp"/><br><br><br>
    <center>
        <div style=" 
            width: 600px;
            box-sizing: border-box;
            background: transparent;
            box-shadow: none;
            border-radius: 10px;
            align-self: center;
        " >
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
                <label>Car Name</label>
                <input type="text" class="form-control" name="carname" value='<%=rs.getString("CarName")%>'>
            </div>
            <div class="form-group">
                <label>Sharing Start</label>
                <input type="date" class="form-control" name="sharingstart" value='<%=rs.getDate("SharingStart")%>'>
            </div>
            <div class="form-group">
                <label>Sharing End</label>
                <input type="date" class="form-control" name="sharingend" value='<%=rs.getDate("SharingEnd")%>'>
            </div>
            <div class="form-group">
                <label>Name</label>
                <input type="text" class="form-control" name="name" value='<%=rs.getString("Name")%>'>
            </div>
            <div class="form-group">
                <label>Mobile</label>
                <input type="text" class="form-control" name="mobile" value='<%=rs.getString("Mobile")%>'>
            </div>
            <div class="form-group">
                <label>Email</label>
                <input type="text" class="form-control" name="email" value='<%=rs.getString("Email")%>'>
            </div>
            <%
                
            %>
            <button type="submit" class="button">Submit</button>
        </form>
        </div>
    </center>
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
        if((ps.executeUpdate())>0)
        {
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Records Updated Successfully!!!');");
            out.println("location='CarShareReportAdmin.jsp';");
            out.println("</script>"); 
        }
    }}
%>