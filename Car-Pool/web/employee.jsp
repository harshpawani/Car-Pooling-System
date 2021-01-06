<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <title>Employee Login</title>
<style>
html {
  height: 100%;
}
body {
  margin:0;
  padding:0;
  font-family: sans-serif;
  background: linear-gradient(#141e30, #243b55);
}

.login-box {
  position: absolute;
  top: 50%;
  left: 50%;
  width: 400px;
  padding: 40px;
  transform: translate(-50%, -50%);
  background: rgba(0,0,0,.5);
  box-sizing: border-box;
  box-shadow: 0 15px 25px rgba(0,0,0,.6);
  border-radius: 10px;
}

.login-box h2 {
  margin: 0 0 30px;
  padding: 0;
  color: #fff;
  text-align: center;
}

.login-box .user-box {
  position: relative;
}

.login-box .user-box input {
  width: 100%;
  padding: 10px 0;
  font-size: 16px;
  color: #fff;
  margin-bottom: 30px;
  border: none;
  border-bottom: 1px solid #fff;
  outline: none;
  background: transparent;
}
.login-box .user-box label {
  position: absolute;
  top:0;
  left: 0;
  padding: 10px 0;
  font-size: 16px;
  color: #fff;
  pointer-events: none;
  transition: .5s;
}

.login-box .user-box input:focus ~ label,
.login-box .user-box input:valid ~ label {
  top: -20px;
  left: 0;
  color: #03e9f4;
  font-size: 12px;
}


button{
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

.login-box button:hover {
  background: #03e9f4;
  color: #fff;
  border-radius: 5px;
  box-shadow: 0 0 5px #03e9f4,
              0 0 25px #03e9f4,
              0 0 50px #03e9f4,
              0 0 100px #03e9f4;
}

.login-box form a {
  position: relative;
  display: inline-block;
  padding: 10px 20px;
  color: #03e9f4;
  font-size: 13px;
  text-decoration: none;
  overflow: hidden;
  transition: .5s;
  letter-spacing: 1px
}

.login-box a:hover {
  background: #03e9f4;
  color: #fff;
  border-radius: 5px;
  box-shadow: 0 0 5px #03e9f4,
              0 0 25px #03e9f4,
              0 0 50px #03e9f4,
              0 0 100px #03e9f4;
}

.login-box a span {
  position: absolute;
  display: block;
}

.login-box a span:nth-child(1) {
  top: 0;
  left: -100%;
  width: 100%;
  height: 2px;
  background: linear-gradient(90deg, transparent, #03e9f4);
  animation: btn-anim1 1s linear infinite;
}

@keyframes btn-anim1 {
  0% {
    left: -100%;
  }
  50%,100% {
    left: 100%;
  }
}

.login-box a span:nth-child(2) {
  top: -100%;
  right: 0;
  width: 2px;
  height: 100%;
  background: linear-gradient(180deg, transparent, #03e9f4);
  animation: btn-anim2 1s linear infinite;
  animation-delay: .25s
}

@keyframes btn-anim2 {
  0% {
    top: -100%;
  }
  50%,100% {
    top: 100%;
  }
}

.login-box a span:nth-child(3) {
  bottom: 0;
  right: -100%;
  width: 100%;
  height: 2px;
  background: linear-gradient(270deg, transparent, #03e9f4);
  animation: btn-anim3 1s linear infinite;
  animation-delay: .5s
}

@keyframes btn-anim3 {
  0% {
    right: -100%;
  }
  50%,100% {
    right: 100%;
  }
}

.login-box a span:nth-child(4) {
  bottom: -100%;
  left: 0;
  width: 2px;
  height: 100%;
  background: linear-gradient(360deg, transparent, #03e9f4);
  animation: btn-anim4 1s linear infinite;
  animation-delay: .75s
}

@keyframes btn-anim4 {
  0% {
    bottom: -100%;
  }
  50%,100% {
    bottom: 100%;
  }
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
   <script language="javascript">
function validateForm(formObj){
	if(formObj.uname.value.length==0){
		alert("Please Enter your uname name");
		formObj.uname.focus();
		return false;
	}
	if(formObj.pws.value.length==0){
		alert("Please Enter your pws");
		formObj.pws.focus();
		return false;
    }
	  }
  </script>
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
</nav>
<div class="login-box">
  <h2>Employee Login</h2>
  <form action="EmpValid" action="POST" id="form">
    <div class="user-box">
      <input type="text" name="uname" required="">
      <label>Username</label>
    </div>
    <div class="user-box">
      <input type="password" name="pws" required="">
      <label>Password</label>
    </div>
      <center><button type="submit">Log In</button><br></center><br>
      <a href="EmpRegistration.jsp">Sign Up</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
      <a href='Forgotpassword.jsp'>Forgot Password</a>
  </form>
</div>
  </body>
</html>

			