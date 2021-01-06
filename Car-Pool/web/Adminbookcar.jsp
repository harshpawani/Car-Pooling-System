<%@page import="DAO.DBCon"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
         <title>Car Booking</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
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
    <jsp:include page="adminnav.jsp"/><br><br><br><br>
    
       <center>
           <div style=" 
            width: 600px;
            box-sizing: border-box;
            background: transparent;
            box-shadow: none;
            border-radius: 10px;
            align-self: center;">
        <%
             Connection conn = null;
             Statement st = null;
             ResultSet rs = null;
             Class.forName("com.mysql.jdbc.Driver");
             conn = DriverManager.getConnection("jdbc:mysql://localhost/carpooling","root","");
             PreparedStatement ps = null;
        %>
        <form method="POST">
        <table style="width:100%" align="center">
            <%
                st = conn.createStatement();
                String u = request.getParameter("u");
                String data = "select * from carreport where Name='"+u+"'";
                rs = st.executeQuery(data);
                while(rs.next()){
            %>
            <tr>
                <td><td><div style="
            width: 600px;
            box-sizing: border-box;
            background: rgba(0,0,0,.5);
            box-shadow: 0 15px 25px rgba(0,0,0,.6);
            border-radius: 10px;">
                        &nbsp&nbsp&nbsp&nbsp&nbsp<label style="color:cyan;" style="float:right;">Date Start:  </label>:<label><%=rs.getString("DateFrom")%></label><br><br>&nbsp&nbsp&nbsp&nbsp&nbsp<label style="color:cyan;">Name:  </label>:<label><b><%=rs.getString("Name")%></b></label><br>
                        &nbsp&nbsp&nbsp&nbsp&nbsp<label style="color:cyan;">Company:  </label>:<label><%=rs.getString("Company")%></label><br>
                        &nbsp&nbsp&nbsp&nbsp&nbsp<label style="color:cyan;">Type:  </label>:<label><%=rs.getString("type")%></label><br>
                        &nbsp&nbsp&nbsp&nbsp&nbsp<label style="color:cyan;">Seats:  </label>:<label><%=rs.getString("Seats")%></label>&nbsp<label>Seater</label><br>
                        &nbsp&nbsp&nbsp&nbsp&nbsp<label style="color:cyan;">Price:  </label>:<label><%=rs.getString("Price")%></label><br>
                        &nbsp&nbsp&nbsp&nbsp&nbsp<label style="color:cyan;">Pick Up:  </label>:<label><%=rs.getString("pickup")%></label><br>
                                                        </div><br><br></td>
            </tr>
            <%}%>
        </table>
       </form> </div>
       <div style="
            width: 600px;
            box-sizing: border-box;
            background: rgba(0,0,0,.5);
            box-shadow: 0 15px 25px rgba(0,0,0,.6);
            border-radius: 10px;">
           <form action="AdminaddsharecarDB.jsp" method="POST"><br>
        <%
            String  data1 = "select * from carreport where Name='"+u+"'";
             rs = st.executeQuery(data1);
              while(rs.next()){  
          %>
           
                <input type="text" hidden name="carname" value='<%=rs.getString("Name")%>'>
            
                <input type="text" hidden name="sharingstart" value='<%=rs.getString("DateFrom")%>'>
            
                <input type="text" hidden name="sharingend" value='<%=rs.getString("DateTo")%>'>
            
                <input type="text" hidden name="pickup" value='<%=rs.getString("pickup")%>'>
            
            <%}%>
            <h2 style="color:cyan;">Book Your Car (Fill Your Details)</h2><br>
            <p>
                <label>Name</label>&nbsp&nbsp&nbsp&nbsp&nbsp
                <input type="text" name="name" placeholder="Enter Name"><br><br>
            </p>
            <p>
                <label>Mobile</label>&nbsp&nbsp&nbsp&nbsp&nbsp
                <input type="text" name="Mobile" placeholder="Enter Mobile"><br><br>
            </p>
            <p>
                <label>Email</label>&nbsp&nbsp&nbsp&nbsp&nbsp
                <input type="text" name="Email" placeholder="Enter Email"><br><br>
            </p>
            <p>
                <label>ID Number </label>&nbsp&nbsp&nbsp&nbsp&nbsp
                <input type="text" name="ID" placeholder="Enter ID"><br><br>
            </p>
            <p>
                <button type="submit"  align="center" class="button">Submit</button>
            </p>    
           </form>
        </div>  
       </center>
</body>
</html>