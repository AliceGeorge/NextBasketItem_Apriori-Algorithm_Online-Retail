<%@ page import="aws.*" %>
 <%@ page import="java.sql.*" %>
 <%@ page import="java.util.*" %>
 <%@ page import="java.util.Map.Entry" %>
 <%@ page import="java.util.Comparator" %>
 <%@ page import="java.util.Collections" %>
 <%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>RAK Retail</title>
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Carlos Alvarez - Alvarez.is">

    <!-- Le styles -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <link href="assets/css/dashboardmain.css" rel="stylesheet">
    <link href="assets/css/font-style.css" rel="stylesheet">
    
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>

    <style type="text/css">
      body {
        padding-top: 60px;
      }
    </style>

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">

  	<!-- Google Fonts call. Font Used Open Sans & Raleway -->
	<link href="http://fonts.googleapis.com/css?family=Raleway:400,300" rel="stylesheet" type="text/css">
  	<link href="http://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" type="text/css">
<%
String dbName = "RAKRetail";
String userName = "root";
String password = "rootcmpe239";
String hostname = "mydb.cywdpaibvs3l.us-west-2.rds.amazonaws.com";
String port = "3306";
String jdbcUrl = "jdbc:mysql://" + hostname + ":" + port + "/" + dbName + "?user=" + userName + "&password=" + password;

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
int noofrecords=0;
int pop1[] = new int[10];
String item1[]=new String[10];
int pop2[] = new int[10];
String item2[]=new String[10];
int pop3[] = new int[10];
String item3[]=new String[10];
int cntofcheese=0;
int cntofmilk=0;
int cntofcurd=0;
int cntofbutter=0;
int cntofegg=0;
int cntoficecream=0;
int cntofbacon=0;
int cntofflour=0;
int cntofvegetable=0;
int cntofsugar=0;
int cntoffruits=0;
int cntofbread=0;






