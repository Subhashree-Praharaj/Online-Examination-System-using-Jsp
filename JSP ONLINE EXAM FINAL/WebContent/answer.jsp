<%@page import="java.sql.*"%>
<%@ page import="java.util.*"%>

<html>
<head>
<style>

div {
    background-color: #f1f1f1;
    width: 1150px;
    height:260px;
    border: 50px solid brown;
    padding: 25px;
    margin: 25px;
    position:fixed;
     
}
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
.button {
    background-color: brown; 
    color: white;
    padding: 15px 32px;
    text-align: center;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    postion: fixed;
}
body {
    margin: 0;
}
.logout{
   background-color: brown; 
    color: white;
    padding: 15px 32px;
    text-align: center;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    postion: fixed;
}
h1{
background-color:brown;
color:white;
height:15%;
opacity:0.8;
}

</style>
</head>

<body>
<h1><br>&emsp;<font size="15">Result...</font></h1>

<form  action="loginpage.jsp">
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;  
  <button class="Logout">Logout</button>
</form>

<form action="description.jsp">
<div>
<%
String sub2 = (String)session.getAttribute ("sub1");
session.setAttribute ("sub2",sub2);

Class.forName ("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection ("jdbc:oracle:thin:@localhost:1521:XE","system","sanghamitra"); 
Statement st = con.createStatement ();
ResultSet rs = st.executeQuery ("select * from question where subject='"+sub2+"'");    
    
int correct =0, incorrect=0, total=0, i=1;
String s1,s2;

while (rs.next()){
    
	total++;
    
	s1 = request.getParameter ("ans"+i);
    s2 = rs.getString ("correct_ans");
    
    if (s1 != null){
      if (s2.equals (s1)){
      	correct++;
      }
    
      else{
      	incorrect++;
      }
      i++;
    }
    
}
%>
<table>
  <tr>
    <td>No. of questions</td>
    <td><%=total %></td>
  </tr>
  <tr>
    <td>No. of Correct Answers</td>
    <td><%=correct %></td>
  </tr>
  <tr>
    <td>No. of Wrong Answers</td>
    <td><%=incorrect %></td>
  </tr>
  <tr>
    <td>Total Mark</td>
    <td><%=correct %></td>
  </tr>
</table>

<br>
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


<button class="button">Click here to see description</button></form>

<form action="quiz.jsp">
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;
<button class="button">Click here to take another exam</button>
</form>


</div>
</body>
</html>