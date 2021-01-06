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
        <title>Car Report</title>
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
        <jsp:include page="adminnav.jsp"/><br><br><br>
          <h1 style="color: white;" align="center">Welcome to Car Pooling <%out.println(session.getAttribute("uname"));
                if(session.getAttribute("uname")==null)
                    {
                        response.sendRedirect("admin.jsp");
          }%> </h1>
        <p><br/></p>
        <div class="row">
            <div class="col-md-4">
                <h2 style="color:white;">Car Report</h2>
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
                <th>SrNo.</th>
                <th>Owner</th>
                <th>Company</th>
                <th>Name</th>
                <th>Number</th>
                <th>Seats</th>
                <th>Price</th>
                <th class="text-center">Action</th>
            </tr>
                <% 
                    try{
                        Connection conn=DBCon.getConnection();
                         Statement st=conn.createStatement();
                        String ul = (String)session.getAttribute("uname");
                         String q = request.getParameter("q");
                         String data;
                         if(q!=null)
                         {
                             data = "select * from carreport where Owner like '%"+q+"%' or Name like '%"+q+"%'or Number like '%"+q+"%' or Seats like '%"+q+"%' ";
                         }
                         else
                         {
                             data = "select * from carreport";
                         }
                         ResultSet rs=st.executeQuery(data);
                         while(rs.next())
                         {
                             %>
                             <tr style="color: white; font-size: 16px; font-family: arial; background: linear-gradient(#141e30, #243b55); font-family: Abril Fatface;">
                                <td><%=rs.getInt("SrNo")%></td>
                                <td><%=rs.getString("Owner")%></td>
                                <td><%=rs.getString("Company")%></td>
                                <td><%=rs.getString("Name")%></td>
                                <td><%=rs.getString("Number")%></td>
                                <td><%=rs.getString("Seats")%></td>
                                <td><%=rs.getString("Price")%></td>
                                <td class="text-center">
                                    <a href='AdminEDITcarreport.jsp?u=<%=rs.getString("SrNo")%>' class="btn btn-warning">Edit</a>
                                    <a href='AdminDELETEcarreport.jsp?d=<%=rs.getString("SrNo")%>' class="btn btn-danger">Delete</a>
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