try {
	    conn = DriverManager.getConnection(jdbcUrl);
        HashMap<String,Integer> product = new HashMap<String,Integer>();
        HashMap<String,Integer> product1 = new HashMap<String,Integer>();
        HashMap<String,Integer> product2 = new HashMap<String,Integer>();
		
	    //ValueComparator bvc =  new ValueComparator(product);
        //TreeMap<String,Integer> sorted_product = new TreeMap<String,Integer>(bvc);
	  
	    String transactionDetails= "select count(Trans_id) from  RAKRetail.retail_transactions;";
		preparedStmt = conn.prepareStatement(transactionDetails);
		ResultSet rs1 = preparedStmt.executeQuery();
		if (rs1.next()) {
		 noofrecords = rs1.getInt(1);
		System.out.println(noofrecords);
                       }
		
		//Count of Cheese
		 String cheeseDetails= "select count(Cheese) from RAKRetail.retail_transactions where Cheese=1;";
		preparedStmt = conn.prepareStatement(cheeseDetails);
		ResultSet rscheese = preparedStmt.executeQuery();
		if (rscheese.next()) {
		 cntofcheese = rscheese.getInt(1);
		System.out.println(cntofcheese);
                       }
		//Count of Milk
		String milkDetails= "select count(Milk) from RAKRetail.retail_transactions where Milk=1;";
		preparedStmt = conn.prepareStatement(milkDetails);
		ResultSet rsmilk = preparedStmt.executeQuery();
		if (rsmilk.next()) {
		 cntofmilk = rsmilk.getInt(1);
		System.out.println(cntofmilk);
		}
		
		//Count of Curd
				String curdDetails= "select count(Curd) from RAKRetail.retail_transactions where Curd=1;";
				preparedStmt = conn.prepareStatement(curdDetails);
				ResultSet rscurd = preparedStmt.executeQuery();
				if (rscurd.next()) {
				 cntofcurd = rscurd.getInt(1);
				System.out.println(cntofcurd);
				}
				
		//Count of Butter
				String butterDetails= "select count(Butter) from RAKRetail.retail_transactions where Butter=1;";
				preparedStmt = conn.prepareStatement(butterDetails);
				ResultSet rsbutter = preparedStmt.executeQuery();
				if (rsbutter.next()) {
				 cntofbutter = rsbutter.getInt(1);
				System.out.println(cntofbutter);
				}
				
				//Count of Egg
				String eggDetails= "select count(Egg) from RAKRetail.retail_transactions where Egg=1;";
				preparedStmt = conn.prepareStatement(eggDetails);
				ResultSet rsegg = preparedStmt.executeQuery();
				if (rsegg.next()) {
				 cntofegg = rsegg.getInt(1);
				System.out.println(cntofegg);
				}
				
				//Count of Ice Cream
				String icecreamDetails= "select count(Icecream) from RAKRetail.retail_transactions where Icecream=1;";
				preparedStmt = conn.prepareStatement(icecreamDetails);
				ResultSet rsicecream = preparedStmt.executeQuery();
				if (rsicecream.next()) {
				 cntoficecream = rsicecream.getInt(1);
				System.out.println(cntoficecream);
				}
				
				//Count of Bacon
				String baconDetails= "select count(Bacon) from RAKRetail.retail_transactions where Bacon=1;";
				preparedStmt = conn.prepareStatement(baconDetails);
				ResultSet rsbacon = preparedStmt.executeQuery();
				if (rsbacon.next()) {
				 cntofbacon = rsbacon.getInt(1);
				System.out.println(cntofbacon);
				}
				
				//Count of Flour
				String flourDetails= "select count(Flour) from RAKRetail.retail_transactions where Flour=1;";
				preparedStmt = conn.prepareStatement(flourDetails);
				ResultSet rsflour = preparedStmt.executeQuery();
				if (rsflour.next()) {
				 cntofflour = rsflour.getInt(1);
				System.out.println(cntofflour);
				}
				
				//Count of Vegetable
				String vegetableDetails= "select count(Vegetables) from RAKRetail.retail_transactions where Vegetables=1;";
				preparedStmt = conn.prepareStatement(vegetableDetails);
				ResultSet rsvegetable = preparedStmt.executeQuery();
				if (rsvegetable.next()) {
				 cntofvegetable = rsvegetable.getInt(1);
				System.out.println(cntofvegetable);
				}
				
				//Count of Sugar
				String sugarDetails= "select count(Sugar) from RAKRetail.retail_transactions where Sugar=1;";
				preparedStmt = conn.prepareStatement(sugarDetails);
				ResultSet rssugar = preparedStmt.executeQuery();
				if (rssugar.next()) {
				 cntofsugar = rssugar.getInt(1);
				System.out.println(cntofsugar);
				}
				
				//Count of Fruits
				String fruitsDetails= "select count(Fruits) from RAKRetail.retail_transactions where Fruits=1;";
				preparedStmt = conn.prepareStatement(fruitsDetails);
				ResultSet rsfruits = preparedStmt.executeQuery();
				if (rsfruits.next()) {
				 cntoffruits = rsfruits.getInt(1);
				System.out.println(cntoffruits);
				}
				
				//Count of Bread
				String breadDetails= "select count(Bread) from RAKRetail.retail_transactions where Bread=1;";
				preparedStmt = conn.prepareStatement(breadDetails);
				ResultSet rsbread = preparedStmt.executeQuery();
				if (rsbread.next()) {
				 cntofbread = rsbread.getInt(1);
				System.out.println(cntofbread);
				}
		else{
			System.out.println("Error: Could not get the record counts");
		}
		
		
		//Overall Top 10 products

		  System.out.println("----------------Entering the Regular section----------------");


		    String requestRegularTransaction= "select t3.* from RAKRetail.retail_transactions t3;";





		    preparedStmt = conn.prepareStatement(requestRegularTransaction);



		ResultSet rs3 = preparedStmt.executeQuery();

		Integer ValR1=0,ValR2=0,ValR3=0,ValR4=0,ValR5=0,ValR6=0,ValR7=0,ValR8=0,ValR9=0,ValR10=0;



		Integer ValR11=0,ValR12=0,ValR13=0,ValR14=0,ValR15=0,ValR16=0,ValR17=0,ValR18=0,ValR19=0,ValR20=0;



		Integer ValR21=0,ValR22=0,ValR23=0,ValR24=0,ValR25=0,ValR26=0,ValR27=0,ValR28=0,ValR29=0,ValR30=0;



		Integer ValR31=0,ValR32=0,ValR33=0,ValR34=0,ValR35=0,ValR36=0,ValR37=0,ValR38=0,ValR39=0,ValR40=0;



		Integer ValR41=0,ValR42=0,ValR43=0,ValR44=0,ValR45=0,ValR46=0,ValR47=0,ValR48=0,ValR49=0,ValR50=0;;





		while (rs3.next()) {

		product2.put("GreenTea",ValR1 = ValR1+rs3.getInt("GreenTea"));



		product2.put("Butter",ValR2 = ValR2+rs3.getInt("Butter"));



		product2.put("ThermalWear",ValR3 = ValR3 +rs3.getInt("ThermalWear"));



		product2.put("HandBags",ValR4 = ValR4 +rs3.getInt("HandBags"));



		product2.put("BathroomCleaner",ValR5 = ValR5 +rs3.getInt("BathroomCleaner"));



		product2.put("Umbrella",ValR6 = ValR6 +rs3.getInt("Umbrella"));



		            product2.put("Coffee",ValR7 = ValR7 +rs3.getInt("Coffee"));



		            product2.put("Egg",ValR8 = ValR8 +rs3.getInt("Egg"));



		product2.put("Socks",ValR9 = ValR9 +rs3.getInt("Socks"));



		            product2.put("Water",ValR10 = ValR10 +rs3.getInt("Water"));



		            product2.put("Kettle",ValR11 = ValR11 +rs3.getInt("Kettle"));



		            product2.put("Bacon",ValR12 = ValR12 +rs3.getInt("Bacon"));



		            product2.put("Swimsuit",ValR13 = ValR13 +rs3.getInt("Swimsuit"));



		            product2.put("Sugar",ValR14 = ValR14 +rs3.getInt("Sugar"));



		            product2.put("Fruits",ValR15 = ValR15 +rs3.getInt("Fruits"));



		            product2.put("Wine",ValR16 = ValR16 +rs3.getInt("Wine"));



		product2.put("Soda",ValR17 = ValR17 +rs3.getInt("Soda"));



		            product2.put("Sprayer",ValR18 = ValR18 +rs3.getInt("Sprayer"));



		            product2.put("Stationary",ValR19 = ValR19 +rs3.getInt("Stationary"));



		            product2.put("ShavingCream",ValR20 = ValR20 +rs3.getInt("ShavingCream"));



		            product2.put("FluMedicine",ValR21 = ValR21 +rs3.getInt("FluMedicine"));



		            product2.put("HosePipe",ValR22 = ValR22 +rs3.getInt("HosePipe"));



		            product2.put("RainBoots",ValR23 = ValR23 +rs3.getInt("RainBoots"));



		            product2.put("Milk",ValR24 = ValR24 +rs3.getInt("Milk"));      



		            product2.put("CannedBeer",ValR25 = ValR25 +rs3.getInt("CannedBeer"));                        



		            product2.put("CleaningBrush",ValR26 = ValR26 +rs3.getInt("CleaningBrush"));



		            product2.put("TentSupply",ValR27 = ValR27 +rs3.getInt("TentSupply"));



		            product2.put("HandSanitizer",ValR28 = ValR28 +rs3.getInt("HandSanitizer"));



		            product2.put("Detergents",ValR29 = ValR29 +rs3.getInt("Detergents"));



		            product2.put("Hats",ValR30 = ValR30 +rs3.getInt("Hats"));



		            product2.put("SunShades",ValR31 = ValR31 +rs3.getInt("SunShades"));



		            product2.put("IceCream",ValR32 = ValR32 +rs3.getInt("IceCream"));



		            product2.put("KitchenCleaner",ValR33 = ValR33 +rs3.getInt("KitchenCleaner"));



		            product2.put("ShampooConditioner",ValR34 = ValR34 +rs3.getInt("ShampooConditioner"));



		            product2.put("FlipFlops",ValR35 = ValR35 +rs3.getInt("FlipFlops"));



		product2.put("Curd",ValR36 = ValR36 +rs3.getInt("Curd"));



		            product2.put("SunscreenLotion",ValR37 = ValR37 +rs3.getInt("SunscreenLotion"));



		            product2.put("Flour",ValR38 = ValR38 +rs3.getInt("Flour"));



		            product2.put("Gloves",ValR39 = ValR39 +rs3.getInt("Gloves"));



		            product2.put("MosquitoRepellant",ValR40 = ValR40 +rs3.getInt("MosquitoRepellant"));



		            product2.put("Cheese",ValR41 = ValR41 +rs3.getInt("Cheese"));



		            product2.put("Bread",ValR42 = ValR42 +rs3.getInt("Bread"));



		            product2.put("Moisturizer",ValR43 = ValR43 +rs3.getInt("Moisturizer"));



		            product2.put("Diaper",ValR44 = ValR44 +rs3.getInt("Diaper"));



		            product2.put("SportsWear",ValR45 = ValR45 +rs3.getInt("SportsWear"));



		            product2.put("Vegetables",ValR46 = ValR46 +rs3.getInt("Vegetables"));



		product2.put("Wipes",ValR47 = ValR47 +rs3.getInt("Wipes"));



		product2.put("PottedPlants",ValR48 = ValR48 +rs3.getInt("PottedPlants"));



		            product2.put("ShowerGel",ValR49 = ValR49 +rs3.getInt("ShowerGel"));



		            product2.put("PartyDecorations",ValR50 = ValR50 +rs3.getInt("PartyDecorations"));





		}






		//System.out.println(product2);





		Set<Entry<String,Integer>> set3 = product2.entrySet();



		List<Entry<String,Integer>> list3 = new ArrayList<Entry<String,Integer>>(set3);



		Collections.sort(list3, new Comparator<Map.Entry<String,Integer>>()



		{



		public int compare(Map.Entry<String,Integer> o5, Map.Entry<String,Integer> o6)



		{



		return (o6.getValue()).compareTo(o5.getValue());



		}





		});



		    // sort the products based on Value to get the popularity



		    //sorted_product.putAll(product);



		    //System.out.println(sorted_product);



		    for(int cnt3 = 0; cnt3 < 10;){



		       



		              java.util.Map.Entry<String, Integer> e3 = list3.get(cnt3);



		              String itemName3 = e3.getKey();



		              int popularity3 = e3.getValue();



		              item3[cnt3]=itemName3;



		              pop3[cnt3]=popularity3;



		              System.out.println(item3[cnt3]+"---"+pop3[cnt3]);



		              cnt3++;



		               



		          }  //Top 10 products
		
		
		
		//Low Weather Begin
		String requestAllTransaction= "select t1.* from RAKRetail.retail_transactions t1 where weather = 'Low'";
		
	    preparedStmt = conn.prepareStatement(requestAllTransaction);
		ResultSet rs = preparedStmt.executeQuery();
		String tempArffString;
		int count=0;
		Integer Val1=0,Val2=0,Val3=0,Val4=0,Val5=0,Val6=0,Val7=0,Val8=0,Val9=0,Val10=0;
		Integer Val11=0,Val12=0,Val13=0,Val14=0,Val15=0,Val16=0,Val17=0,Val18=0,Val19=0,Val20=0;
		Integer Val21=0,Val22=0,Val23=0,Val24=0,Val25=0,Val26=0,Val27=0,Val28=0,Val29=0,Val30=0;
		Integer Val31=0,Val32=0,Val33=0,Val34=0,Val35=0,Val36=0,Val37=0,Val38=0,Val39=0,Val40=0;
		Integer Val41=0,Val42=0,Val43=0,Val44=0,Val45=0,Val46=0,Val47=0,Val48=0,Val49=0,Val50=0;;
		
		while (rs.next()) {
			count++;
			product.put("GreenTea",Val1 = Val1+rs.getInt("GreenTea"));
			product.put("Butter",Val2 = Val2+rs.getInt("Butter"));
			product.put("ThermalWear",Val3 = Val3 +rs.getInt("ThermalWear"));
			product.put("HandBags",Val4 = Val4 +rs.getInt("HandBags"));
			product.put("BathroomCleaner",Val5 = Val5 +rs.getInt("BathroomCleaner"));
			product.put("Umbrella",Val6 = Val6 +rs.getInt("Umbrella"));
            product.put("Coffee",Val7 = Val7 +rs.getInt("Coffee"));
            product.put("Egg",Val8 = Val8 +rs.getInt("Egg"));
			product.put("Socks",Val9 = Val9 +rs.getInt("Socks"));
            product.put("Water",Val10 = Val10 +rs.getInt("Water"));
            product.put("Kettle",Val11 = Val11 +rs.getInt("Kettle"));
            product.put("Bacon",Val12 = Val12 +rs.getInt("Bacon"));
            product.put("Swimsuit",Val13 = Val13 +rs.getInt("Swimsuit"));
            product.put("Sugar",Val14 = Val14 +rs.getInt("Sugar"));
            product.put("Fruits",Val15 = Val15 +rs.getInt("Fruits"));
            product.put("Wine",Val16 = Val16 +rs.getInt("Wine"));
			product.put("Soda",Val17 = Val17 +rs.getInt("Soda"));
            product.put("Sprayer",Val18 = Val18 +rs.getInt("Sprayer"));
            product.put("Stationary",Val19 = Val19 +rs.getInt("Stationary"));
            product.put("ShavingCream",Val20 = Val20 +rs.getInt("ShavingCream"));
            product.put("FluMedicine",Val21 = Val21 +rs.getInt("FluMedicine"));
            product.put("HosePipe",Val22 = Val22 +rs.getInt("HosePipe"));
            product.put("RainBoots",Val23 = Val23 +rs.getInt("RainBoots"));
            product.put("Milk",Val24 = Val24 +rs.getInt("Milk"));      
            product.put("CannedBeer",Val25 = Val25 +rs.getInt("CannedBeer"));                        
            product.put("CleaningBrush",Val26 = Val26 +rs.getInt("CleaningBrush"));
            product.put("TentSupply",Val27 = Val27 +rs.getInt("TentSupply"));
            product.put("HandSanitizer",Val28 = Val28 +rs.getInt("HandSanitizer"));
            product.put("Detergents",Val29 = Val29 +rs.getInt("Detergents"));
            product.put("Hats",Val30 = Val30 +rs.getInt("Hats"));
            product.put("SunShades",Val31 = Val31 +rs.getInt("SunShades"));
            product.put("IceCream",Val32 = Val32 +rs.getInt("IceCream"));
            product.put("KitchenCleaner",Val33 = Val33 +rs.getInt("KitchenCleaner"));
            product.put("ShampooConditioner",Val34 = Val34 +rs.getInt("ShampooConditioner"));
            product.put("FlipFlops",Val35 = Val35 +rs.getInt("FlipFlops"));
			product.put("Curd",Val36 = Val36 +rs.getInt("Curd"));
            product.put("SunscreenLotion",Val37 = Val37 +rs.getInt("SunscreenLotion"));
            product.put("Flour",Val38 = Val38 +rs.getInt("Flour"));
            product.put("Gloves",Val39 = Val39 +rs.getInt("Gloves"));
            product.put("MosquitoRepellant",Val40 = Val40 +rs.getInt("MosquitoRepellant"));
            product.put("Cheese",Val41 = Val41 +rs.getInt("Cheese"));
            product.put("Bread",Val42 = Val42 +rs.getInt("Bread"));
            product.put("Moisturizer",Val43 = Val43 +rs.getInt("Moisturizer"));
            product.put("Diaper",Val44 = Val44 +rs.getInt("Diaper"));
            product.put("SportsWear",Val45 = Val45 +rs.getInt("SportsWear"));
            product.put("Vegetables",Val46 = Val46 +rs.getInt("Vegetables"));
			product.put("Wipes",Val47 = Val47 +rs.getInt("Wipes"));
			product.put("PottedPlants",Val48 = Val48 +rs.getInt("PottedPlants"));
            product.put("ShowerGel",Val49 = Val49 +rs.getInt("ShowerGel"));
            product.put("PartyDecorations",Val50 = Val50 +rs.getInt("PartyDecorations"));
					
		}
		//System.out.println(count);
		//System.out.println(product);
		
		Set<Entry<String,Integer>> set = product.entrySet();
		List<Entry<String,Integer>> list = new ArrayList<Entry<String,Integer>>(set);
		Collections.sort(list, new Comparator<Map.Entry<String,Integer>>()
		{
			public int compare(Map.Entry<String,Integer> o1, Map.Entry<String,Integer> o2)	
			{
				return (o2.getValue()).compareTo(o1.getValue());
			}
			
		});
	    // sort the products based on value to get the popularity
	    //sorted_product.putAll(product);
	    //System.out.println(sorted_product);
	    for(int cnt = 0; cnt < 10;){
	    	   
               java.util.Map.Entry<String, Integer> e = list.get(cnt);
               String itemName = e.getKey();
               int popularity = e.getValue();
               item1[cnt]=itemName;
               pop1[cnt]=popularity;
               System.out.println(item1[cnt]+"---"+pop1[cnt]);
               cnt++;
               
           }  //End-Weather-Low
	    
	//Weather high graph populated
	   System.out.println("----------------Entering the Hot section----------------");
	
	    String requestHighTransaction= "select t2.* from RAKRetail.retail_transactions t2 where weather = 'Hot';";


	    preparedStmt = conn.prepareStatement(requestHighTransaction);

	ResultSet rs2 = preparedStmt.executeQuery();

	


	Integer ValH1=0,ValH2=0,ValH3=0,ValH4=0,ValH5=0,ValH6=0,ValH7=0,ValH8=0,ValH9=0,ValH10=0;

	Integer ValH11=0,ValH12=0,ValH13=0,ValH14=0,ValH15=0,ValH16=0,ValH17=0,ValH18=0,ValH19=0,ValH20=0;

	Integer ValH21=0,ValH22=0,ValH23=0,ValH24=0,ValH25=0,ValH26=0,ValH27=0,ValH28=0,ValH29=0,ValH30=0;

	Integer ValH31=0,ValH32=0,ValH33=0,ValH34=0,ValH35=0,ValH36=0,ValH37=0,ValH38=0,ValH39=0,ValH40=0;

	Integer ValH41=0,ValH42=0,ValH43=0,ValH44=0,ValH45=0,ValH46=0,ValH47=0,ValH48=0,ValH49=0,ValH50=0;;


	while (rs2.next()) {

	count++;

	product1.put("GreenTea",ValH1 = ValH1+rs2.getInt("GreenTea"));

	product1.put("Butter",ValH2 = ValH2+rs2.getInt("Butter"));

	product1.put("ThermalWear",ValH3 = ValH3 +rs2.getInt("ThermalWear"));

	product1.put("HandBags",ValH4 = ValH4 +rs2.getInt("HandBags"));

	product1.put("BathroomCleaner",ValH5 = ValH5 +rs2.getInt("BathroomCleaner"));

	product1.put("Umbrella",ValH6 = ValH6 +rs2.getInt("Umbrella"));

	            product1.put("Coffee",ValH7 = ValH7 +rs2.getInt("Coffee"));

	            product1.put("Egg",ValH8 = ValH8 +rs2.getInt("Egg"));

	product1.put("Socks",ValH9 = ValH9 +rs2.getInt("Socks"));

	            product1.put("Water",ValH10 = ValH10 +rs2.getInt("Water"));

	            product1.put("Kettle",ValH11 = ValH11 +rs2.getInt("Kettle"));

	            product1.put("Bacon",ValH12 = ValH12 +rs2.getInt("Bacon"));

	            product1.put("Swimsuit",ValH13 = ValH13 +rs2.getInt("Swimsuit"));

	            product1.put("Sugar",ValH14 = ValH14 +rs2.getInt("Sugar"));

	            product1.put("Fruits",ValH15 = ValH15 +rs2.getInt("Fruits"));

	            product1.put("Wine",ValH16 = ValH16 +rs2.getInt("Wine"));

	product1.put("Soda",ValH17 = ValH17 +rs2.getInt("Soda"));

	            product1.put("Sprayer",ValH18 = ValH18 +rs2.getInt("Sprayer"));

	            product1.put("Stationary",ValH19 = ValH19 +rs2.getInt("Stationary"));

	            product1.put("ShavingCream",ValH20 = ValH20 +rs2.getInt("ShavingCream"));

	            product1.put("FluMedicine",ValH21 = ValH21 +rs2.getInt("FluMedicine"));

	            product1.put("HosePipe",ValH22 = ValH22 +rs2.getInt("HosePipe"));

	            product1.put("RainBoots",ValH23 = ValH23 +rs2.getInt("RainBoots"));

	            product1.put("Milk",ValH24 = ValH24 +rs2.getInt("Milk"));      

	            product1.put("CannedBeer",ValH25 = ValH25 +rs2.getInt("CannedBeer"));                        

	            product1.put("CleaningBrush",ValH26 = ValH26 +rs2.getInt("CleaningBrush"));

	            product1.put("TentSupply",ValH27 = ValH27 +rs2.getInt("TentSupply"));

	            product1.put("HandSanitizer",ValH28 = ValH28 +rs2.getInt("HandSanitizer"));

	            product1.put("Detergents",ValH29 = ValH29 +rs2.getInt("Detergents"));

	            product1.put("Hats",ValH30 = ValH30 +rs2.getInt("Hats"));

	            product1.put("SunShades",ValH31 = ValH31 +rs2.getInt("SunShades"));

	            product1.put("IceCream",ValH32 = ValH32 +rs2.getInt("IceCream"));

	            product1.put("KitchenCleaner",ValH33 = ValH33 +rs2.getInt("KitchenCleaner"));

	            product1.put("ShampooConditioner",ValH34 = ValH34 +rs2.getInt("ShampooConditioner"));

	            product1.put("FlipFlops",ValH35 = ValH35 +rs2.getInt("FlipFlops"));

	product1.put("Curd",ValH36 = ValH36 +rs2.getInt("Curd"));

	            product1.put("SunscreenLotion",ValH37 = ValH37 +rs2.getInt("SunscreenLotion"));

	            product1.put("Flour",ValH38 = ValH38 +rs2.getInt("Flour"));

	            product1.put("Gloves",ValH39 = ValH39 +rs2.getInt("Gloves"));

	            product1.put("MosquitoRepellant",ValH40 = ValH40 +rs2.getInt("MosquitoRepellant"));

	            product1.put("Cheese",ValH41 = ValH41 +rs2.getInt("Cheese"));

	            product1.put("Bread",ValH42 = ValH42 +rs2.getInt("Bread"));

	            product1.put("Moisturizer",ValH43 = ValH43 +rs2.getInt("Moisturizer"));

	            product1.put("Diaper",ValH44 = ValH44 +rs2.getInt("Diaper"));

	            product1.put("SportsWear",ValH45 = ValH45 +rs2.getInt("SportsWear"));

	            product1.put("Vegetables",ValH46 = ValH46 +rs2.getInt("Vegetables"));

	product1.put("Wipes",ValH47 = ValH47 +rs2.getInt("Wipes"));

	product1.put("PottedPlants",ValH48 = ValH48 +rs2.getInt("PottedPlants"));

	            product1.put("ShowerGel",ValH49 = ValH49 +rs2.getInt("ShowerGel"));

	            product1.put("PartyDecorations",ValH50 = ValH50 +rs2.getInt("PartyDecorations"));


	}

	

	//System.out.println(product1);


	Set<Entry<String,Integer>> set2 = product1.entrySet();

	List<Entry<String,Integer>> list2 = new ArrayList<Entry<String,Integer>>(set2);

	Collections.sort(list2, new Comparator<Map.Entry<String,Integer>>()

	{

	public int compare(Map.Entry<String,Integer> o3, Map.Entry<String,Integer> o4)

	{

	return (o4.getValue()).compareTo(o3.getValue());

	}


	});

	    // sort the products based on Value to get the popularity

	    //sorted_product.putAll(product);

	    //System.out.println(sorted_product);

	    for(int cnt1 = 0; cnt1 < 10;){

	       

	               java.util.Map.Entry<String, Integer> e2 = list2.get(cnt1);

	               String itemName2 = e2.getKey();

	               int popularity2 = e2.getValue();

	               item2[cnt1]=itemName2;

	               pop2[cnt1]=popularity2;

	               System.out.println(item2[cnt1]+"---"+pop2[cnt1]);

	               cnt1++;

	               

	           }  //End-Weather High
	           
	    

	  } catch (SQLException ex) {
	    // handle any errors
	    System.out.println("SQLException: " + ex.getMessage());
	    System.out.println("SQLState: " + ex.getSQLState());
	    System.out.println("VendorError: " + ex.getErrorCode());
	  } finally {
	       System.out.println("Closing the connection.");
	      if (conn != null) try { conn.close(); } catch (SQLException ignore) {}
	  }



