<%@page import="DAO.DBCon"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Add Car</title>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
      <link href="https://fonts.googleapis.com/css?">
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
            font-size: 16px;
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

</head>

<body>
        <jsp:include page="adminnav.jsp"/><br><br><br>
    
       <center>
        <div style="
            width: 600px;
            box-sizing: border-box;
            background: rgba(0,0,0,.5);
            box-shadow: 0 15px 25px rgba(0,0,0,.6);
            border-radius: 10px;">
            <form action="CarReportDB.jsp" method="POST">
            <h2 style="color: white;">Add A New Car</h2><br>
            <p>
                <label>Company</label>&nbsp&nbsp&nbsp&nbsp&nbsp
                <input type="text" name="company" placeholder="Enter Company"><br><br>
            </p>
            <p>
                <label>Car Name</label>&nbsp&nbsp&nbsp&nbsp&nbsp
                <input type="text" name="carname" placeholder="Enter Car Name"><br><br>
            </p>
            <p>
                <label>Car Number</label>&nbsp&nbsp&nbsp&nbsp&nbsp
                <input type="text" name="carnumber" placeholder="Enter Car Number"><br><br>
            </p>
            <p>
                <label>Car From</label>&nbsp&nbsp&nbsp&nbsp&nbsp
                <input type="text" name="from" placeholder="Enter From"><br><br>
            </p>
            <p>
                <label>Car To </label>&nbsp&nbsp&nbsp&nbsp&nbsp
                <input type="text" name="to" placeholder="Enter To"><br><br>
            </p>
            <p>
                <label>Start From Date </label>&nbsp&nbsp&nbsp&nbsp&nbsp
                <input type="date" name="fromdate" placeholder="Enter Password"><br><br>
            </p>
            <p>
                <label>End To Date</label>&nbsp&nbsp&nbsp&nbsp&nbsp
                <input type="date" name="todate" placeholder="Enter Answer"><br><br>
            </p>
            <p>
                <label>City</label>&nbsp&nbsp&nbsp&nbsp&nbsp
                <input type="text" name="city" placeholder="Enter city"><br><br>
            </p>
            <p>
                <label>Type</label>&nbsp&nbsp&nbsp&nbsp&nbsp
                <select name="type">
                    <option>---Select Car Type---</option>
                    <option>Hatchback</option>
                    <option>Sedan</option>
                    <option>MPV</option>
                    <option>SUV</option>
                </select><br><br>
            </p>
            <p>
                <label>Number of Seats</label>&nbsp&nbsp&nbsp&nbsp&nbsp
                <select name="seats">
                    <option>--Select Seats--</option>
                    <option>2</option>
                    <option class="disabled">3</option>
                    <option>4</option>
                    <option class="disabled">5</option>
                    <option>6</option>
                </select><br><br>
            </p>
            <p>
                <label>Price(optional)</label>&nbsp&nbsp&nbsp&nbsp&nbsp
                <input type="text" name="price" placeholder="Enter Price"><br><br>
            </p>
            <p>
                <label>PickUp Location</label>&nbsp&nbsp&nbsp&nbsp&nbsp
                <textarea name="pickup" ></textarea><br><br>
            </p>
                <button type="submit"  align="center" class="button">Submit</button>
            </p>    
        </form>
        </form><br>
        </div>  
       </center>
</body>
</html>