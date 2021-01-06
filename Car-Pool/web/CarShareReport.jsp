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
        <title>Car Share Report</title>
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
 </style>
    </head>
    <body>
    <jsp:include page="empnav.jsp"/><br><br><br>
          <h1 style="color: white;" align="center">Welcome to Car Pooling <%out.println(session.getAttribute("username"));
                if(session.getAttribute("username")==null)
                    {
                        response.sendRedirect("employee.jsp");
          }%> </h1>
        <p><br/></p>
        <div class="row">
            <div class="col-md-4">
                <h2 style="color:white;">Car Sharing Report</h2>
            </div>
            <div class="col-md-4">
                <form action="" method="GET">
                    <input type="text" class="form-control" name="p" placeholder="Search here....."
                </form>
            </div>
            <div class="col-md-4"></div>
        </div>
        <p></p>
        <table class="table table-bordered table-striped " align="center" style="color: black; box-shadow: 0 15px 25px rgba(0,0,0,.6);">
            <tr style="color: white; font-size: 16px; background-color: black; font-family: cabin;">
                <th>ID</th>
                <th>Car Name</th>
                <th>Sharing Start</th>
                <th>Sharing End</th>
                <th>Name</th>
                <th>Mobile No.</th>
                <th>Email</th>
                <th class="text-center">Action</th>
            </tr>
                <% 
                    try{
                        Connection conn=DBCon.getConnection();
                         Statement st=conn.createStatement();
                        String ul = (String)session.getAttribute("username");
                         String q = request.getParameter("q");
                         String data;
                         if(q!=null)
                         {
                             data = "select * from carsharereport where CarName like '%"+q+"%' or Name like '%"+q+"%'or Mobile like '%"+q+"%' or Email like '%"+q+"%' ";
                         }
                         else
                         {
                             data = "select * from carsharereport ";
                         }
                         ResultSet rs=st.executeQuery(data);
                         while(rs.next())
                         {
                             %>
                             <tr style="color: white; font-size: 16px; font-family: arial; background: linear-gradient(#141e30, #243b55); font-family: Abril Fatface;">
                                <td><%=rs.getInt("ID")%></td>
                                <td><%=rs.getString("CarName")%></td>
                                <td><%=rs.getString("SharingStart")%></td>
                                <td><%=rs.getString("SharingEnd")%></td>
                                <td><%=rs.getString("Name")%></td>
                                <td><%=rs.getString("Mobile")%></td>
                                <td><%=rs.getString("Email")%></td>
                                <td class="text-center">
                                    <a href='EDITsharereport.jsp?u=<%=rs.getString("id")%>' class="btn btn-warning">Edit</a>
                                    <a href='DELETEsharereport.jsp?d=<%=rs.getString("id")%>' class="btn btn-danger">Delete</a>
                                </td>
                              </tr>
                             <%
                         }
                    }
                    catch(Exception e)
                            {
                                out.println("Exception:"+e.getMessage());
                                e.printStackTrace();
                            }
                %>
            
        </table>
    </body>
</html>
