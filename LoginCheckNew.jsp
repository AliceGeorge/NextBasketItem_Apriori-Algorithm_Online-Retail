<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="aws.BakeryAssociation" %>
<%@page import="java.io.File"%>
<%@page import="java.util.*"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.net.URL"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@ page import="aws.CouponGeneration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="js/jquery-1.6.2.min.js" type="text/javascript" charset="utf-8"></script>

<title>Insert title here</title>
</head>
<body>

<%

String email=(String)request.getParameter("email");
String password1=(String)request.getParameter("password"); 
//String email="sdbcj@njnj.com";
//String password1="Alice";
String firstname=null;
int zipcode=0;
int USERID=0;


  // Read RDS Connection Information from the Environment
 /*  String dbName = System.getProperty("RDS_DB_NAME");
  String userName = System.getProperty("RDS_USERNAME");
  String password = System.getProperty("RDS_PASSWORD");
  String hostname = System.getProperty("RDS_HOSTNAME");
  String port = System.getProperty("RDS_PORT"); */
  String dbName = "RAKRetail";
  String userName = "root";
  String password = "rootcmpe239";
  String hostname = "mydb.cywdpaibvs3l.us-west-2.rds.amazonaws.com";
  String port = "3306";
  String jdbcUrl = "jdbc:mysql://" + hostname + ":" + port + "/" + dbName + "?user=" + userName + "&password=" + password;
  boolean status= true;
  boolean wrStatus =true;
  
  // Load the JDBC Driver
  try {
    System.out.println("Loading driver...");
    Class.forName("com.mysql.jdbc.Driver");
    System.out.println("Driver loaded!");
  } catch (ClassNotFoundException e) {
    throw new RuntimeException("Cannot find the driver in the classpath!", e);
  }

  Connection conn = null;
  Statement setupStatement = null;
  Statement readStatement = null;
  ResultSet resultSet = null;
  String results = "";
  int numresults = 0;
  String statement = null;
  PreparedStatement preparedStmt = null;

 
  
  try {
	    conn = DriverManager.getConnection(jdbcUrl);
	  
	    String requestDetails= "select * from UserDetail  where emailid = ? and password=?;";
		preparedStmt = conn.prepareStatement(requestDetails);
		preparedStmt.setString(1,email);
		preparedStmt.setString(2,password1);
		ResultSet rs = preparedStmt.executeQuery();
		while (rs.next()) {
			firstname = rs.getString("firstname");
			zipcode = rs.getInt("zipcode");
			USERID = rs.getInt("Userid");	
			
		}
		
		System.out.println(firstname);
		System.out.println(zipcode);
		System.out.println(USERID);
	    
	
	    

	  } catch (SQLException ex) {
	    // handle any errors
	    System.out.println("SQLException: " + ex.getMessage());
	    System.out.println("SQLState: " + ex.getSQLState());
	    System.out.println("VendorError: " + ex.getErrorCode());
	  } finally {
	       System.out.println("Closing the connection.");
	      if (conn != null) try { conn.close(); } catch (SQLException ignore) {}
	  }

 


  /*String jspPath = this.getServletContext().getRealPath("/");  */
  String jspPath = application.getRealPath("/");
  //System.out.println("This is for application get js path\n:"+jspPath);
  //String txtFilePath = jspPath + System.getProperty("file.separator")+ "RAK_Retail.arff";
  String txtFilePath = jspPath +  "RAK_Retail.arff";
  //System.out.println("This is for application txt file path\n:"+txtFilePath);
  BufferedReader reader = new BufferedReader(new FileReader(txtFilePath));
  out.println(reader==null);
  BakeryAssociation wekaConn= new BakeryAssociation();
       String value1 = wekaConn.returnRules(txtFilePath);
 
       boolean file1status=true;
  Writer wr =null; 
  
 String outputFilePath1 = jspPath +  "output1.txt";
  //System.out.println("This is for application txt output file path\n:"+outputFilePath1);
  //String value2=wekaConn.writeOutput1(outputFilePath,outputFilePath1, "first line");
  String value2=wekaConn.writeOutput1(outputFilePath1,value1);
  
  reader.close(); 

  

  
  //Calling the coupon generation
  Cookie zipcodeC = new Cookie("zipcode",zipcode+"");
  Cookie firstnameC = new Cookie("firstname",firstname);
  Cookie fileLocationC = new Cookie("opfilelocation",outputFilePath1);
  Cookie userIdC = new Cookie("userid",USERID+"");
  
  
  
  
  zipcodeC.setMaxAge(60*60*24); 
  firstnameC.setMaxAge(60*60*24);
  fileLocationC.setMaxAge(60*60*24);
  userIdC.setMaxAge(60*60*24);
  
  //Use this you wanna set the rules in a cookie 
//Cookie fileData= new Cookie("filedata",value2.substring(0, 100));
  //fileData.setMaxAge(60*60*24);
  //response.addCookie(fileData);

  	response.addCookie(zipcodeC);
  	response.addCookie(firstnameC);
  	response.addCookie(fileLocationC);
  	response.addCookie(userIdC);
  	
  	String value3=null;
  
  	//Code works fine- for checking the coupon generation- ue if needed
	// CouponGeneration cpngen = new CouponGeneration();
	 //	String value3 =cpngen.getCoupons(outputFilePath1,"Cheese");
	 
 			
 
	  if(zipcode!=0){		
		response.sendRedirect("index.jsp"); 
  }else{
	  response.sendRedirect("Login.jsp"); 
  } 
  %>
   
   
   
     

  
<h2><%= txtFilePath %> - txtFilePath</h2>


<h2>================</h2>

<h2><%=wrStatus %> - WR</h2>

<h2><%=dbName %></h2>
<h2><%=jdbcUrl %></h2>
<h2><%=firstname %></h2>
<h2><%=zipcode %></h2>
<h2>-------------------------------------------------------------------</h2>
<h2><%=value2 %></h2>
<h2>-------------------------------------------------------------------</h2>

<h2><%=outputFilePath1 %></h2>

<!-- <h2><%=value1 %></h2> -->
<h2><%=value3 %>- COUPON</h2> 

	  
</body>
</html>