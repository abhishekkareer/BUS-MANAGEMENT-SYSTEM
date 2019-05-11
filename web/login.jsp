<%-- 
    Document   : login
    Created on : Apr 2, 2019, 9:04:20 PM
    Author     : ABHISHEK KAREER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>login_page</title>
	<style>
	body
	{
		margin:0;
		background-color: #f1f1f1;
	}
	.div1
	{
		color:blue;
		height: 655px;
		display: flex;
		font-size: 40px;
		justify-content: center;
		padding: 40px;
		align-items: center;
		box-sizing: border-box;
		flex-wrap: wrap;
                position: relative;

	}
	.div2
	{
		display: flex;
		padding: 50px;
		background-color: #b3b3ff;
		color: black;
		height: 425px;
		width: 500px;
		border-radius: 15px;
		font-size: 20px;
		justify-content: center;
		flex-wrap: wrap;
		box-shadow: 10px 10px 5px grey;	
		text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;
	}
	input[type=text] ,select 
	{
		border-radius: 20px;
		width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
	}
        input[type=password]
        {
            border-radius: 20px;
		width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
        }
	input[type=submit] 
	{
        width: 100%;
        background-color: #4CAF50;
        color: #f1f1f1;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 20px;
   }
   input[type=text]:focus 
   {
        border: 3px solid green;
   }
   input[type=password]:focus 
   {
        border: 3px solid green;
   }
</style>
<script>
function validateForm() {
    var flag=true;
  var A = document.forms["MyForm"]["username"].value;
  var B = document.forms["MyForm"]["password"].value;
  var C = document.forms["MyForm"]["option"].value;
  if (A=="") {
    alert("UserName is Empty !");
    flag=false;
  }
  if(B=="")
  {
      alert("Password is Empty !");
      flag=false;
  }
  return flag;
}
</script>
</head>
<body>
	<div class="div1"> 
		<div class="div2">
			<h2><b>BUS MANAGER</b></h2>
		</br>
			<form method="post" name="MyForm" onsubmit="return validateForm()" action="Lservlet"> USERNAME<input type="text" name="username" placeholder="USERNAME">
                            </br>
				PASSWORD<input type="password" name="password" placeholder="PASSWORD">
				</br>
				CHOICE
				<select name="option">
                <option value="student">STUDENT</option>
                <option value="faculty">FACULTY</option>
                <option value="admin">ADMIN</option>
                </select>
                                <%
                                    try
                                    {
                                        HttpSession hts = request.getSession();
                                        Object obj1 = hts.getAttribute("LoginFailed");
                                        Object obj2 = hts.getAttribute("SignUp");
                                        String s1 = (String) hts.getAttribute("LoginFailed");
                                        String s2 = (String) hts.getAttribute("SignUp");
                                        if(obj1==null)
                                        {
                                            System.out.println("Null value!!");
                                        }
                                        else if(obj1!=null && s1.equalsIgnoreCase("failed"))
                                        {
                                            out.println("Login Failed !!");
                                            hts.removeAttribute("LoginFailed");
                                        }
                                        if(obj2!=null && s2.equalsIgnoreCase("Success"))
                                        {
                                            out.println("SignUp Success");
                                            hts.removeAttribute("SignUp");
                                        }
                                        
                                    }
                                    catch(Exception e)
                                    {
                                        System.out.println(e);
                                    }
                                %>
				</br>
				<input type="submit" value="SUBMIT">
                                <a href="forgot.html">FORGOT PASSWORD</a>
                                <a href="signup.jsp">SIGNUP</a>
			</form>
		</div>
	</div>
</body>
</html>