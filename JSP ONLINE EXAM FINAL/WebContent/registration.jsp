<html>
<head>

<title>Registration Form</title>
</head>
<style>

h1{
background-color:black;
color:white
}

.div1{
	background-color:gray;
width: 300px;
height:470px;
padding:50px;
border:10px white;
opacity:0.9;
}

input[type=text] {
    width: 60%;
    padding: 8px 8px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 2px solid black;
    border-radius: 4px;
}

input[type=password] {
    width: 60%;
    padding: 8px 8px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 2px solid black;
    border-radius: 4px;
}

input[type=submit] {
    width: 30%;
    padding: 8px 8px;
    margin: 2px 0;
    box-sizing: border-box;
    border: 2px solid black;
    border-radius: 4px;
}

input[type=reset] {
    width: 30%;
    padding: 8px 8px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 2px solid black;
    border-radius: 4px;
}
</style>

<body background="hand.jpg">
<h1>&nbsp;&nbsp;Registration Page</h1>

<div class="div1">
<form action="insert_student_info.jsp">

<h4>FIRST NAME:&nbsp;&nbsp;<input type="text" name="firstname" placeholder="Enter first name"/><br/></br>
LAST NAME:&nbsp;&nbsp;&nbsp;<input type="text" name="lastname" placeholder="Enter last name"/><br/></br>
LOGIN ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="loginid" placeholder="Enter login id"/><br/></br>
PASSWORD:&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="password" placeholder="Enter password"/><br/></br>
EMAIL ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="emailid" placeholder="Enter emailid"/><br/></br>
MOBILE NO:&nbsp;&nbsp;&nbsp;<input type="text" name="mobileno" placeholder="Enter mobile no"/><br/>
</h4>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="Register" >&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="Reset">

</form>
</div>
</body>
</html>