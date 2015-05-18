<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.io.*"%>
 <%@ page import="java.sql.*" %>
<html lang="en-US" xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
<head>
	<title>RAK Online Retail Shopping</title>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<link rel="stylesheet" href="css/main.css" type="text/css" media="all" />
	
	<script src="js/jquery-1.6.2.min.js" type="text/javascript" charset="utf-8"></script>
	<!--[if IE 6]>
		<script src="js/DD_belatedPNG-min.js" type="text/javascript" charset="utf-8"></script>
	<![endif]-->
	<script src="js/jquery.jcarousel.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/functions.js" type="text/javascript" charset="utf-8"></script>
	<!--<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>-->
   <script src="http://www.webresourcesdepot.com/wp-content/uploads/file/drag-drop-shopping-cart/jquery-ui-1.9.0.custom.min.js"></script>
</head>



<%

String customerid="";

Cookie cookie = null;
   Cookie[] cookies = null;
   cookies = request.getCookies();
    if( cookies != null)
      {
      for (int i = 0; i < cookies.length; i++){
         cookie = cookies[i];
         String b = cookie.getName();
         if(b.equalsIgnoreCase("userid"))
         {
        	 customerid=cookie.getValue();
        	 System.out.println(customerid);
         }
  
     }
  }
    
    String customername="";

    Cookie cookie1 = null;
       Cookie[] cookies1 = null;
       cookies1 = request.getCookies();
        if( cookies != null)
          {
          for (int i = 0; i < cookies1.length; i++){
             cookie1 = cookies1[i];
             String b1 = cookie1.getName();
             if(b1.equalsIgnoreCase("firstname"))
             {
            	 customername=cookie1.getValue();
            	 System.out.println(customername);
             }
      
         }
      }
        
    
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
int cntofgreentea=0;
int cntofbutter=0;
int cntofthermalwear=0;
int cntofhandbags=0;
int cntofbc=0;
int cntofum=0;
int cntofcoffee=0;
int cntofegg=0;
int cntofsocks=0;
int cntofwater=0;
int cntofkettle=0;
int cntofbacon=0;
int cntofswim=0;
int cntofsugar=0;
int cntoffr=0;
int cntofwine=0;
int cntofsoda=0;
int cntofsp=0;
int cntofst=0;
int cntofshave=0;
int cntoffm=0;
int cntofhp=0;
int cntofrb=0;
int cntofmilk=0;
int cntofcb=0;
int cntofbrush=0;
int cntofts=0;
int cntofhand=0;
int cntofdt=0;
int cntofhat=0;
int cntofsun=0;
int cntofic=0;
int cntofkc=0;
int cntofshamp=0;
int cntofff=0;
int cntofcurd=0;
int cntoflotion=0;
int cntofflour=0;
int cntofgl=0;
int cntofmr=0;
int cntofcheese=0;
int cntofmois=0;
int cntofbread=0;
int cntofdia=0;
int cntofsw=0;
int cntofveg=0;
int cntofwi=0;
int cntofpp=0;
int cntofsg=0;
int cntofpd=0;


