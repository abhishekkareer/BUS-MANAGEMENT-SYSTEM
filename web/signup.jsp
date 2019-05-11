<%-- 
    Document   : signup
    Created on : Apr 2, 2019, 9:24:54 PM
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
		height: 575px;
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
  var G = document.forms["MyForm"]["id"].value;
  var A = document.forms["MyForm"]["username"].value;
  var B = document.forms["MyForm"]["password"].value;
  var C = document.forms["MyForm"]["option"].value;
  if (A=="") {
    alert("UserName is Empty !");
    flag=false;
  }
  if(G=="")
  {
      alert("Id is Empty !");
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
			<form method="post" name="MyForm" onsubmit="return validateForm()" action="Sservlet"> 
                            UNIVERSITY ID<input type="text" name="id" placeholder="161198****">
                            GENDER<select name="gender">
                <option value="option">OPTION</option>                
                <option value="male">MALE</option>
                <option value="female">FEMALE</option>
                </select>
                            USERNAME<input type="text" name="username" placeholder="USERNAME">
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
                                        Object obj = hts.getAttribute("SignUp");
                                        String s = (String) hts.getAttribute("SignUp");
                                        if(obj==null)
                                        {
                                            System.out.println("NULL value!!");
                                        }
                                        else if(obj!=null && s.equalsIgnoreCase("fail"))
                                        {
                                            out.println("SignUp Failed !!");
                                            hts.removeAttribute("SignUp");
                                        }
                                    }
                                    catch(Exception e)
                                    {
                                        e.printStackTrace();
                                    }
                                %>
				</br>
				<input type="submit">
			</form>
		</div>
	</div>
</body>
</html>