<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>


<% 
	
	String loginid = request.getParameter("loginid");
	String password = request.getParameter("password");
	
	try
    {
		Class.forName ("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection ("jdbc:oracle:thin:@localhost:1521:XE","system","gudu123"); 
		String sql = "select * from student where loginid='"+loginid+"' and password='"+password+"'";
        PreparedStatement statement = con.prepareStatement (sql);
        ResultSet result = statement.executeQuery ();
        
        if (result.next()){
            response.sendRedirect ("quiz.jsp");
        }
        else{
            out.println ("username and password are incorrect");
            response.sendRedirect ("loginpage.jsp?msg=Invalid Login Id/ Password");
        }
    }
	
	catch (Exception e){
        System.out.println ("DB related Error");
        e.printStackTrace ();
    }
	
%>

