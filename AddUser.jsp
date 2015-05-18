<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <% 
			 
 PreparedStatement preparedStmt = null;
 String email=(String)request.getParameter("email1");
 String password=(String)request.getParameter("password1");
 String firstname=(String)request.getParameter("firstname");
 String lastname=(String)request.getParameter("lastname");
 String zipcodeStr=(String)request.getParameter("zip");
 int zipcode = Integer.parseInt(zipcodeStr);
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();// loading MySQL driver
			Connection conn = DriverManager.getConnection("jdbc:mysql://mydb.cywdpaibvs3l.us-west-2.rds.amazonaws.com:3306/RAKRetail?user=root&password=rootcmpe239");
			
			System.out.println(conn==null);
			//Set up connection with DB, username, password
			
			//Adding user
			String sqlQuery3 = "insert into UserDetail(firstname,lastname,emailid,password,zipcode) values(?,?,?,?,?);";
			preparedStmt = conn.prepareStatement(sqlQuery3);
			preparedStmt.setString(1, firstname);
			preparedStmt.setString(2, lastname);
			preparedStmt.setString(3, email);
			preparedStmt.setString(4, password);
			preparedStmt.setInt(5, zipcode);
			preparedStmt.executeUpdate();
	
			response.sendRedirect("Login.jsp");
			
							
			} catch (Exception e) {
			System.out.println("Exception in Login::"+e.getMessage());
			e.printStackTrace();
			} 
 %>
 <h2><%= email %></h2>
 <h2><%= zipcodeStr %></h2>

</body>
</html>