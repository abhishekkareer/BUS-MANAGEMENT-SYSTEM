<%-- 
    Document   : BusRouteScheduleDisplay
    Created on : Mar 28, 2019, 12:05:29 AM
    Author     : ABHISHEK KAREER
--%>

<%@page import="java.util.List"%>
<%@page import="Model.BusRouteSchedules"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BusScheduleDisplay</title>
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
            background-color: #b3b3ff;
        }
         #div2
        {
            display:flex;
            justify-content: center;
            align-items: center; 
            flex-wrap:wrap;
            margin-top: 15px;
        }
        </style>
    </head>
    <body>
        <div id="div1">
            <ul>
                <li><button type="button" onclick="window.open('#')">Home</button></li>
            <li><button onclick="window.open('RouteDispaly')">Back</button></li>
        </ul>
        </div>
        <div id="div2">
            <table>
                <tr>
                    <th>Route No</th>
                    <th>Stop Name</th>
                    <th>Stop Time</th>
                </tr>
                <%
                    List <BusRouteSchedules> list = (List<BusRouteSchedules>)request.getAttribute("list");
                    for(BusRouteSchedules Disp : list)
                    {
                   %>
                <tr>
                    <td><%= Disp.getRouteno()%></td>
                    <td><%= Disp.getStopname()%></td>
                    <td><%= Disp.getStoptime()%></td>
                </tr>
                   <%}%>
            </table>
        </div>
    </body>
</html>
