<%-- 
    Document   : NoticeTempDDD
    Created on : Apr 1, 2019, 2:13:10 PM
    Author     : ABHISHEK KAREER
--%>

<%@page import="java.util.List"%>
<%@page import="Model.fileupload"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>File upload</title>
    </head>
    <body>
        <form method="post" action="FileUpload">
        <table>
            
            <tr>
                <th>Document Name:-</th>
                <th>Document :-</th>
            </tr>
            <tr>
            <td><input type="text" name="DcoumentName"></td>
            <td><input type="file" name="File"></td>
            </tr>
            <tr>
                <td><input type="submit"></td>
            </tr>
         </table>
       </form>
        <div id="div2">
           
        </div>
    </body>
</html>
