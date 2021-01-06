<%@page import = "java.sql.*"%>
<%@page import="DAO.DBCon"%> 
<%@page import="javax.servlet.http.HttpSession"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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
            font-size: 24px;
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
        #myNavbar #home:hover{color:cyan;}

        #myNavbar #admin:hover{color:cyan;}

        #myNavbar #emp:hover{color:cyan;}

        #myNavbar .navbar-nav .active{
                font-family: monospace;
           color: #00ffe1;
              font-size: 18px;
             font-weight: bold;
        }

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
            width: 100%;
        }

        #myNavbar .dropdown:hover .dropdown-menu{
                display: block;
                color: #000;

        }
 </style>
    </head>
    <body>
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid" style="box-shadow: 0 15px 25px rgba(0,0,0,.6);">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" style="color: cyan;" href="index.jsp">CAR-POOL</a>
    </div>
      <center> <div style="float:right;" class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li ><a href="index.jsp" id="home">Home</a></li>
        <li><a href="admin.jsp" id="admin">Administrator</a></li>
        <li><a href="employee.jsp" id="emp">Employee</a></li>    
      </ul>
          </div></center>
  </div>
</nav><br><br><br><br><br><br>
<%if(session.getAttribute("username")==null)
    {
        response.sendRedirect("employee.jsp");
    }%>
    
       <center>
           <div style="
            width: 600px;
            box-sizing: border-box;
            background: rgba(0,0,0,.5);
            box-shadow: 0 15px 25px rgba(0,0,0,.6);
            border-radius: 10px;">
               <form action="ChangePaswdDB" method="post">
                   <h2 style="color:white;">Change Password</h2>
                   <label>New Password: </label>
                   <input type="password" name="newpass" required placeholder="Enter Password"><br><br>
                   <label>Confirm Password: </label>
                   <input type="text" name="confpass" required placeholder="ReEnter Password"><br><br>
                   <input type="text" name="t1" value="<%out.println(session.getAttribute("username"));%>" hidden="yes"/><input type="submit" class="button" name="b1"/>   
            </form><br>
        </div>    
       </center>
</body>
</html>
