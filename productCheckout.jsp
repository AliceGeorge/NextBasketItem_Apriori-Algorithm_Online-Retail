<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
<% 
PreparedStatement preparedStmt = null; 
 String finalproducts=(String)request.getParameter("checkout_product");
 String finalcount=(String)request.getParameter("count");
 

int counter1 = Integer.parseInt(finalcount);
System.out.println(finalproducts);
String ques="1";
for(int i=0;i<counter1-1;i++){
	
	 ques=ques +"," + "1";
	
	
} 
System.out.println(finalproducts);
System.out.println(ques);
		
		  try {
					
			Class.forName("com.mysql.jdbc.Driver").newInstance();// loading MySQL driver
			Connection conn = DriverManager.getConnection("jdbc:mysql://mydb.cywdpaibvs3l.us-west-2.rds.amazonaws.com:3306/RAKRetail?user=root&password=rootcmpe239");
			
			System.out.println(conn==null);
			//Set up connection with DB, username, password
			
			//Adding user
			String sqlQuery3 = "insert into RAKRetail.retail_transactions("+finalproducts+") values("+ques+");";
			preparedStmt = conn.prepareStatement(sqlQuery3);
			
		
			preparedStmt.executeUpdate();
	
			response.sendRedirect("Login.jsp");
			
							
			} catch (Exception e) {
			System.out.println("Exception in Login::"+e.getMessage());
			e.printStackTrace();
			}   
 %>


</body>
</html>