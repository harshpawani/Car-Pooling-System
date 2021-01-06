
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee Registration</title>
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
            height: 32px;
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
  <script language="javascript">
function validateForm(formObj){
	if(formObj.eid.value.length==0){
		alert("Please Enter your first name");
		formObj.eid.focus();
		return false;
	}
		if(formObj.firstname.value.length==0){
		alert("Please Enter your first name");
		formObj.firstname.focus();
		return false;
	}
	if(formObj.lastname.value.length==0){
		alert("Please Enter your last name");
		formObj.lastname.focus();
		return false;
	}
	if(formObj.cno.value.length==0){
		alert("Enter user name");
		formObj.cno.focus();
		return false;
	}
	
   var filter = /^\s*[\w\-\+_]+(\.[\w\-\+_]+)*\@[\w\-\+_]+\.[\w\-\+_]+(\.[\w\-\+_]+)*\s*$/;
  var ck_password = /^[A-Za-z0-9!@#$%^&*]{6,20}$/;  
		if(!filter.test(regform.email.value))
	 {
	alert("Please enter valid Email");
		formObj.email.focus();
		return false;
	}
	var ck_contact=/^([0-9]{10})/;
	if(!ck_contact.test(regform.contact.value))
	 {
	alert("Please enter 10 Digites phone number1 ");
		formObj.contact.focus();
		return false;
	}
		if(!ck_password.test(regform.password.value))
	 {
	alert("Please enter valid Password with a-z,0-9,specialCharacters,minimum 6 characters");
		formObj.password.focus();
		return false;
	}
	
	if(formObj.password.value.length!=formObj.password2.value.length){
		alert("Enter Matching Password");
		formObj.password2.focus();
		return false;
	}
}
</script>
<script type="text/javascript">
function Confirm(form){
alert("Registration Successful!"); 
form.submit();
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
</nav><br><br><br><br><br>
    
       <center>
           <div style="
            width: 600px;
            box-sizing: border-box;
            background: rgba(0,0,0,.5);
            box-shadow: 0 15px 25px rgba(0,0,0,.6);
            border-radius: 10px;">
        <form action="edetails.jsp" method="POST">
            <h2>Employee Registration</h2>
                <label>Employee ID:</label>&nbsp&nbsp&nbsp&nbsp&nbsp
                <input type="text" name="eid" placeholder="Enter ID"><br><br>
                <label>First Name:</label>&nbsp&nbsp&nbsp&nbsp&nbsp
                <input type="text" name="firstname" placeholder="Enter First Name:"><br><br>
                <label>Last Name: </label>&nbsp&nbsp&nbsp&nbsp&nbsp
                <input type="text"  name="lastname" placeholder="Enter Last Name:"><br><br>
                <label>E-mail: </label>&nbsp&nbsp&nbsp&nbsp&nbsp
                <input type="text" name="email" placeholder="Enter E-mail:"><br><br>
                <label>Phone No.: </label>&nbsp&nbsp&nbsp&nbsp&nbsp
                <input type="text" name="contact" placeholder="Enter Phone Number"><br><br>
                <label>Username: </label>&nbsp&nbsp&nbsp&nbsp&nbsp
                <input type="text" name="username" placeholder="Enter Username"><br><br>
                <label>Password: </label>&nbsp&nbsp&nbsp&nbsp&nbsp
                <input type="password" name="password" placeholder="Enter Password"><br><br>
                <label>Confirm Password: </label>&nbsp&nbsp&nbsp&nbsp&nbsp
                <input type="password" name="password2" placeholder="Reenter Password"><br><br>
                <label>Select Question:</label>&nbsp&nbsp&nbsp&nbsp&nbsp
                    <select name="Question">&nbsp&nbsp&nbsp&nbsp&nbsp
                        <option>---Select Question---</option>
                        <option>What is your favorite color?</option>
                        <option>What is your favorite car?</option>
                        <option>What is name of your best friend?</option>
                    </select><br><br>
                <label>Answers:</label>&nbsp&nbsp&nbsp&nbsp&nbsp
                <input type="text" name="Answer" placeholder="Enter Answer"><br><br>
                    <button type="submit"  class="button">Submit</button>
        </form><br>
        </div>  
       </center>
    </body>
</html>
