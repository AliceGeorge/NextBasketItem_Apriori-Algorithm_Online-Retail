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
 
 	String email=(String)request.getParameter("email");
 String password=(String)request.getParameter("password");
 System.out.println(password);
 System.out.println(email);
 String firstname=new String();
 boolean connStatus=true;
 int zipcode=0;
		PreparedStatement preparedStmt = null;
		try {
			System.out.println("Inside check");
			Class.forName("com.mysql.jdbc.Driver").newInstance();// loading MySQL driver
			Connection conn = DriverManager.getConnection("jdbc:mysql://mydb.cywdpaibvs3l.us-west-2.rds.amazonaws.com:3306 /RAKRetail?user=root&password=rootcmpe239");
			connStatus= (conn==null);
			
			System.out.println(conn==null);
			//Set up connection with DB, username, password
			
			//Checking user
			String requestDetails= "select * from UserDetail  where emailid = ? and password=?";
			preparedStmt = conn.prepareStatement(requestDetails);
			preparedStmt.setString(1,email);
			preparedStmt.setString(2,password);
			ResultSet rs = preparedStmt.executeQuery();
			while (rs.next()) {
				firstname = rs.getString("firstname");
				zipcode = rs.getInt("zipcode");	
			}
			
			System.out.println(firstname);
			System.out.println(zipcode);
			//response.sendRedirect("index.jsp");
			
							
			} catch (Exception e) {
			System.out.println("Exception in Login::"+e.getMessage());
			e.printStackTrace();
			} 
 %>
<h2><%=connStatus %></h2>
</body>
</html>