<html>
<style>

body {
    margin: 0;
}

li a {
    display: block;
    color: #000;
    padding: 8px 16px;
    text-decoration: none;
}

.div1{
	background-color:#A52A2A;
	color:white;
	opacity:0.7;
	border: 2px solid white;
	border-radius:10px;
	width: 450px;
	height:400px;
	padding:50px;
	border:50px white;
	filter: alpha(opacity=60);
}

li a.active {
    background-color: #d2b48c;
    color: white;
}

li a:hover:not(.active) {
    background-color: #555;
    color: white;
}

h1{
background-color:brown;
color:white;
height:15%;
}

#subject{
width: 60%;
    padding: 8px 8px;
    margin: 2px 0;
    box-sizing: border-box;
    border: 2px solid black;
    border-radius: 4px;   
}
   
input[type=submit] {
    width: 15%;
    padding: 8px 8px;
    margin: 2px 0;
    box-sizing: border-box;
    border: 2px solid black;
    border-radius: 4px;
}

</style>

<body background="asd1.png">
<h1><br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<font size="10">Welcome to Online Examination</font></h1>



<center>
<div class="div1">
<form action="subject.jsp">
<h2><br><br><br><br>Choose any one subject to attempt quiz...<br></h2>

<select name="sub" id="subject">
<option>--Select Subject--</option>
<option value="CG">Computer Graphics</option>
<option value="DMDW">Data Mining and Data Warehouse</option>
<option value="ACA">Advancded Computer Archietecture</option>
<option value="IoT">Internet of Things</option>
<option value="OS">Operating System</option>
</select>

<input type="submit" value="Submit"/>

</div>
</center>
</form>
</body>
</html>