try {
	    conn = DriverManager.getConnection(jdbcUrl);
	    
	    //Green Tea
	    String Greentea= "select count(GreenTea) from RAKRetail.retail_transactions where GreenTea='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(Greentea);
		ResultSet rsgreentea = preparedStmt.executeQuery();
		if (rsgreentea.next()) {
		 cntofgreentea = rsgreentea.getInt(1);
		System.out.println(cntofgreentea);
                    }
		// Butter
	    String butter= "select count(Butter) from RAKRetail.retail_transactions where Butter='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(butter);
		ResultSet rsbutter = preparedStmt.executeQuery();
		if (rsbutter.next()) {
		 cntofbutter = rsbutter.getInt(1);
		System.out.println(cntofbutter);
                    }
		// Thermal Wear
	    String thermalwear= "select count(ThermalWear) from RAKRetail.retail_transactions where ThermalWear='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(thermalwear);
		ResultSet rsthermalwear = preparedStmt.executeQuery();
		if (rsthermalwear.next()) {
		 cntofthermalwear = rsthermalwear.getInt(1);
		System.out.println(cntofthermalwear);
                    }
		//Handbags
	    String handbags= "select count(HandBags) from RAKRetail.retail_transactions where HandBags='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(handbags);
		ResultSet rshandbags = preparedStmt.executeQuery();
		if (rshandbags.next()) {
		 cntofhandbags = rshandbags.getInt(1);
		System.out.println(cntofhandbags);
                    }
		//Bathroom Cleaner
	    String bc= "select count(BathroomCleaner) from RAKRetail.retail_transactions where BathroomCleaner='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(bc);
		ResultSet rsbc = preparedStmt.executeQuery();
		if (rsbc.next()) {
		 cntofbc= rsbc.getInt(1);
		System.out.println(cntofbc);
                    }
		//Umberlla
	    String um= "select count(Umberlla) from RAKRetail.retail_transactions where Umberlla='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(Greentea);
		ResultSet rsum = preparedStmt.executeQuery();
		if (rsum.next()) {
		 cntofum = rsum.getInt(1);
		System.out.println(cntofum);
                    }
		//Coffee
	    String coffee= "select count(Coffee) from RAKRetail.retail_transactions where Coffee='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(coffee);
		ResultSet rscoffee = preparedStmt.executeQuery();
		if (rsgreentea.next()) {
		 cntofcoffee= rscoffee.getInt(1);
		System.out.println(cntofcoffee);
                    }
		//Egg
	    String egg= "select count(Egg) from RAKRetail.retail_transactions where Egg='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(egg);
		ResultSet rsegg = preparedStmt.executeQuery();
		if (rsegg.next()) {
		 cntofegg = rsegg.getInt(1);
		System.out.println(cntofegg);
                    }
		//Socks
	    String socks= "select count(Socks) from RAKRetail.retail_transactions where Socks='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(socks);
		ResultSet rssocks = preparedStmt.executeQuery();
		if (rssocks.next()) {
		 cntofsocks = rssocks.getInt(1);
		System.out.println(cntofsocks);
                    }
		//Water
	    String water= "select count(Water) from RAKRetail.retail_transactions where Water='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(water);
		ResultSet rswater = preparedStmt.executeQuery();
		if (rswater.next()) {
		 cntofwater = rswater.getInt(1);
		System.out.println(cntofwater);
                    }
		//Kettle
	    String kettle= "select count(Kettle) from RAKRetail.retail_transactions where Kettle='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(kettle);
		ResultSet rskettle= preparedStmt.executeQuery();
		if (rskettle.next()) {
		 cntofkettle = rskettle.getInt(1);
		System.out.println(cntofkettle);
                    }
		//Bacon
	    String bacon= "select count(Bacon) from RAKRetail.retail_transactions where Bacon='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(bacon);
		ResultSet rsbacon= preparedStmt.executeQuery();
		if (rsbacon.next()) {
		 cntofbacon = rsbacon.getInt(1);
		System.out.println(cntofbacon);
                    }
		//Swimsuit
	    String swim= "select count(Swimsuit) from RAKRetail.retail_transactions where Swimsuit='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(swim);
		ResultSet rsswim= preparedStmt.executeQuery();
		if (rsswim.next()) {
		 cntofswim = rsswim.getInt(1);
		System.out.println(cntofswim);
                    }
		//Sugar
	    String sugar= "select count(Sugar) from RAKRetail.retail_transactions where Sugar='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(sugar);
		ResultSet rssugar= preparedStmt.executeQuery();
		if (rssugar.next()) {
		 cntofsugar = rssugar.getInt(1);
		System.out.println(cntofsugar);
                    }
		//Fruits
	    String fr= "select count(Fruits) from RAKRetail.retail_transactions where Fruits='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(fr);
		ResultSet rsfr= preparedStmt.executeQuery();
		if (rsfr.next()) {
		 cntoffr = rsfr.getInt(1);
		System.out.println(cntoffr);
                    }
		//Wine
	    String wine= "select count(Wine) from RAKRetail.retail_transactions where Wine='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(wine);
		ResultSet rswine= preparedStmt.executeQuery();
		if (rskettle.next()) {
		 cntofwine = rswine.getInt(1);
		System.out.println(cntofwine);
                    }
		//Soda
	    String soda= "select count(Soda) from RAKRetail.retail_transactions where Soda='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(soda);
		ResultSet rssoda= preparedStmt.executeQuery();
		if (rssoda.next()) {
		 cntofsoda = rssoda.getInt(1);
		System.out.println(cntofsoda);
                    }
		//Sprayer
	    String sp= "select count(Sprayer) from RAKRetail.retail_transactions where Sprayer='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(sp);
		ResultSet rssp= preparedStmt.executeQuery();
		if (rssp.next()) {
		 cntofsp = rssp.getInt(1);
		System.out.println(cntofsp);
                    }
		//Stationery
	    String st= "select count(Stationary) from RAKRetail.retail_transactions where Stationary='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(st);
		ResultSet rsst= preparedStmt.executeQuery();
		if (rsst.next()) {
		 cntofst = rsst.getInt(1);
		System.out.println(cntofst);
                    }
		//ShavingCream
	    String shave= "select count(ShavingCream) from RAKRetail.retail_transactions where ShavingCream='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(shave);
		ResultSet rsshave= preparedStmt.executeQuery();
		if (rsshave.next()) {
		 cntofshave = rsshave.getInt(1);
		System.out.println(cntofshave);
                    }
		//Flu Medicine
	    String fm= "select count(FluMedicine) from RAKRetail.retail_transactions where FluMedicine='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(fm);
		ResultSet rsfm= preparedStmt.executeQuery();
		if (rsfm.next()) {
		 cntoffm = rsfm.getInt(1);
		System.out.println(cntoffm);
                    }
		
		//HosePipe
	    String hp= "select count(HosePipe) from RAKRetail.retail_transactions where HosePipe='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(hp);
		ResultSet rshp= preparedStmt.executeQuery();
		if (rshp.next()) {
		 cntofrb = rshp.getInt(1);
		System.out.println(cntofrb);
                    }
		
		//RainBoots
	    String rb= "select count(RainBoots) from RAKRetail.retail_transactions where RainBoots='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(rb);
		ResultSet rsrb= preparedStmt.executeQuery();
		if (rsrb.next()) {
		 cntofrb = rsrb.getInt(1);
		System.out.println(cntofrb);
                    }
		
		
		//Milk
	    String milk= "select count(Milk) from RAKRetail.retail_transactions where Milk='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(milk);
		ResultSet rsmilk= preparedStmt.executeQuery();
		if (rsmilk.next()) {
		 cntofmilk = rsmilk.getInt(1);
		System.out.println(cntofmilk);
                    }
		//CannedBeer
	    String cb= "select count(CannedBeer) from RAKRetail.retail_transactions where CannedBeer='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(cb);
		ResultSet rscb= preparedStmt.executeQuery();
		if (rscb.next()) {
		 cntofcb = rscb.getInt(1);
		System.out.println(cntofcb);
                    }
		//CleaningBrush
	    String brush= "select count(CleaningBrush) from RAKRetail.retail_transactions where CleaningBrush='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(brush);
		ResultSet rsbrush= preparedStmt.executeQuery();
		if (rsbrush.next()) {
		 cntofbrush = rsbrush.getInt(1);
		System.out.println(cntofbrush);
                    }
		//TentSupply
	    String ts= "select count(TentSupply) from RAKRetail.retail_transactions where TentSupply='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(ts);
		ResultSet rsts= preparedStmt.executeQuery();
		if (rsts.next()) {
		 cntofts = rsts.getInt(1);
		System.out.println(cntofts);
                    }
		//HandSanitizer
	    String hand= "select count(HandSanitizer) from RAKRetail.retail_transactions where HandSanitizer='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(hand);
		ResultSet rshand= preparedStmt.executeQuery();
		if (rshand.next()) {
		 cntofhand = rshand.getInt(1);
		System.out.println(cntofhand);
                    }
		//Detergents
	    String dt= "select count(Detergents) from RAKRetail.retail_transactions where Detergents='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(dt);
		ResultSet rsdt= preparedStmt.executeQuery();
		if (rsdt.next()) {
		 cntofdt = rsdt.getInt(1);
		System.out.println(cntofdt);
                    }
		//Hats
	    String hat= "select count(Hats) from RAKRetail.retail_transactions where Hats='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(hat);
		ResultSet rshat= preparedStmt.executeQuery();
		if (rshat.next()) {
		 cntofhat = rshat.getInt(1);
		System.out.println(cntofhat);
                    }
		//SunShades
	    String sun= "select count(SunShades) from RAKRetail.retail_transactions where SunShades='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(sun);
		ResultSet rssun= preparedStmt.executeQuery();
		if (rssun.next()) {
		 cntofsun = rssun.getInt(1);
		System.out.println(cntofsun);
                    }
		//IceCream
	    String ic= "select count(IceCream) from RAKRetail.retail_transactions where IceCream='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(ic);
		ResultSet rsic= preparedStmt.executeQuery();
		if (rsic.next()) {
		 cntofic = rsic.getInt(1);
		System.out.println(cntofic);
                    }
		//KitchenCleaner
	    String kc= "select count(KitchenCleaner) from RAKRetail.retail_transactions where KitchenCleaner='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(kc);
		ResultSet rskc= preparedStmt.executeQuery();
		if (rskc.next()) {
		 cntofkc = rskc.getInt(1);
		System.out.println(cntofkc);
                    }
		//ShampooConditioner
	    String shamp= "select count(ShampooConditioner) from RAKRetail.retail_transactions where ShampooConditioner='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(shamp);
		ResultSet rsshamp= preparedStmt.executeQuery();
		if (rsshamp.next()) {
		 cntofshamp = rsshamp.getInt(1);
		System.out.println(cntofhat);
		}
		
		//FlipFlops
	    String ff= "select count(FlipFlops) from RAKRetail.retail_transactions where FlipFlops='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(ff);
		ResultSet rsff= preparedStmt.executeQuery();
		if (rsff.next()) {
		 cntofff = rsff.getInt(1);
		System.out.println(cntofff);
		
		}
		//Curd
	    String curd= "select count(Curd) from RAKRetail.retail_transactions where Curd='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(curd);
		ResultSet rscurd= preparedStmt.executeQuery();
		if (rscurd.next()) {
		 cntofcurd = rscurd.getInt(1);
		System.out.println(cntofcurd);
		}
		
		//SunscreenLotion
	    String lotion= "select count(SunscreenLotion) from RAKRetail.retail_transactions where SunscreenLotion='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(lotion);
		ResultSet rslotion= preparedStmt.executeQuery();
		if (rslotion.next()) {
		 cntoflotion = rslotion.getInt(1);
		System.out.println(cntoflotion);
		}
		//Flour
		
	    String flour= "select count(Flour) from RAKRetail.retail_transactions where Flour='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(flour);
		ResultSet rsflour= preparedStmt.executeQuery();
		if (rsflour.next()) {
		 cntofflour = rsflour.getInt(1);
		System.out.println(cntofflour);
		}
		//Gloves
		
	    String gl= "select count(Gloves) from RAKRetail.retail_transactions where Gloves='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(gl);
		ResultSet rsgl= preparedStmt.executeQuery();
		if (rsgl.next()) {
		 cntofgl = rshat.getInt(1);
		System.out.println(cntofgl);
		}
		
		
		//MosquitoRepellant
	    String mr= "select count(MosquitoRepellant) from RAKRetail.retail_transactions where MosquitoRepellant='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(mr);
		ResultSet rsmr= preparedStmt.executeQuery();
		if (rsmr.next()) {
		 cntofmr = rsmr.getInt(1);
		System.out.println(cntofmr);
		}
		
		//Cheese
	    String cheese= "select count(Cheese) from RAKRetail.retail_transactions where Cheese='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(cheese);
		ResultSet rscheese= preparedStmt.executeQuery();
		if (rscheese.next()) {
		 cntofcheese = rscheese.getInt(1);
		System.out.println(cntofcheese);
		}
		
		//Bread
	    String bread= "select count(Bread) from RAKRetail.retail_transactions where Bread='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(bread);
		ResultSet rsbread= preparedStmt.executeQuery();
		if (rsbread.next()) {
		 cntofbread = rsbread.getInt(1);
		System.out.println(cntofbread);
		}
		
		//Moisturizer
	    String mois= "select count(Moisturizer) from RAKRetail.retail_transactions where Moisturizer='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(mois);
		ResultSet rsmois= preparedStmt.executeQuery();
		if (rsmois.next()) {
		 cntofmois = rsmois.getInt(1);
		System.out.println(cntofmois);
		}
		
		
		//Diaper
	    String dia= "select count(Diaper) from RAKRetail.retail_transactions where Diaper='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(dia);
		ResultSet rsdia= preparedStmt.executeQuery();
		if (rsdia.next()) {
		 cntofdia = rsdia.getInt(1);
		System.out.println(cntofdia);
		}
		
		//SportsWear
	    String sw= "select count(SportsWear) from RAKRetail.retail_transactions where SportsWear='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(sw);
		ResultSet rssw= preparedStmt.executeQuery();
		if (rssw.next()) {
		 cntofsw = rscheese.getInt(1);
		System.out.println(cntofsw);
		}
		
		//Vegetables
	    String veg= "select count(Vegetables) from RAKRetail.retail_transactions where Vegetables='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(veg);
		ResultSet rsveg= preparedStmt.executeQuery();
		if (rsveg.next()) {
		 cntofveg = rsveg.getInt(1);
		System.out.println(cntofveg);
		}
		
		//Wipes
	    String wi= "select count(Wipes) from RAKRetail.retail_transactions where Wipes='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(wi);
		ResultSet rswi= preparedStmt.executeQuery();
		if (rswi.next()) {
		 cntofwi = rswi.getInt(1);
		System.out.println(cntofwi);
		}
		
		//PottedPlants
	    String pp= "select count(PottedPlants) from RAKRetail.retail_transactions where PottedPlants='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(pp);
		ResultSet rspp= preparedStmt.executeQuery();
		if (rspp.next()) {
		 cntofpp = rspp.getInt(1);
		System.out.println(cntofpp);
		}
		
		//ShowerGel
	    String sg= "select count(ShowerGel) from RAKRetail.retail_transactions where ShowerGel='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(sg);
		ResultSet rssg= preparedStmt.executeQuery();
		if (rssg.next()) {
		 cntofsg = rssg.getInt(1);
		System.out.println(cntofsg);
		}
		
		//PartyDecorations
	    String pd= "select count(PartyDecorations) from RAKRetail.retail_transactions where PartyDecorations='1' and Userid="+customerid+";";
		preparedStmt = conn.prepareStatement(pd);
		ResultSet rspd= preparedStmt.executeQuery();
		if (rspd.next()) {
		 cntofpd = rspd.getInt(1);
		System.out.println(cntofpd);
		}
		
		
		
		
	  
		
    }	
		catch (Exception e) {
		    throw new RuntimeException("Cannot find the driver in the classpath!", e);
		  }
		