%>



<script type="text/javascript">
$(document).ready(function () {

    $("#btn-blog-next").click(function () {
      $('#blogCarousel').carousel('next')
    });
     $("#btn-blog-prev").click(function () {
      $('#blogCarousel').carousel('prev')
    });

     $("#btn-client-next").click(function () {
      $('#clientCarousel').carousel('next')
    });
     $("#btn-client-prev").click(function () {
      $('#clientCarousel').carousel('prev')
    });
    
});

 $(window).load(function(){

    $('.flexslider').flexslider({
        animation: "slide",
        slideshow: true,
        start: function(slider){
          $('body').removeClass('loading');
        }
    });  
});

</script>

<script type="text/javascript">


$(function () {
    $('#container1').highcharts({
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false,
            backgroundColor:'transparent'
        },
        title: {
            text: ''
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: true,
                    distance: 10,
                    style: {
                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                    }
                }
            }
        },
        series: [{
            type: 'pie',
            name: 'Product Sold on Low Temperature',
            data: [
                ['<%=item1[0]%>',   <%=pop1[0]%>],
                ['<%=item1[1]%>',       <%=pop1[1]%>],
                {
                    name: '<%=item1[2]%>',
                    y: <%=pop1[2]%>,
                    sliced: true,
                    selected: true
                },
                ['<%=item1[3]%>',    <%=pop1[3]%>],
                ['<%=item1[4]%>',     <%=pop1[4]%>],
                ['<%=item1[5]%>',   <%=pop1[5]%>],
                ['<%=item1[6]%>',   <%=pop1[6]%>],
                ['<%=item1[7]%>',   <%=pop1[7]%>],
                ['<%=item1[8]%>',   <%=pop1[8]%>],
                ['<%=item1[9]%>',   <%=pop1[9]%>]
                
            ]
        }]
    });
});


