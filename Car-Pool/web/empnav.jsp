
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="font" href="fonts/Uni Sans Heavy Italic.otf">
        <style>      
        .navbar-inverse{
	background: rgba(0,0,0,.5);
	border-color:transparent;
        }

        .navbar-inverse .navbar-brand{
                color: #fff;
                font-family: arial;
                font-size: 30px;
                margin-top: 5px;
                margin-right: 35px; 
        }

        #myNavbar .navbar-nav li a{
                color: #fff;
                font-size: 18px;
                font-family: arial;
                margin-top: 5px;


        }

        #myNavbar .navbar-nav .active{
                font-family: monospace;
           color: #00ffe1;
              font-size: 18px;
             font-weight: bold;
        }
        #myNavbar #adminindex:hover{color:cyan;}
        
        #myNavbar #admin:hover{color:cyan;}
        
        #myNavbar #report:hover{color:cyan;}
        
        #myNavbar #myacc:hover{color:cyan;}
        
        #myNavbar #car:hover{color:cyan;}
        
        #myNavbar #pass:hover{color:cyan;}
        
        #myNavbar #mess:hover{color:cyan;}
        
        #myNavbar #logout:hover{color:red;}

        .dropdown{
                position: relative;
        }
        #myNavbar .dropdown-menu li a{
                color:  #000;
                font-size: 16px;
        }
        #myNavbar .dropdown-menu{
                display: none;
                position: absolute;	
                width: 150%;
                box-shadow: 0 13px 23px rgba(0,0,0,.4);
        }

        #myNavbar .dropdown:hover .dropdown-menu{
                display: block;
                background-color: #a2a2a2;
                color: #000;

        }
 </style>
    </head>
    <body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid" style="box-shadow: 0 14px 24px rgba(0,0,0,.5);">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" style="color: cyan; font-family:  Uni Sans Heavy Italic" href="adminindex.jsp">CAR-POOL</a>
    </div>
      <center> <div style="float:right;" class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li ><a href="empindex.jsp" id="adminindex">Home</a></li>
          <li><a href="Findcar.jsp" id="car">Find Car</a></li>
         <li class="dropdown">
        <a  href="#" id="admin">Administration
        <span class="caret"></span></a>
        <ul class="dropdown-menu" >
          <li><a href="CarReport.jsp"><center><b>My Car</b></center></a></li>
          <li class="divider"></li>
          <li><a href="CarShareReport.jsp"><center><b>My Sharing</b></center></a></li>
          <li class="divider"></li>
          <li><a href="Addcar.jsp"><center><b>Add New Car</b></center></a></li>
        </ul>
         </li>

          <li><a href="empaccount.jsp" id="myacc">My Account</a></li>
          <li><a href="Report1.jsp" id="mess">Message</a></li>
          <li><a href="EmpChangePass.jsp" id="pass">Change Password</a></li>
          <li><a href="emplogout.jsp" id="logout">Logout</a></li>  
      </ul>
          </div></center>
  </div>
</nav>
    </body>
</html>
