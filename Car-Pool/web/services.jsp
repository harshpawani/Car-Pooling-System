<%@page import="DAO.DBCon"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <title>Services</title>
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
        * {
                box-sizing: border-box;
        }
        body {
                font-family: 'Montserrat', sans-serif;
                line-height: 1.6;
                margin: 0;
                min-height: 100vh;
        }
        ul {
          margin: 0;
          padding: 0;
          list-style: none;
        }


        h2,
        h3,
        a {
                color: #f4f4f4;
        }

        a {
                text-decoration: none;
        }



        .logo {
                margin: 0;
                font-size: 1.45em;
        }

        .main-nav {
                margin-top: 5px;

        }
        .logo a,
        .main-nav a {
                padding: 10px 15px;
                text-transform: uppercase;
                text-align: center;
                display: block;
        }

        .main-nav a {
                color: #f4f4f4;
                font-size: .99em;
        }

        .main-nav a:hover {
                color: #718daa;
        }



        .header {
                padding-top: .5em;
                padding-bottom: .5em;
                border: 1px solid #a2a2a2;
                background-color: rgba(0,0,0,.5);
                -webkit-box-shadow: 0px 0px 14px 0px rgba(0,0,0,0.75);
                -moz-box-shadow: 0px 0px 14px 0px rgba(0,0,0,0.75);
                box-shadow: 0px 0px 14px 0px rgba(0,0,0,0.75);
                -webkit-border-radius: 5px;
                -moz-border-radius: 5px;
                border-radius: 5px;
        }


        /* ================================= 
          Media Queries
        ==================================== */




        @media (min-width: 769px) {
                .header,
                .main-nav {
                        display: flex;
                }
                .header {
                        flex-direction: column;
                        align-items: center;
                .header{
                        width: 80%;
                        margin: 0 auto;
                        max-width: 1150px;
                }
                }

        }

        @media (min-width: 1025px) {
                .header {
                        flex-direction: row;
                        justify-content: space-between;
                }

        }
 </style>
    </head>
    <body>
        <header class="header">
	<h1 class="logo"><a href="adminindex.jsp">Car-Pool</a></h1>
      <ul class="main-nav">
          <li><a href="adminindex.jsp">AdminPage</a></li>
          <li><a href="Details.jsp">EmpDetails</a></li>
          <li><a href="services.jsp">Services</a></li>
          <li><a href="vemp.jsp">Employees</a></li>
          <li><a href="Report.jsp">Reports</a></li>
          <li><a href="adminregis.jsp">New Admin</a></li>
          <li><a href="admin.jsp" style="color:red;">Logout</a></li>
      </ul>
	</header> 
        <div class="container-fluid">
        <br>
<%!
String fname,lname;
%>
<%
try{
      Connection conn=DBCon.getConnection();
	  Statement st=conn.createStatement();
	  ResultSet rs=st.executeQuery("select * from services");
 ResultSetMetaData rmd = rs.getMetaData();

%><table class="table table-striped table-bordered" style="color:lime;" border="1">
    <tr class="thead-dark" style="color:lime;">>
 <%  for(int i=1;i<=rmd.getColumnCount();i++)
   {%><th><%=rmd.getColumnName(i) %></th>
   <%
   }
   while(rs.next())
	{%><tr class="thead-dark" style="color:lime;">>
        <% for(int i=1;i<=rmd.getColumnCount();i++){ %>
        <td><%=rs.getString(i)%></td><% } %> </tr>
		</tr>
		<%
   }
}catch(Exception e)
{
out.println(e);
}
%>
<br>
</div>
    </body>
</html>