//Second Graph

$(function () {
    $('#container2').highcharts({
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false,
            backgroundColor:'transparent'
        },
        title: {
            text: ''
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: true,
                    distance: 10,
                    style: {
                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                    }
                }
            }
        },
        series: [{
            type: 'pie',
            name: 'Products Sold on High Temperature ',
            data: [
                   ['<%=item2[0]%>',   <%=pop2[0]%>],
                   ['<%=item2[1]%>',       <%=pop2[1]%>],
                   {
                       name: '<%=item2[2]%>',
                       y: <%=pop2[2]%>,
                       sliced: true,
                       selected: true
                   },
                   ['<%=item2[3]%>',    <%=pop2[3]%>],
                   ['<%=item2[4]%>',     <%=pop2[4]%>],
                   ['<%=item2[5]%>',   <%=pop2[5]%>],
                   ['<%=item2[6]%>',   <%=pop2[6]%>],
                   ['<%=item2[7]%>',   <%=pop2[7]%>],
                   ['<%=item2[8]%>',   <%=pop2[8]%>],
                   ['<%=item2[9]%>',   <%=pop2[9]%>]
                   
               ]
        }]
    });
});

//3rd Graph

$(function () {
    $('#container3').highcharts({
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false,
            backgroundColor:'transparent'
        },
        title: {
            text: ''
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: true,
                    distance: 10,
                    style: {
                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                    }
                }
            }
        },
        series: [{
            type: 'pie',
            name: 'Top 10 Selling Products ',
            data: [
                   ['<%=item3[0]%>',   <%=pop3[0]%>],
                   ['<%=item3[1]%>',       <%=pop3[1]%>],
                   {
                       name: '<%=item3[2]%>',
                       y: <%=pop3[2]%>,
                       sliced: true,
                       selected: true
                   },
                   ['<%=item3[3]%>',    <%=pop3[3]%>],
                   ['<%=item3[4]%>',     <%=pop3[4]%>],
                   ['<%=item3[5]%>',   <%=pop3[5]%>],
                   ['<%=item3[6]%>',   <%=pop3[6]%>],
                   ['<%=item3[7]%>',   <%=pop3[7]%>],
                   ['<%=item3[8]%>',   <%=pop3[8]%>],
                   ['<%=item3[9]%>',   <%=pop3[9]%>]
                   
               ]
        }]
    });
});

