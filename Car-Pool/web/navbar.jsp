<!DOCTYPE html>
<html>
<head>
	<title>Navbar</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<style type="text/css">
.navbar-inverse{
	background: transparent;
	border-color:transparent;
}

.navbar-inverse .navbar-brand{
	color: #fff;
	font-family: monospace;
	font-size: 30px;
	margin-top: 5px;
	margin-right: 35px; 
}

#myNavbar .navbar-nav li a{
	color: #fff;
	font-size: 18px;
	font-family: monospace;
	margin-top: 5px;
	

}

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
<body>


	<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="navbar.html">The Providers</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li ><a href="#" class="active">Home</a></li>
         <li class="dropdown">
        <a  href="#">Category
        <span class="caret"></span></a>
        <ul class="dropdown-menu" >
          <li><a class="dropdown-header">Shirts</a></li>
          <li class="divider"></li>
          <li><a href="#">Childs</a></li>
          <li><a href="#">Adults</a></li>
        </ul>
      </li>

        <li><a href="#">Contact us</a></li>
        <li><a href="#">About us</a></li>
        <li><a href="#">Policy</a></li>        
      </ul>
    </div>
  </div>
</nav>

</body>
</html>