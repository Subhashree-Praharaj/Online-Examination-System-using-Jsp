<html>
<head>
<title>Login page</title>
<center>
<style>

h1{
background-color:white;
border: 2px solid black;
}

h3
{
color : solidblack;
}

.div1{
	background-color:#A52A2A;
	opacity:0.9;
	border: 2px solid white;
	border-radius:10px;
	width: 400px;
	height:250px;
	padding:50px;
	border:50px white;
	filter: alpha(opacity=60);
}

input[type=text] {
    width: 50%;
    padding: 10px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 2px solid black;
    border-radius: 4px;
}

input[type=password] {
    width: 50%;
    padding: 10px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 2px solid black;
    border-radius: 4px;
}

input[type=submit] {
    width: 20%;
    padding: 8px 8px;
    margin: 2px 0;
    box-sizing: border-box;
    border: 2px solid black;
    border-radius: 4px;
}

input[type=reset] {
    width: 20%;
    padding: 8px 8px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 2px solid black;
    border-radius: 4px;
}

</style>
</head>

<body background="cup5.jpg">
<h1>Online Examination System</h1>
<br><br><br><br><br><br>

<div class="div1">
	<% String msg = request.getParameter ("msg");
		if (msg != null)
		{
			out.println (msg);
		}
%>
	
	<form action="check.jsp">
	<h3>LOGIN ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="loginid" placeholder="Enter Login Id" autocomplete="off" /></h3>
	<h3>PASSWORD:&nbsp;&nbsp;<input type="password" name="password" placeholder="Enter Password"/></h3>
	&nbsp;&nbsp;<input type="submit" value="Sign In" width=50% />&nbsp;&nbsp;
	&nbsp;&nbsp;<input type="reset" value="Reset"/>
	</form>
	<a href="registration.jsp" style="color: #000000" "border: 2px solid black">NEW USER ?</a>
</div>
	
</body>
</html>