</script>
</head>
<body>
<body>
  
  	<!-- NAVIGATION MENU -->

    <div class="navbar-nav navbar-inverse navbar-fixed-top">
        <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#"><img src="assets/img/logo30.png" alt=""> RAK Retail Dashboard</a>
        </div> 
          <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li class="active"><a href="index.jsp"><i class="icon-home icon-white"></i> Home</a></li>
              
            </ul>
          </div><!--/.nav-collapse -->
        </div>
    </div>

    <div class="container">

	  <!-- FIRST ROW OF BLOCKS -->     
      <div class="row">

      <!-- USER PROFILE BLOCK -->
		        <div class="col-sm-3 col-lg-3">
		      		<div class="dash-unit">
			      		<dtitle>User Details</dtitle>
			      		<hr>
						<div class="thumbnail">
							<img src="assets/img/raklogo.png" alt="Admin" class="img-circle">
						</div><!-- /thumbnail -->
						<h1>RAK Retail Admin</h1>
						<h3>Transaction Details</h3>
						<br>
							
						</div>
		        </div>


      <!-- Pie CHART BLOCK -->
		        <div class="col-md-6"">
		      		<div class="dash-unit1">
				  		<dtitle>Top 10 Selling Products</dtitle>
				  		<hr>
			        	<div id="container3" style="min-width: 200px; max-width: 400px; height: 250px; margin: 0 auto"></div>
					</div>
		        </div>

    
        
        <div class="col-sm-3 col-lg-3">

      <!-- TOTAL TRANSACTION BLOCK -->
	      		<div class="half-unit">
		      		<dtitle>Total Transaction</dtitle>
		      		<hr>
			      		<div class="clockcenter">
			      		<h4>Current Transaction Occurred</h4>
				      		<digiclock><h2><%= noofrecords %></h2></digiclock>
			      		</div>
				</div>

      <!-- Progress TIME -->
				<div class="half-unit">
		      		<dtitle>Load status</dtitle>
		      		<hr>
		      		<div class="cont">
						<p>Task progress...</p>
					</div>
			             <div class="progress">
			              <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width:70%">
                          <span class="sr-only">70% Complete</span>
						        
					        </div>
					     </div>
	      		</div>

        </div>
      </div><!-- /row -->
      
      
	  
 
	  <!-- SECOND ROW OF BLOCKS -->     
      <div class="row">
      
       <div class="col-md-6"">
		      		<div class="dash-unit1">
				  		<dtitle>Product Sales during Hot Weather</dtitle>
				  		<hr>
			        	<div id="container2" style="min-width: 200px; max-width: 400px; height: 250px; margin: 0 auto"></div>
					</div>
		        </div>
		        
		    <div class="col-md-6"">
		      		<div class="dash-unit1">
				  		<dtitle>Product Sales during Cold Weather</dtitle>
				  		<hr>
			        	<div id="container1" style="min-width: 200px; max-width: 400px; height: 250px; margin: 0 auto"></div>
					</div>
		        </div>   
		          
		        
      	<div class="col-sm-3 col-lg-3">
	  
	  <!-- BARS CHART - lineandbars.js file -->     

	  <!-- TO DO LIST -->    
	  <div class="half-unit">
			      		<dtitle>Count of Cheese Product</dtitle>
			      		<hr>
			      		<div class="cont">
			      		<digiclock><h2><%= cntofcheese %></h2></digiclock>
		      	
			      		</div>
		      		</div> 
		      		
	      		
      	</div>


      	<div class="col-sm-3 col-lg-3">
         <div class="half-unit">
			      		<dtitle>Count of Milk Product</dtitle>
			      		<hr>
			      		<div class="cont">
			      		<digiclock><h2><%= cntofmilk %></h2></digiclock>
		      	
			      		</div>
		      		</div>
		      		
	  <!-- SERVER REQ BLOCK -->     
		      		
      		
	  <!-- PAGE VIEWS BLOCK -->     
      	</div>

      	<div class="col-sm-3 col-lg-3">
      	<div class="half-unit">
			      		<dtitle>Count of Curd Product</dtitle>
			      		<hr>
			      		<div class="cont">
			      		<digiclock><h2><%= cntofcurd %></h2></digiclock>
		      	
			      		</div>
			      		</div>
			</div>	
			
			<div class="col-sm-3 col-lg-3">
      	<div class="half-unit">
			      		<dtitle>Count of Butter Product</dtitle>
			      		<hr>
			      		<div class="cont">
			      		<digiclock><h2><%= cntofbutter %></h2></digiclock>
		      	
			      		</div>
			      		</div>
			</div>  
			
			<div class="col-sm-3 col-lg-3">
      	<div class="half-unit">
			      		<dtitle>Count of Egg Product</dtitle>
			      		<hr>
			      		<div class="cont">
			      		<digiclock><h2><%= cntofegg %></h2></digiclock>
		      	
			      		</div>
			      		</div>
			</div>
			<div class="col-sm-3 col-lg-3">
      	<div class="half-unit">
			      		<dtitle>Count of Ice Cream Product</dtitle>
			      		<hr>
			      		<div class="cont">
			      		<digiclock><h2><%= cntoficecream %></h2></digiclock>
		      	
			      		</div>
			      		</div>
			</div>  
			<div class="col-sm-3 col-lg-3">
      	<div class="half-unit">
			      		<dtitle>Count of Bacon Product</dtitle>
			      		<hr>
			      		<div class="cont">
			      		<digiclock><h2><%= cntofbacon %></h2></digiclock>
		      	
			      		</div>
			      		</div>
			</div> 
			
			<div class="col-sm-3 col-lg-3">
      	<div class="half-unit">
			      		<dtitle>Count of Flour Product</dtitle>
			      		<hr>
			      		<div class="cont">
			      		<digiclock><h2><%= cntofflour %></h2></digiclock>
		      	
			      		</div>
			      		</div>
			</div> 		
			
			<div class="col-sm-3 col-lg-3">
      	<div class="half-unit">
			      		<dtitle>Count of Vegetable Product</dtitle>
			      		<hr>
			      		<div class="cont">
			      		<digiclock><h2><%= cntofvegetable %></h2></digiclock>
		      	
			      		</div>
			      		</div>
			</div>
			<div class="col-sm-3 col-lg-3">
      	<div class="half-unit">
			      		<dtitle>Count of Sugar Product</dtitle>
			      		<hr>
			      		<div class="cont">
			      		<digiclock><h2><%= cntofsugar %></h2></digiclock>
		      	
			      		</div>
			      		</div>
			</div>
			<div class="col-sm-3 col-lg-3">
      	<div class="half-unit">
			      		<dtitle>Count of Fruits Product</dtitle>
			      		<hr>
			      		<div class="cont">
			      		<digiclock><h2><%= cntoffruits %></h2></digiclock>
		      	
			      		</div>
			      		</div>
			</div>
			<div class="col-sm-3 col-lg-3">
      	<div class="half-unit">
			      		<dtitle>Count of Bread Product</dtitle>
			      		<hr>
			      		<div class="cont">
			      		<digiclock><h2><%= cntofbread %></h2></digiclock>
		      	
			      		</div>
			      		</div>
			</div>
			      		
			      
	  <!-- TOTAL CLIENT BLOCK -->     

      		
	  <!-- FOLLOWERS BLOCK -->     
		      		
      

 

      	<div class="col-sm-3 col-lg-3">
	  <!-- RNS SERVER UPTIME BLOCK -->     
		
      		
	  <!-- FOLLOWERS BLOCK -->     
      	</div>
	    
	    
      	<!-- /row -->

      <!-- THIRD ROW OF BLOCKS -->     
      <div class="row">
        <div class="col-sm-3 col-lg-3">
       <!-- MAIL BLOCK -->
       <!-- /dash-unit -->
		    		</div><!-- /span3 -->

	  <!-- GRAPH CHART - lineandbars.js file -->     

	  <!-- LAST MONTH REVENUE -->     
        
	  <!-- 30 DAYS STATS - CAROUSEL FLEXSLIDER -->     
      
      </div><!-- /row -->
     
      
	  <!-- FOURTH ROW OF BLOCKS -->     
	<div class="row">
	
	  <!-- TWITTER WIDGET BLOCK -->     
		<div class="col-sm-3 col-lg-3">
			<div class="dash-unit">
	      		<dtitle>Login details</dtitle>
	      		<hr>
				<div class="info-user">
					<span aria-hidden="true" class="li_megaphone fs2"></span>
				</div>
				<br>
		 		<div id="jstwitter" class="clearfix">
					<ul id="twitter_update_list"></ul>
				</div>
				<script src="http://twitter.com/javascripts/blogger.js"></script><!-- Script Needed to load the Tweets -->
				<script src="http://api.twitter.com/1/statuses/user_timeline/wrapbootstrap.json?callback=twitterCallback2&amp;count=1"></script>
				<!-- To show your tweets replace "wrapbootstrap", in the line above, with your user. -->
				<div class="text">
				<p><grey>Logged in as <?php echo $Username ?></grey></p>
                <p><grey>Timestamp logged as: <?php echo (date("Y-m-d",$t)); ?></grey></p>
                <p><grey>Admin Log:</grey></p>
                <p><grey><div id="myDiv1"></div></grey></p>
                </div>
			</div>
		</div>

	  <!-- NOTIFICATIONS BLOCK -->     
		<div class="col-sm-3 col-lg-3">
			<div class="dash-unit">
	      		<dtitle>Notifications</dtitle>
	      		<hr>
	      		<div class="info-user">
					<span aria-hidden="true" class="li_bubble fs2"></span>
				</div>
	      		<div class="cont">
	      			<!-- <p><button class="btnnew noty" data-noty-options="{&quot;text&quot;:&quot;This is a success notification&quot;,&quot;layout&quot;:&quot;topRight&quot;,&quot;type&quot;:&quot;success&quot;}">Top Right</button></p> -->
	      			<!-- <p><button class="btnnew noty" data-noty-options="{&quot;text&quot;:&quot;This is an informaton notification&quot;,&quot;layout&quot;:&quot;topLeft&quot;,&quot;type&quot;:&quot;information&quot;}">Top Left</button></p> -->
                    <p><button onclick="redirect()" class="btnnew noty" data-noty-options="{&quot;text&quot;:&quot;Your Download will start in 2 sec....&quot;,&quot;layout&quot;:&quot;topCenter&quot;,&quot;type&quot;:&quot;alert&quot;,&quot;animateOpen&quot;: {&quot;opacity&quot;: &quot;show&quot;}}">Dataset Reference</button></p>
                    <p><button onclick="redirect1()" class="btnnew noty" data-noty-options="{&quot;text&quot;:&quot;Your Download will start in 2 sec.....&quot;,&quot;layout&quot;:&quot;topCenter&quot;,&quot;type&quot;:&quot;alert&quot;,&quot;animateOpen&quot;: {&quot;opacity&quot;: &quot;show&quot;}}"> Project Report</button></p>
	      			<p><button onclick="redirect2()" class="btnnew noty" data-noty-options="{&quot;text&quot;:&quot;Your Download will start in 2 sec.....&quot;,&quot;layout&quot;:&quot;topCenter&quot;,&quot;type&quot;:&quot;alert&quot;,&quot;animateOpen&quot;: {&quot;opacity&quot;: &quot;show&quot;}}">Market Basket Analysis Research Paper</button></p>
	      		</div>
			</div>
		</div>

	  <!-- RESET PANEL BLOCK -->     
		<div class="col-sm-3 col-lg-3">
			<div class="dash-unit">
	      		<dtitle>Admin Reset panel</dtitle>
	      		<hr>
	      		<div class="info-user">
					<span aria-hidden="true" class="li_params fs2"></span>
				</div>
				<br>
                
                 
				<div class="switch">
					<input type="radio" onclick="loadXMLDoc1()" class="switch-input" name="view" value="on" id="on" checked="">
					<label for="on" class="switch-label switch-label-off">Reset</label>
					<input type="radio" onclick="loadXMLDoc1()" class="switch-input" name="view" value="off" id="off">
					<label for="off" class="switch-label switch-label-on">Monitor</label>
					<span class="switch-selection"></span>
				</div>
				<div class="switch switch-blue">
					<input type="radio" onclick="loadXMLDoc2()" class="switch-input" name="view2" value="week2" id="week2" checked="">
                    
					<label for="week2" class="switch-label switch-label-off">Reset</label>
					<input type="radio" onclick="loadXMLDoc2()" class="switch-input" name="view2" value="month2" id="month2">
					<label for="month2" class="switch-label switch-label-on">Master</label>
					<span class="switch-selection"></span>
				</div>
				
				<div class="switch switch-yellow">
					<input type="radio" onclick="loadXMLDoc3()" class="switch-input" name="view3" value="Reset Alerts" id="yes" checked="">
					<label for="yes" class="switch-label switch-label-off">Reset</label>
					<input type="radio" onclick="loadXMLDoc3()" class="switch-input" name="view3" value="" id="no">
					<label for="no" class="switch-label switch-label-on">Alerts</label>
					<span class="switch-selection"></span>
				</div>
              
			</div>
		</div>

	 
	

 	  		<!-- INFORMATION BLOCK -->     
			<div class="col-sm-3 col-lg-3">
				<div class="dash-unit">
	      		<dtitle>Block Dashboard</dtitle>
	      		<hr>
	      		<div class="info-user">
					<span aria-hidden="true" class="li_display fs2"></span>
				</div>
				<br>
				<div class="text">
				<p>Rak Retail Dashboard</p>
                <p>By Team: 22</p>
				<p>Special Thanks to Prof.Chandrasekar for his guidance.</p>
				</div>

				</div>
			</div>

		</div><!--/row -->
    </div> 
      
      
	</div> <!-- /container -->
	<div id="footerwrap">
      	<footer class="clearfix"></footer>
      	<div class="container">
      		<div class="row">
      			<div class="col-sm-12 col-lg-12">
      			<p><img src="assets/img/logo.png" alt=""></p>
      			<p>RAK Retail Store - Copyright 2014</p>
      			</div>

      		</div><!-- /row -->
      	</div><!-- /container -->		
	</div><!-- /footerwrap -->



    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script type="text/javascript" src="assets/js/bootstrap.js"></script>
    
	
	
	<!-- NOTY JAVASCRIPT -->
	
	<!-- You can add more layouts if you want -->
    <!-- <script type="text/javascript" src="assets/js/dash-noty.js"></script> This is a Noty bubble when you init the theme-->
	<script type="text/javascript" src="http://code.highcharts.com/highcharts.js"></script>
	<script src="http://code.highcharts.com/highcharts-more.js"></script>
    <script src="http://code.highcharts.com/modules/exporting.js"></script>




</body>

</html>