
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
	<title>Home_page</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<style>
	body
	{
		margin :0;
                padding:5px;
	}
	.header
	{
		height: 150px;
		background-color: #b3b3ff;
		padding : 20px;
		display: flex;
		align-items: center;
		flex-wrap: wrap;
		box-sizing: border-box;
		position:relative;
		 font-family:Book Antiqua;
	}
	h2
	{
		margin-left: 20px;
		display: flex;
		font-size: 40px;
		text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;
		flex-wrap: wrap;
		justify-content: center;
		align-items: center; 
	}
	button
	{
		font-family:Book Antiqua;
		border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  background-color: #ffffff; 
  color: black; 
  border: 1px solid #008CBA;
  border-radius: 15px;
	}
button:hover {
  background-color: #ffcccc;
  color: #ffffff;
  font-size: 20px;
  text-shadow: 0 0 3px #FF0000;
}

	.container
	{
		display: flex;
                margin-top: 5px;
	}
	.container-left
	{
		background-color: #ffffff;
		flex-wrap: wrap;
		height: 500px;
		margin-left: 5px;
                padding:5px;
	}
	.container-right
	{
		display: flex;
		background-color: #ffffff;
		flex-wrap: wrap;
		margin:0 auto;
		align-items: center;
		font-size: 40px;
                border:1px solid grey;
                width: 100%;
                justify-content: center;
        }
	.footer
	{
		color : black;
		display: flex;
		height: 60px;
		justify-content: center;
		align-items: center;
		font-size: 20px;
		background-color: #e6f7ff;
		flex-wrap: wrap;
		text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;
	}
	.b
	{
		font-family:Book Antiqua;
		display: flex;
		font-size: 40px;
		margin-top: 3px;
		background-color: #FFFFFF;
		border: 1px solid dodgerblue;
        color: black;
        padding: 15px 32px;
        text-decoration: none;
        font-size: 16px;
        width: 170px;
        justify-content:center;
	}


 .b:hover {
  background-color: #e6e6ff;
  font-size: 20px;
  text-shadow: 0 0 3px #FF0000;
     }
     .footer-edit
     {
     	display: flex;
     	flex-wrap: wrap;
     	margin-left: 10px;
     }
</style>
<script>
	function Home()
	{
		window.open("AdminHome.jsp");
	}
	function feedback()
	{
		window.open("DispFeedbackServlet");
	}
        function request()
        {
                window.open("Addservlet");
        }
        function BusRoute()
        {
            window.open("DispServlet");
        }
        function Add()
        {
            window.open("tableinput.html");
        }
        function logout()
        {
            window.open("Logout");
        }
        function Notice()
        {
            window.open("#");
        }
</script>
</head>
<body>
	<div class="header"><h2>BUS MANAGER</h2></div>
        <%String option = (String) request.getSession().getAttribute("option");
         %>
	<div class="container">
		<div class="container-left">
                    <input type="button" class="b" value="Requests" onclick="request()">
			<input type="button" class="b" value="Add Notice">
                        <input type="button" class="b"  value="Bus Routes" onclick="BusRoute()">
                        <input type="button" class="b" value="Add Bus Routes" onclick="Add()">
                        <input type="button" class="b" value="Feedbacks" onclick="feedback()">
                        <input type="button" class="b" value="Logout" onclick="logout()">
                </div>
     <div class="container-right" ><h2>Welcome:-<%=session.getAttribute("Name").toString()%></h2>
     </div>
	</div>
</body>
</html>