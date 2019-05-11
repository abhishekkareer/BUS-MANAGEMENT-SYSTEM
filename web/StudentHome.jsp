
<%@page import="Model.Profile"%>
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
		
		font-size: 40px;
                border:1px solid grey;
                width: 100%;
                justify-content: center;
        }
        .container-right2
	{
		display: flex;
		background-color:#ffffff;
		flex-wrap: wrap;
		
		align-items: center;
		font-size: 40px;
                border:1px solid grey;
                width: 100%;
                
                
        }
        .container-dash
	{
		display: flex;
		background-color:#ffffff;
		flex-wrap: wrap;
		
		
		
                border:1px solid grey;
                width: 100%;
                
                
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
     .contact-left{ 
        padding:5px;
        font-family: courier new;
        float: left; 
        background-color:lightblue;
        height: 600px;
        border-right: 2px solid black;
        flex:1;
     }
     .contact-right{
         padding:5px;
          font-family: courier new;
         float:right;
         background-color:lightblue;
         height: 600px;
         flex:1;
         border-left: 2px solid black;
     }
     .tab1 td{
         font-size: 25px;
     }
     .tab2 td{
         font-size: 25px;
     }
     .dashtab{
         background-color: lightblue;
         width:1000px;
     }
     .dashtab th{
         
         font-size:35px;
         font-family: courier new;
     }
     .dashtab td{
         font-size: 20px;
         font-family: courier new;
     }
     .display-left
     {
         display: flex;
         width: 100%;
         height: 500px;
         padding:10px;
         background-color: lightblue;
         justify-content: center;
         align-items: center;
         color: black;
         margin: 0 auto;
         margin-left: 0px;
     }
     .adjust
     {
         font-family: courier new;
         font-size:25px;
         width: 95%;
         height: 500px;
         background-color: lightblue;
     }
     .adjust td,th
     {
         font-family: Arial;
     }
</style>
        <script src="jquery-3.3.1.js">
	</script>
        <script>
		$(document).ready(function()
		{
                    $("#div2").hide();
                    $("#div3").hide();
                    $("#div1").show();
		});
	</script>
        <script>
		$(document).ready(function()
		{
                    $("#btn").click(function()
			{
				$("#div2").show();
                                $("#div1").hide();
                                $("#div3").hide();
			});
                        $("#btn1").click(function()
			{
				$("#div3").show();
                                $("#div1").hide();
                                $("#div2").hide();
			});
		});
	</script>
<script>
	function Home()
	{
		window.open("AdminHome.jsp");
	}
	function feedback()
	{
		window.open("feedback.jsp");
	}
        function request()
        {
                window.open("Addservlet");
        }
        function BusRoute()
        {
            window.open("StudentDispServlet");
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

	<div class="container">
		<div class="container-left">
                    <input type="button" class="b" value="Dash Board" id="btn1">
			<input type="button" class="b" value="Notice">
                        <input type="button" class="b"  value="Bus Routes" onclick="BusRoute()">
                        <input type="button" class="b" value="FeedBack" onclick="feedback()">
                        <input type="button" class="b" value="Contact Us" id="btn">
                        <input type="button" class="b" value="Logout" onclick="logout()">
                </div>
     <div class="container-right" id="div1" ><h2>Welcome:-<%=session.getAttribute("Name").toString()%></h2>
     </div>
     <div class="container-right2" id="div3">
<div class="display-left">
    <table class="adjust">
        <tr><th colspan="7" style="font-size:40px;">DASHBOARD</th></tr>
         <%
             try
             {
             String option = (String) request.getSession().getAttribute("option");
             List <Profile> list = (List<Profile>) request.getSession().getAttribute("list");
             if(list==null)
             {
                 System.out.println("NULL");
             }
             else
             {
              for(Profile Disp :list)
              {
                  %>
                 <tr><td>Id</td><td>:</td><td><%=Disp.getId()%></td><td></td><td>Name</td><td>:</td><td><%=Disp.getName()%></td></tr>
                 <tr><td>Contact</td><td>:</td><td><%=Disp.getContact()%></td><td></td><td>Guardian Name</td><td>:</td><td><%=Disp.getParentName()%></td></tr>
                 <tr><td>Email</td><td>:</td><td><%=Disp.getEmail()%></td><td></td><td>Parent Contact</td><td>:</td><td><%=Disp.getParentContact()%></td></tr>
                 <tr><td>Blood Group</td><td>:</td><td><%=Disp.getBloodGroup()%></td><td></td><td>Address</td><td>:</td><td><%=Disp.getAddress()%></td></tr>
                  <tr><td>Bus Route No</td><td>:</td><td><%=Disp.getRouteNo()%></td></tr>
         <%
        HttpSession httpsession=request.getSession();
        httpsession.setAttribute("routeno",Disp.getRouteNo());
              }
             }
             }
             catch(Exception e)
             {
                 System.out.println(e);
             }
         %>
        
            </table>
</div>
     </div>
	
     <div  class="container-right2" id="div2">
         <div class="contact-left">
         <table align="center" class="tab1">
             <tr><th colspan="3">UNI ADDRESS</th></tr>
             <tr><td>Address</td><td>:</td><td>Kalu Jhandaa</td></tr>
             <tr><td>Phone Number</td><td>:</td><td>12345689</td></tr>
             <tr><td>Email</td><td>:</td><td>abc@gmail.com</td></tr>
             <tr><td>Working Hours</td><td>:</td><td>10:00AM-04:15Pm</td></tr>
         </table>
         </div>
         <div class="contact-right">
             <table align="center" class="tab2">
                 <tr><th colspan="3">ADMIN CONTACT</th></tr>
                 <tr><td>Name</td><td>:</td><td>XYZ</td></tr>
                 <tr><td>Phone</td><td>:</td><td>7894651323</td></tr>
                 <tr><td>Email</td><td>:</td><td>ABC@GMAIL.COM</td></tr>
                 <tr><td>Mobile</td><td>:</td><td>641651</td></tr>
             </table>
         </div>
     </div>
     </div>
</body>
</html>