<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Index</title>
        <style>        h2 
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
            font-size:36px;
            color:cyan;
        }
        h3
        {
            font-family:Trebuchet MS;
            color:#34495e;
        }
    </style>
    </head>
    <body>
        <jsp:include page="adminnav.jsp"/><br><br><br>
          <h1 style="color: greenyellow;" align="center">Welcome to Car Pooling  <%out.println(session.getAttribute("uname"));
                if(session.getAttribute("uname")==null)
                    {
                        response.sendRedirect("admin.jsp");
                    }%> </h1><br>
    <center>
        <div style=" 
            width: 100%;
            box-sizing: border-box;
            background: transparent;
            box-shadow: none;
            border-radius: 10px;
            align-self: center;
            "><form>
            <label>Carpools has also developed an advanced, secure carpooling system for corporations to provide for their staff. The corporate system calculates and reports savings of fuel and emissions and the trips avoided by an organizations staff.<br>
                            <br>
                            Carpools has also developed an advanced, secure carpooling system for corporations to provide for their staff. The corporate system calculates and reports savings of fuel and emissions and the trips avoided by an organizations staff.<br>
                            <br>
                            <br></label>
            </form></div></center>
    </body>
</html>
