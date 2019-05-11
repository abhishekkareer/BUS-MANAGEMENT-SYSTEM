<%@page import="Model.feedback"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dispfeedback</title>
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
                padding: 10px;
            }
            tr:nth-child(odd)
            {
                background-color: lightgrey;
            }
        </style>
    </head>
    <body>
        <table>
		<tr>
                        <th>Route No</th>
                        <th>Date</th>
			<th>Subject</th>
                        <th>Comment</th>
                        <th>Review</th>
		</tr>
                <% 
                        List <feedback> list = (List<feedback>)request.getSession().getAttribute("list");
			for(feedback Disp : list){
		%>
        <tr>
                <td><%=Disp.getRouteno()%></td>
                <td><%=Disp.getDate()%></td>
                <td><%=Disp.getSubject()%></td>
                <td><%=Disp.getComment()%></td>
                <td><%=Disp.getServicereview()%></td>
                </tr>
                <%}%>
        </table>
    </body>
</html>