%>
<body>
	<!-- Begin Wrapper -->
	<div id="wrapper">
		<!-- Begin Search -->
		<div id="search">
			<div class="shell">
				<div class="cl">&nbsp;</div>
			</div>
		</div>
		<!-- End Search -->
		<!-- Begin Header -->
		<div id="header" class="shell">
			<h1 id="logo"><a class="notext" href="#" title="PC Store">PC Store</a></h1>
		</div>
		<!-- End Header -->
		<!-- Begin Navigation -->
		<div id="navigation">
			<div class="shell">
				<ul>
					<li><a href="index.jsp" title="Home">Home</a></li>
					<li><a href="Login.jsp" title="Log In">Log In/Sign up</a></li>
					<li><a href="customerAccount.jsp" title="Account">Account</a></li>
					<li><a href="dashboard.jsp" title="Dashboard">Dashboard</a></li>
					<li><a href="Rules.jsp" title="Rules">Rules</a></li>
					<li><a href="Login.jsp" title="SignOut">SignOut</a></li>
					<li><a href="#" title="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp</a></li>
					<li><a href="#" title="firstname">Welcome ${cookie.firstname.value}</a></li>
				</ul>
				<div class="cl">&nbsp;</div>
			</div>
		</div>
		<!-- End Navigation -->
		<!-- Begin Slider -->
		<div id="slider">
			<div class="slider-outer">
				<div class="slider-inner shell">
					<!-- Begin Slider Items -->
					<ul class="slider-items">
							<li>
							<img src="css/images/slide-img1.jpg" alt="Slide Image 1" />
							<div class="slide-entry">
								<h2>Save MORE - Coupons</h2>
								<h3>Get 50% on Umbrellas </h3>
								<p>Add Umbrellas and get 50% off for a price of $10. Original Price: $50 Discounted Price : $25</p>
							</div>
							<a href="#" class="more" title="View More">View More</a>
						</li>
						<li>
							<img src="css/images/slide-img2.jpg" alt="Slide Image 2" />
							<div class="slide-entry">
								<h2>Save MORE - Coupons</h2>
								<h3>Get 10% on Organic cheese </h3>
								<p> Add Cheese and get 10% off for a price of $9. Original Price: $10 Discounted Price : $9 </p>
							</div>
							<a href="#" class="more" title="View More">View More</a>
						</li>
						<li>
							<img src="css/images/slide-img3.jpg" alt="Slide Image 3" />
							<div class="slide-entry">
								<h2>Save MORE - Coupons</h2>
								<h3>Become a member and save more </h3>
								<p>Apply now and Enjoy the benefits and shopping!!</p>
							</div>
							<a href="#" class="more" title="View More">View More</a>
						</li>
						<li>
							<img src="css/images/slide-img4.jpg" alt="Slide Image 4" />
							<div class="slide-entry">
								<h2>Save MORE - Coupons</h2>
								<h3>Get 50% on shoes </h3>
								<p>Add Shoes and get 50% off for a price of $10. Original Price: 50$ Discounted Price : 25$	</p>
							</div>
							<a href="#" class="more" title="View More">View More</a>
						</li>
						<li>
							<img src="css/images/slide-img5.jpg" alt="Slide Image 5" />
							<div class="slide-entry">
								<h2>Party MORE! - Coupons</h2>
								<h3>Get 10% on Party Decors </h3>
								<p>Add Party Decors and get 10% off for a price of $45. Original Price: $50 Discounted Price : $45 </p>
							</div>
							<a href="#" class="more" title="View More">View More</a>
						</li>
							<img src="css/images/slide-img1.jpg" alt="Slide Image 1" />
							<div class="slide-entry">
								<h2>Some Tittle Here</h2>
								<h3>Sed condimentum metus at risus </h3>
								<p>Maecenas eget purus arcu, in vestibulum libero. Ali-quam facilisis rhoncus eros, quis rutrum dolor tincid-unt ac. Duis vel consequat justo.</p>
							</div>
							<a href="#" class="more" title="View More">View More</a>
						</li>
						
							<img src="css/images/slide-img1.jpg" alt="Slide Image 2" />
							<div class="slide-entry">
								<h2>Some Tittle Here</h2>
								<h3>Sed condimentum metus at risus </h3>
								<p>Maecenas eget purus arcu, in vestibulum libero. Ali-quam facilisis rhoncus eros, quis rutrum dolor tincid-unt ac. Duis vel consequat justo.</p>
							</div>
							<a href="#" class="more" title="View More">View More</a>
						</li>
						
							<img src="css/images/slide-img1.jpg" alt="Slide Image 3" />
							<div class="slide-entry">
								<h2>Some Tittle Here</h2>
								<h3>Sed condimentum metus at risus </h3>
								<p>Maecenas eget purus arcu, in vestibulum libero. Ali-quam facilisis rhoncus eros, quis rutrum dolor tincid-unt ac. Duis vel consequat justo.</p>
							</div>
							<a href="#" class="more" title="View More">View More</a>
						</li>
						
							<img src="css/images/slide-img1.jpg" alt="Slide Image 4" />
							<div class="slide-entry">
								<h2>Some Tittle Here</h2>
								<h3>Sed condimentum metus at risus </h3>
								<p>Maecenas eget purus arcu, in vestibulum libero. Ali-quam facilisis rhoncus eros, quis rutrum dolor tincid-unt ac. Duis vel consequat justo.</p>
							</div>
							<a href="#" class="more" title="View More">View More</a>
						</li>
						
					</ul>
					<!-- End Slider Items -->
					<div class="cl">&nbsp;</div>
					<div class="slider-controls">
						
					</div>
				</div>
			</div>
			<div class="cl">&nbsp;</div>
		</div>
		<!-- End Slider -->
		<!-- Begin Main -->
		<div id="main">
			<!-- Begin Inner -->
			<div class="inner">
			<div class="shell">
			<div id="content">
            <!-- Begin Post -->
                                               <div class="post">
                                                       <h2>My Transaction Details<br><br>
                                                       Name: <%=customername %><br><br>
                                                       UserId: <%=customerid %> <span class="title-bottom"> </span></h2>
                                                       <p>  </p>
                                               </div>
                                               </div>
                                               <div class="cl">&nbsp;</div> 
                                               
                                               
                                             <table border="1" style="width:70%">
                                              <tr>
                                              <td>Count of Green Tea in Transaction:  <%=cntofgreentea %></td>
                                             
                                             </tr>
                                             <tr>
                                             <td>
                                             Count of Butter in Transactions:    <%=cntofbutter %></td>
                                            
                                             </tr>
                                             <tr>
                                             <td>
                                             Count of Thermal Water in Transactions:  <%=cntofwater %></td>
                                           
                                             </tr>
                                             <tr>
                                             <td>
                                             Count of Handbags in Transactions: <%=cntofhandbags %></td>
                                             
                                             </tr>
                                             <tr>
                                             <td>
                                             Count of Bathroom Cleaner in Transactions:  <%=cntofbc %></td>
                                            
                                             </tr>
                                             <tr>
                                             <td>
                                             Count of Umberlla in Transactions: <%=cntofum %></td>
                                             
                                             </tr>
                                             <tr>
                                             <td>
                                             Count of Coffee in Transactions: <%=cntofcoffee %></td>
                                         
                                             </tr>
                                             <tr>
                                             <td>
                                             Count of Egg in Transactions: <%=cntofegg %></td>
                                            
                                             </tr>
                                             <tr>
                                             <td>
                                             Count of Socks in Transactions: <%=cntofsocks %></td>
                                             </tr>
                                             <tr>
                                             <td>
                                             Count of Water in Transactions: <%=cntofwater %></td>
                                        
                                             </tr>
                                             <tr>
                                             <td>
                                             Count of Kettle in Transactions: <%=cntofkettle %></td>
                                           
                                             </tr>
                                             <tr>
                                             <td>
                                             Count of Bacon in Transactions: <%=cntofbacon %></td>
                                             
                                             </tr>
                                             <tr>
                                             <td>
                                             Count of Swimsuit in Transactions:<%=cntofswim %></td>
                                             </tr>
                                             <tr>
                                             <td>
                                             Count of Sugar in Transactions: <%=cntofsugar %></td>
                                             </tr>
                                             <tr>
                                             <td>
                                             Count of Fruits in Transactions: <%=cntoffr %></td>
                                             
                                             </tr>
                                             <tr>
                                             <td>
                                             Count of Wine in Transactions: <%=cntofwine %></td>
                                             
                                             </tr>
                                             <tr>
                                             <td>
                                             Count of Soda in Transactions: <%=cntofsoda %></td>
                                             </tr>
                                             <tr>
                                             <td>
                                             Count of Sprayer in Transactions: <%=cntofsp %></td>
                                             
                                             </tr>
                                             <tr>
                                             <td>
                                             Count of Stationery in Transactions: <%=cntofst %></td>
                                             
                                             </tr><tr>
                                             <td>
                                             Count of Shaving Cream in Transactions: <%=cntofshave %></td>
                                             </tr>
                                             <tr>
                                             <td>
                                             Count of Flu Medicine in Transactions: <%=cntoffm %></td>
                                           
                                             </tr><tr>
                                             <td>
                                             Count of Hose Pipe in Transactions:  <%=cntofhp %></td>
                                             </tr><tr>
                                             <td>
                                             Count of Rain Boots in Transactions:  <%=cntofrb %></td>
                                             
                                             </tr><tr>
                                             <td>
                                             Count of Milk in Transactions:    <%=cntofmilk %></td>
                                             
                                             </tr><tr>
                                             <td>
                                             Count of Canned Beer in Transactions:  <%=cntofcb %></td>
                                             </tr><tr>
                                             <td>
                                             Count of Cleaning Brush in Transactions: <%=cntofbrush %></td>
                                            
                                             </tr><tr>
                                             <td>
                                             Count of Tent Supply in Transactions:  <%=cntofts %></td>
                                             </tr><tr>
                                             <td>
                                             Count of Hand Sanitizer in Transactions: <%=cntofhand %></td>
                                             </tr>
                                             <tr>
                                             <td>
                                             Count of Detergents in Transactions: <%=cntofdt %></td>
                                             
                                             </tr><tr>
                                             <td>
                                             Count of Hats in Transactions:  <%=cntofhat %></td>
                                             </tr><tr>
                                             <td>
                                             Count of Sun Shades in Transactions: <%=cntofsun %></td>
                                             </tr>
                                             <tr>
                                             <td>
                                             Count of Ice Cream in Transactions: <%=cntofic %></td>
                                             </tr>
                                             <tr>
                                             <td>
                                             Count of Kitchen Cleaner in Transactions: <%=cntofkc %></td>
                                             </tr>
                                             <tr>
                                             <td>
                                             Count of Shampoo Conditioner in Transactions: <%=cntofshamp %></td>
                                             </tr>
                                             <tr>
                                             <td>
                                             Count of Flipflops in Transactions: <%=cntofff %></td>
                                             </tr>
                                             <tr>
                                             <td>
                                             Count of Curd in Transactions:  <%=cntofcurd %></td>
                                             
                                             </tr>
                                             <tr>
                                             <td>
                                             Count of Sunscreen Lotion in Transactions: <%=cntoflotion %></td>
                                             </tr>
                                             <tr>
                                             <td>
                                             Count of Flour in Transactions: <%=cntofflour %></td>
                                             </tr>
                                             <tr>
                                             <td>
                                             Count of Gloves in Transactions: <%=cntofgl %></td>
                                             </tr>
                                             <tr>
                                             <td>
                                             Count of Mosquito Repellent in Transactions: <%=cntofmr %></td>
                                             </tr>
                                             <tr>
                                             <td>
                                             Count of Cheese in Transactions: <%=cntofcheese %></td>
                                             </tr>
                                             <tr>
                                             <td>
                                             Count of Bread in Transactions: <%=cntofbread %></td>
                                             </tr>
                                             <tr>
                                             <td>
                                             Count of Mositurizer in Transactions: <%=cntofmois %></td>
                                             </tr>
                                             <tr>
                                             <td>
                                             Count of Diaper in Transactions: <%=cntofdia %></td>
                                             </tr>
                                             <tr>
                                             <td>
                                             Count of Sports Wear in Transactions: <%=cntofsw %></td>
                                             </tr>
                                             <tr>
                                             <td>
                                             Count of Vegetables in Transactions: <%=cntofveg %></td>
                                             </tr>
                                             <tr>
                                             <td>
                                             Count of Wipes in Transactions: <%=cntofwi %></td>
                                             </tr>
                                             <tr>
                                             <td>
                                             Count of Potted Plants in Transactions: <%=cntofpp %></td>
                                             </tr>
                                             <tr>
                                             <td>
                                             Count of Shower Gel in Transactions: <%=cntofsg %></td>
                                             </tr>
                                             <tr>
                                             <td>
                                             Count of Party Decorations in Transactions: <%=cntofpd %></td>
                                             </tr>
                                          
                                            </table>
         
			
		</div>	
		</div>
		<!-- End Main -->
		<!-- Begin Footer -->
		<div id="footer">
			<div class="shell">
				<p class="bottom-menu"><a href="#" title="Home">Home</a><span>|</span><a href="#" title="Special Offers">Special Offers</a><span>|</span><a href="#" title="Log In">Log In</a><span>|</span><a href="#" title="Account">Account</a><span>|</span><a href="#" title="Basket">Basket</a><span>|</span><a href="#" title="Checkout">Checkout</a><span>|</span><a href="#" title="Contact">Contact</a></p>
				<!-- <p>Copyright &copy; PC Store 2012. Design by: <a href="http://css-free-templates.com/" title="CSS Free Templates">CSS-Free-Templates</a>. All Rights Reserved. </p>  -->
				<div class="cl">&nbsp;</div>
			</div>
		</div>
		<!-- End Footer -->
	</div>
	<!-- End Wrapper -->
	
    
</body>
</html>