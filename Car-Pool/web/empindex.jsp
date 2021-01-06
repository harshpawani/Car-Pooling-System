
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee Index</title>
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
        <!-- Google Fonts -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
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
        <%if(session.getAttribute("Check_Session")== null)
        {
            response.sendRedirect("EmployeeLogin.jsp");
        }
        %>
          <h1 style="color: greenyellow;" align="center">Welcome to Car Pooling <%out.println(session.getAttribute("username"));
                if(session.getAttribute("username")==null)
                    {
                        response.sendRedirect("employee.jsp");
                    }%> </h1><br>
                
                <div align="center" style="color:lime; font-family: Helvetica,Arial,sans-serif; font-size: 20px" class="container"> Carpools has also developed an advanced, secure carpooling system for corporations to provide for their staff. The corporate system calculates and reports savings of fuel and emissions and the trips avoided by an organizations staff.<br>
                            <br>
                            Carpools has also developed an advanced, secure carpooling system for corporations to provide for their staff. The corporate system calculates and reports savings of fuel and emissions and the trips avoided by an organizations staff.<br>
                            <br>
                            <br>
                </div>
    </body>
</html>
