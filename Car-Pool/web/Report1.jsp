<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Message</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
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
            color:#f4f4f5;
        }
        h3
        {
            font-family:Trebuchet MS;
            color:#34495e;
        }

</style>
    </head>
    <body>
        <%if(session.getAttribute("Check_Session")== null)
        {
            response.sendRedirect("employee.jsp");
        }
        %>
    <jsp:include page="empnav.jsp"/><br><br><br><br><br>
       <center>
        <div style="
        
            width: 600px;
            box-sizing: border-box;
            background: rgba(0,0,0,.5);
            box-shadow: 0 15px 25px rgba(0,0,0,.6);
            border-radius: 10px;
        
        " >
        <form action="ReportInsert1.jsp" method="post" onSubmit="return validate(this)">
            <h2 style="color:white;">Employee Report</h2>
                <center style="color:white;">
                    <jsp:include page="ReportServlet"/>
                 </center>
                <label>EmpID:</label>&nbsp&nbsp&nbsp&nbsp&nbsp
                <input type="text" name="eid" placeholder="Enter ID"><br><br>
                <label>Email: </label>&nbsp&nbsp&nbsp&nbsp&nbsp
                <input type="text" name="email" placeholder="Enter Email"><br><br>
                <label>Enter Text: </label>&nbsp&nbsp&nbsp&nbsp&nbsp
                <textarea  name="Report" placeholder="Enter Text" style="height:50px;overflow:scroll"></textarea><br><br>
                    <button type="submit"  class="button">Submit</button>
        </form><br>
        </div>  
       </center>
    </body>
</html>
