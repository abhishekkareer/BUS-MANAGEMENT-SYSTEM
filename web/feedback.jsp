
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
                padding: 10px;
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
            justify-content: center;
            flex-wrap:wrap;
            color:black;
            font-size:30px;
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
        #div3
        {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100px;
            padding:10px;
            margin-top: 50px;
        }
        .button { 
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
/*  border: 2px solid black;*/
}

.button:hover {background-color: lightgrey;}

        </style>
        </head>
    <body>
        <%String option=(String) request.getSession().getAttribute("option");%>
        <div id="div1">
            Feedback
        </div>
        <div id="div2" > 
            <form action="FeedbackServlet" method="post" id="Myform">
        <table> 
            <%out.println("<input type='text' name='option1' value='"+option+"'hidden");%>
            <tr>
                <th>Route No</th>
                <td>
                    <input type="text" name="routeno" placeholder="CU01">
                </td>
                </tr> 
            <tr>
                <th>
                    Date
                </th>
                <td>
                    <input type="date" name="Date">
                </td>
            </tr>
            <tr>
                <th>subject</th>
                <td><input type="text" name="Subject"></td>
            </tr>
            <tr>
                <td colspan="2"><textarea rows="4" cols="50" name="comment" form="Myform">Enter Comment ...</textarea></td>
            </tr>
            <tr>
                <td colspan="2"><input type="radio" name="servicereview" value="satisfied">Satisfied
                                <input type="radio" name="servicereview" value="disappointed">Disappointed
                                <input type="radio" name="servicereview" value="poor">Poor
            </tr>
            <tr>
                <td colspan="2"><input class="button" type="submit" value="Submit"></td>
            </tr>
          </table>
                
            </form>
        </div>
        </body>
</html>