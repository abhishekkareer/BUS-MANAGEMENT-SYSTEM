<%-- 
    Document   : EnterRouteDetail
    Created on : Mar 26, 2019, 10:55:56 AM
    Author     : ABHISHEK KAREER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
             .button { 
  border: none;
  width: 400px;
  color: black;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 20px;
  cursor: pointer;
}

.button {
  background-color: white;
  color: black;
/*  border: 2px solid black;*/
}

.button:hover {background-color: #e7e7e7;
border: 1px solid black;}

        </style>
    </head>
    <body>
        <%
            String routeno = (String)request.getAttribute("routeno");
            String Stopno = (String)request.getAttribute("Stopno");
        %>
        <table>
         
            <%
                int count,i;
                String Stop = "Stop";
                String Time = "Time";
                count = Integer.parseInt(Stopno);
                out.println("<form action='BusRouteSchedule' method='post'>");
                %>
                   <tr>
                <th>
                    Stop Name
                </th>
                <th>
                    Stop Time
                </th>
            </tr>
            <%
                for(i=0;i<count;i++)
                {
                    int j=i+1;
                    out.println("<tr>");
                    out.println("<td>");
                    out.println("<input type='text' name='"+Stop.concat(Integer.toString(i))+"' placeholder='StopName"+j+"'");
                    out.println("</td>");
                    out.println("<td>");
                    out.println("<input type='time' name='"+Time.concat(Integer.toString(i))+"' ");
                    out.println("</td>");
                    out.println("</tr>");
                }
                out.println("<input type='text' name='No' value='"+count+"' hidden/>");
                out.println("<input type='text' name='routeno' value='"+routeno+"' hidden/>");
                out.println("<tr>");
                out.println("<td colspan='2'>");
                out.println("<input class='button' type='submit' value='Submit'>");
                out.println("</td>");
                out.println("</tr>");
                out.println("</form>");
            %>
        </table>
    </body>
</html>



