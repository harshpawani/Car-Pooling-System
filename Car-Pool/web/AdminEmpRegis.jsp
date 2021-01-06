<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Employee Registration</title>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
        <link href="style/bootstrap.min.css" rel="stylesheet">
        <link href="style/buttons.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?">
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
 </style>
   <script language="javascript">
function validateForm(formObj)
        {
		if(formObj.id.value.length==0){
		alert("Please Enter your ID");
		formObj.id.focus();
		return false;
	}
	if(formObj.cno.value.length==0){
		alert("Enter user name");
		formObj.cno.focus();
		return false;
	}
	
   var filter = /^\s*[\w\-\+_]+(\.[\w\-\+_]+)*\@[\w\-\+_]+\.[\w\-\+_]+(\.[\w\-\+_]+)*\s*$/;
  var ck_password = /^[A-Za-z0-9!@#$%^&*]{6,20}$/;  
	var ck_contact=/^([0-9]{10})/;
		if(!ck_password.test(regform.password.value))
	 {
	alert("Please enter valid Password with a-z,0-9,specialCharacters,minimum 6 characters");
		formObj.password.focus();
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
    <jsp:include page="adminnav.jsp"/><br><br><br><br><br>
    
       <center>
           <div style="
            width: 600px;
            box-sizing: border-box;
            background: rgba(0,0,0,.5);
            box-shadow: 0 15px 25px rgba(0,0,0,.6);
            border-radius: 10px;">
        <form action="edetails1.jsp" method="POST">
            <h2 style="color: white;">Employee Registration</h2>
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