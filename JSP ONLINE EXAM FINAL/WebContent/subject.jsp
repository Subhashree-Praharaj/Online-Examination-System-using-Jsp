<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.util.*"%>

<html>
<head>
<style> 

input[type=text] {
    width: 5%;
    padding: 10px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 2px solid black;
    border-radius: 4px;
}

h1{
background-color:brown;
color:white;
height:15%;
}

body {
    margin: 0;
}

ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    width: 10%;
    background-color: brown;
    position: fixed;
    height: 100%;
    overflow: auto;
}

div {
    background-color: #f1f1f1;
    width: 1150px;
    border: 50px solid brown;
    padding: 25px;
    margin: 25px;
}

.button {
    background-color: brown; 
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    bottom: 0px;
    right: 0px;
    postion: fixed;
}

</style>
</head>
<body>

<div>
<%String sub1 = request.getParameter ("sub"); 
session.setAttribute ("sub1",sub1); %>

<h1>&emsp;<font size="9">Online Quiz...</font>
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
<font size="5">Subject :</font>
<font size="5">
<% if (sub1.equals ("CG")) out.println ("Computer Graphics");
if (sub1.equals("DMDW")) out.println ("Data Mining and Data Warehouse");
if (sub1.equals("ACA")) out.println ("Advanced Computer Architecture");
if (sub1.equals("IoT")) out.println ("Internet of Things");
if (sub1.equals("OS")) out.println ("Operating System");
%>
<br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;
Today's date: <%= (new java.util.Date()).toLocaleString()%>
</font>
</h1>

<p id="para"></p>
<form action="answer.jsp">
<%
try{
	Class.forName ("oracle.jdbc.driver.OracleDriver"); 
	Connection con = DriverManager.getConnection ("jdbc:oracle:thin:@localhost:1521:XE","system","gudu123"); 
	Statement st = con.createStatement ();
	ResultSet rs = st.executeQuery ("select * from question where subject='"+sub1+"'");

int i=1, count =0;

while (rs.next()) 
{
	%>
			<h4>&emsp;&emsp;<font size="4"><% out.println(rs.getInt("question_no")+". "+ rs.getString(3)); %></font></h4>&emsp;
			<h4>&emsp;&emsp;&emsp;&emsp;Options:</h4>
			<h4>&emsp;&emsp;&emsp;&emsp;<% out.println ("A."+rs.getString(4)); %></h4>
			<h4>&emsp;&emsp;&emsp;&emsp;<% out.println ("B."+rs.getString(5)); %></h4>
			<h4>&emsp;&emsp;&emsp;&emsp;<% out.println ("C."+rs.getString(6)); %></h4>
			<h4>&emsp;&emsp;&emsp;&emsp;<% out.println ("D."+rs.getString(7)); %></h4>
			 <h4>&emsp;&emsp;&emsp;&emsp;Answer:&emsp;<input type="text" name="ans<%=i %>" autocomplete="off" /></h4><br>	 
	<%
	i++;
}
}

catch (Exception e){
    System.out.println ("DB related Error");
    e.printStackTrace ();
}   
%>
<br><br>
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
<button class="button">Submit</button>

</div>

</form>
</body>
</html>