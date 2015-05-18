<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.io.*"%>
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
                                                       <h2>Apriori Rules generated<span class="title-bottom"> </span></h2>
                                                       <p>  </p>
                                               </div>
                                               </div>
                                               <div class="cl">&nbsp;</div> 
            
			<%
			String fileLocation="";
			
			Cookie cookie = null;
			   Cookie[] cookies = null;
			   cookies = request.getCookies();
			    if( cookies != null)
			      {
			      for (int i = 0; i < cookies.length; i++){
			         cookie = cookies[i];
			         String b = cookie.getName();
			         if(b.equalsIgnoreCase("opfilelocation"))
			         {
			        	 fileLocation=cookie.getValue();
			        	 System.out.println(fileLocation);
			         }
			  
			     }
			     }
BufferedReader in = new BufferedReader
(new FileReader(fileLocation));
String line;
while ((line = in.readLine()) != null) 
{ %>
<h4><%= line%></h4>
<%} %>
			
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