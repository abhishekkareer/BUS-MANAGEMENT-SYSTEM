
<%@page import="java.util.List"%>
<%@page import="Model.BusRoute"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            table
            {
                display:flex;
                text-align: center;
                justify-content: center;
                border-collapse: collapse;
                font-family: Courier New;
            }
            th,td
            {
                border-left: 1px solid  #ddd;
                border-right: 1px solid #ddd;
                border-bottom: 1px solid #ddd;
                padding: 15px;
            }
            tr:nth-child(odd)
            {
                background-color: lightgrey;
            }
        ul
        {
           list-style-type: none;
        }
        li
        {
            display: inline;
        }
        #div1
        {
            display:flex;
            height: 50px;
            padding: 10px;
            align-items: center;
            flex-wrap:wrap;
            color:black;
            background-color: #b3b3ff;
        }
        #div1 a
        {
            padding: 14px 16px ;
            height: 40px;
            text-decoration: none;
        }
        #div2
        {
            display:flex;
            justify-content: center;
            align-items: center; 
            flex-wrap:wrap;
            margin-top: 15px;
        }
        #div3
        {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100px;
            padding:10px;
            margin-top: 50px;
        }
/*         .button { 
  border: none;
  width: 400px;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 20px;
  cursor: pointer;
}

.button {
  background-color: #e7e7e7;
  color: black;
  border: 2px solid black;
}*/
        </style>
        <script src="jquery-3.3.1.js">
	</script>
        <script>
		$(document).ready(function()
		{
                    $("#div3").hide();
		});
	</script>
	<script>
		$(document).ready(function()
		{
                    $("#btn").click(function()
			{
				$("#div3").toggle();
                                $("#div2").toggle();
			});
		});s
	</script>
    </head>
    <body>
        <div id="div1">
            <ul>
                <%
                    String option = (String) request.getSession().getAttribute("option");
                    try
                    {
                        if(option==null)
                        {
                            System.out.println("NULL");
                        }
                        else
                        {
                            
                        }
                    }
                    catch(Exception e)
                    {
                        System.out.println(e);
                    }
                %>
                <li><button type="button" onclick="window.open('#')">Home</button></li>
            <li><button id="btn">Filter</button></li>
        </ul>
        </div>
        <div id="div3">
             <form action="BusRouteFilter" method="post">
            <table>
                    <tr>
                        <td>
                            Route No:-
                        </td>
                        <td>
                            <input type="text" name="s1" >
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Start Destination:-
                        </td>
                        <td>
                            <input type="text" name="s2" >
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Drop Destination:-
                        </td>
                        <td>
                            <input type="text" name="s3"  >
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="reset" value="reset">
                        </td>
                        <td>
                            <input type="Submit" value="Submit">
                        </td>
                    </tr>
                </table>
             </form>
        </div>
        <div id="div2">
        <table >
            <tr>
                <th>Route No</th>
                <th>Bus No</th>
                <th>Driver Name</th>
                <th>Start</th>
                <th>Time</th>
                <th>Destination</th>
                <th>Time</th>
                <th>Bus Route</th>
                <th>Edit Bus Route</th>
                <th>Drop</th>
            </tr> 
                <%
                    List <BusRoute> list = (List<BusRoute>)request.getSession().getAttribute("list");
                    if(list!=null)
                    {
                    for(BusRoute Disp : list){
                %>
                <tr>
                    <td><%= Disp.getRouteno()%></td>
                    <td><%= Disp.getBusno()%></td>
                    <td><%= Disp.getDrivername()%></td>
                    <td><%= Disp.getStartlocation()%></td>
                    <td><%= Disp.getStime()%></td>
                    <td><%= Disp.getLastlocation()%></td>
                    <td><%= Disp.getLtime()%></td>
                    <%
                        out.println("<td>");
                        out.println("<a href='BusScheduleDisplay?rn="+Disp.getRouteno()+"'>Route</a>");
                        out.println("</td>");
                        out.println("<td>");
                        out.println("<a href='#'>Edit</a>");
                        out.println("</td>");
                        out.println("<td>");
                        out.println("<a href='DropFromBusRoute?routeno="+Disp.getRouteno()+"&startlocation="+Disp.getStartlocation()+"&lastlocation="+Disp.getLastlocation()+"'>Drop</a>");
                        out.println("</td>");
                    %>
                </tr>
<%}}
else
{
out.println("<tr>");
out.println("<td colspan='10'>");
out.println("NO RESULT FOUND !");
out.println("</td>");
out.println("</tr>");
}
%>
        </table>
        </div>
    </body>
</html>
