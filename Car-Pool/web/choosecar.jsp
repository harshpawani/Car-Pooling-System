<%@page import="java.io.Writer"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.Base64"%>
<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="image.image"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="DAO.DBCon"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Choose Car</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
   <style>
       table{align-self: center;}
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
            height: 32px;
        }
        h3
        {
            color:#FC8D07;
        }

        .a {
        position: relative;
        display: inline-block;
        padding: 10px 20px;
        color: #03e9f4;
        font-size: 16px;
        text-decoration: none;
        overflow: hidden;
        transition: .5s;
        letter-spacing: 1px
        }

        .a:hover {
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
            font-size: 24px;
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
        <jsp:include page="empnav.jsp"/><br><br><br>
    <center>
        <div style=" 
            width: 600px;
            box-sizing: border-box;
            background: transparent;
            box-shadow: none;
            border-radius: 10px;
            align-self: center;
        ">
            <h1 style="color:cyan;">Choose A Perfect Car For Your Ride</h1>
        <table style="width:100%" align="center">
         
                <%
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/carpooling","root","");
                         Statement st=conn.createStatement();
                        String ul = (String)session.getAttribute("username");
                         String q = request.getParameter("q");
                         String f = request.getParameter("From");
                         String t = request.getParameter("To");
                         String fd = request.getParameter("fromdate");
                         String td = request.getParameter("todate");
                         String  data = "select * from carreport where CarFrom like '%"+f+"%' or  CarTo like '%"+t+"%' or  DateFrom like '%"+fd+"%' or  DateTo like '%"+td+"%'";
                         ResultSet rs=st.executeQuery(data);
                            while(rs.next()){     
                %>
            <tr>
                <td><td><div style="
            width: 550px;
            box-sizing: border-box;
            background: rgba(0,0,0,.5);
            box-shadow: 0 15px 25px rgba(0,0,0,.6);
            border-radius: 10px;
            align-self: center;"><br>&nbsp&nbsp&nbsp&nbsp&nbsp<label style="color:cyan;">Name:  </label>:<label><b><%=rs.getString("Name")%></b></label><br>
                                    <a href='bookcar.jsp?u=<%=rs.getString("Name")%>' style="float:right;" class="a">Book Now</a>
                        &nbsp&nbsp&nbsp&nbsp&nbsp<label style="color:cyan;">Company:  </label>:<label><%=rs.getString("Company")%></label><br>
                        &nbsp&nbsp&nbsp&nbsp&nbsp<label style="color:cyan;">Type:  </label>:<label><%=rs.getString("type")%></label><br>
                        &nbsp&nbsp&nbsp&nbsp&nbsp<label style="color:cyan;">Seats:  </label>:<label><%=rs.getString("Seats")%></label>&nbsp<label>Seater</label><br>
                        &nbsp&nbsp&nbsp&nbsp&nbsp<label style="color:cyan;">Price:  </label>:<label><%=rs.getString("Price")%></label><br>
                                                        </div><br><br></td>
            </tr>
                
                <%     
                }%>

        </table>
                </div>
    </center>
                <br>
    </body>
</html>
