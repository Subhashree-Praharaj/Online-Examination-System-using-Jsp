<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>


<%
	String firstname = request.getParameter("firstname");
	String lastname = request.getParameter("lastname");
	String loginid = request.getParameter("loginid");
	String password = request.getParameter("password");
	String mobileno = request.getParameter("mobileno");
	String emailid = request.getParameter("emailid");
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection ("jdbc:oracle:thin:@localhost:1521:orcl","system","gudu123"); 
	Statement st = con.createStatement ();	
	String sql = "insert into student values ('"+firstname+"','"+lastname+"','"+loginid+"','"+password+"','"+emailid+"','"+mobileno+"')";
	
	int count = st.executeUpdate(sql);
	
	if (count > 0)
	{
		response.sendRedirect ("loginpage.jsp");
	}
	else
	{
		response.sendRedirect ("registration.jsp?msg=Try Again..");
	}
	con.close ();
%>
            