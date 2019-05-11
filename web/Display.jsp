<%-- 
    Document   : Display
    Created on : Mar 25, 2019, 1:40:40 PM
    Author     : ABHISHEK KAREER
--%>

<%@page import="java.util.List"%>
<%@page import="Model.userdata2"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style>
        .a
            {
                background-color: #f44336;
                text-decoration: none;
                text-align: center;
                padding: 14px 40px;
                color:white;
            }
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
        </style>
    </head>
    <body>
        <table>
		<tr>
                        <th>Id</th>
                        <th>Gender</th>
			<th>Username</th>
                        <th>Password</th>
                        <th>Option</th>
                        <th>Add</th>
                        <th>Drop</th>
		</tr>

		<% 

			List <userdata2> list = (List<userdata2>)request.getAttribute("list");
                        if(list!=null)
                        {
			for(userdata2 name : list){
		%>

			<tr>
				<td><%= name.getId()%></td>
                                <td><%= name.getGender()%></td>
                                <td><%= name.getUsername()%></td>
                                <td><%= name.getPassword()%></td>
                                <td><%= name.getOption()%></td>
                                <%
                                out.println("<td>");
                                out.println("<a href='Addservlet?id="+name.getId()+"&gender="+name.getGender()+"&username="+name.getUsername()+"&password="+name.getPassword()+"&option="+name.getOption()+"'>Add</a>");
                                out.println("</td>");
                                out.println("<td>");
                                out.println("<a href='DropFromTempDatabase?id="+name.getId()+"&gender="+name.getGender()+"&username="+name.getUsername()+"&password="+name.getPassword()+"&option="+name.getOption()+"'>Drop</a>");
                                out.println("</td>");
                                %>
			</tr>

		<%}}
else
{
out.println("<tr>");
out.println("<td colspan='5'>");
out.println("NO RESULT FOUND !");
out.println("</td>");
out.println("</tr>");
}%>
	</table>
    </body>
</html>
