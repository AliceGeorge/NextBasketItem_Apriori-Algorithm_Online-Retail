
<%@ page import="aws.*" %>
<%@ page import="javax.swing.*"%>
<%@ page import="java.awt.Frame" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
			<h1 id="logo"><a class="notext" href="#" title="PC Store">RAK Retail</a></h1>
			&nbsp;
			<!-- <h1>${cookie.firstname.value} </h1>  --> 
			<!-- <h1>${cookie.filedata.value} </h1>  -->  
			<%
			/* Cookie cookie = null;
			   Cookie[] cookies = null;
			   // Get an array of Cookies associated with this domain
			   cookies = request.getCookies();
			   if( cookies != null ){
			      //out.println("<h2> Found Cookies Name and Value</h2>");
			      for (int i = 0; i < cookies.length; i++){
			         cookie = cookies[i];
			         out.print("Name : " + cookie.getName( ) + ",  ");
			         out.print("Value: " + cookie.getValue( )+" <br/>");
			      }
			  }else{
			      out.println("<h2>No cookies founds</h2>");
			  }  */
			
			%>
		
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
					&nbsp;&nbsp;&nbsp;</a></li>
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
								<h2>Save MORE - Coupons Now</h2>
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
					<!-- Begin Left Sidebar -->
					<div id="left-sidebar" class="sidebar">
						<ul>
							<li class="widget">
								<h2>Categories</h2> 
								<div class="widget-entry">
									<ul>
										<li><a href="#" title="Food & Groceries"><span>Food & Groceries</span></a></li>
										<li><a href="HomeNeeds.jsp" title="Home Needs"><span>Home Needs</span></a></li>
										<li><a href="DrinksCosmetics.jsp" title="Drinks & Beauty"><span>Drinks & Cosmetics</span></a></li>
										<li class="last"><a href="Miscellaneous.jsp" title="Miscellaneous"><span>Miscellaneous</span></a></li>
									</ul>
								</div>
							</li>
				
							<li class="widget">
								<h2>Shopping Cart</h2>
								<div class="widget-entry">
								<style type="text/css">

.btn {
  background: #6BB247;
  background-image: -webkit-linear-gradient(top, #6BB247, #6BB247);
  background-image: -moz-linear-gradient(top, #6BB247, #6BB247);
  background-image: -ms-linear-gradient(top, #6BB247, #6BB247);
  background-image: -o-linear-gradient(top, #6BB247, #6BB247);
  background-image: linear-gradient(to bottom, #6BB247, #6BB247);
  -webkit-border-radius: 51;
  -moz-border-radius: 51;
  border-radius: 51px;
  font-family: Courier New;
  color: #ffffff;
  font-size: 13px;
  padding: 3px 22px 3px 22px;
  border: solid #1f628d 0px;
  text-decoration: none;
}

.btn:hover {
  background: #3cfc43;
  background-image: -webkit-linear-gradient(top, #3cfc43, #070e12);
  background-image: -moz-linear-gradient(top, #3cfc43, #070e12);
  background-image: -ms-linear-gradient(top, #3cfc43, #070e12);
  background-image: -o-linear-gradient(top, #3cfc43, #070e12);
  background-image: linear-gradient(to bottom, #3cfc43, #070e12);
  text-decoration: none;
  }
  
  
.btnAdd {
  background: #61c254;
  background-image: -webkit-linear-gradient(top, #61c254, #353738);
  background-image: -moz-linear-gradient(top, #61c254, #353738);
  background-image: -ms-linear-gradient(top, #61c254, #353738);
  background-image: -o-linear-gradient(top, #61c254, #353738);
  background-image: linear-gradient(to bottom, #61c254, #353738);
  -webkit-border-radius: 6;
  -moz-border-radius: 6;
  border-radius: 6px;
  font-family: Arial;
  color: #ffffff;
  font-size: 9px;
  padding: 3px 5px 5px 5px;
  text-decoration: none;
}

.btnAdd:hover {
  background: #56fc3c;
  background-image: -webkit-linear-gradient(top, #56fc3c, #3f4142);
  background-image: -moz-linear-gradient(top, #56fc3c, #3f4142);
  background-image: -ms-linear-gradient(top, #56fc3c, #3f4142);
  background-image: -o-linear-gradient(top, #56fc3c, #3f4142);
  background-image: linear-gradient(to bottom, #56fc3c, #3f4142);
  text-decoration: none;
}

</style>
									<aside id="sidebar">
										<div class="basket">
											<div class="basket_list">
												<div class="head">
													<span class="name">Product name</span>
													<span class="count">Quantity</span>
												</div>
												<ul>
												
												</ul>
												<center><button class="btn" onclick="checkout()">Checkout</button></center>
											</div>
										</div>
									</aside>
								</div>
							</li>
							
						</ul>
					</div>
					<!-- End Sidebar -->
					<!-- Begin Content -->
					<div id="content">
						<!-- Begin Post -->
						<div class="post">
							<h2>Welcome to RAK-Retail Store<span class="title-bottom">&nbsp;</span></h2>
							<p> Easy Profitable Online Shopping. </p>
						</div>
						<!-- End Post -->
						<!-- Begin Products -->
						<section id="product">
						<ul class="clear">
						<div id="products">
					
							<h2>Latest Products<span class="title-bottom">&nbsp;</span></h2>
							
							
			
							<div class="product">
							<li data-id="1">
								<a href="#" title="Cheese">
									<span class="title">Cheese</span>
									<img src="css/images/cheese.jpg" alt="Product Image 1" />
									<span class="number"></span>
									<span class="price"><span>$</span>7</span><br>
								</a>
								</li>
							
							</div>
							<div class="product">
							<li data-id="2">
								<a href="#" title="Milk">
									<span class="title">Milk</span>
									<img src="css/images/milk.jpg" alt="Product Image 2" />
									<span class="number"></span>
									<span class="price"><span>$</span>6</span>
								</a>
								</li>
							</div>
							<div class="product last">
							<li data-id="3">
								<a href="#" title="Curd">
									<span class="title">Curd</span>
									<img src="css/images/curd.jpg" alt="Product Image 3" />
									<span class="number"></span>
									<span class="price"><span>$</span>5</span>
								</a>
								</li>
							</div>
							<div class="cl">&nbsp;</div>
							<div class="product">
							<li data-id="4">
								<a href="#" title="Butter">
									<span class="title">Butter</span>
									<img src="css/images/butter.jpg" alt="Product Image 4" />
									<span class="number"></span>
									<span class="price"><span>$</span>11</span>
								</a>
								</li>
							</div>
							<div class="product">
								<li data-id="5">
								<a href="#" title="Egg">
									<span class="title">Egg</span>
									<img src="css/images/egg.jpg" alt="Product Image 5" />
									<span class="number"></span>
									<span class="price"><span>$</span>6</span>
								</a>
									</li>
							</div>
							<div class="product last">
							<li data-id="6">
								<a href="#" title="Icecream">
									<span class="title">IceCream</span>
									<img src="css/images/icecream.jpg" alt="Product Image 6" />
									<span class="number"></span>
									<span class="price"><span>$</span>10</span>
								</a>
								</li>
							</div>
							<div class="cl">&nbsp;</div>
							
							<div class="product">
							<li data-id="7">
								<a href="#" title="Bacon">
									<span class="title">Bacon</span>
									<img src="css/images/bacon.jpg" alt="Product Image 7" />
									<span class="number"></span>
									<span class="price"><span>$</span>4</span>
								</a>
								</li>
							</div>
							<div class="product">
							<li data-id="8">
								<a href="#" title="Flour">
									<span class="title">Flour</span>
									<img src="css/images/flour.jpg" alt="Product Image 8" />
									<span class="number"></span>
									<span class="price"><span>$</span>12</span>
								</a>
								</li>
							</div>
							<div class="product last">
							<li data-id="9">
								<a href="#" title="Vegetables">
									<span class="title">Vegetables</span>
									<img src="css/images/vegetables.jpg" alt="Product Image 9" />
									<span class="number"></span>
									<span class="price"><span>$</span>10</span>
								</a>
								</li>
							</div>
							<div class="cl">&nbsp;</div>
							<div class="product">
							<li data-id="10">
								<a href="#" title="Sugar">
									<span class="title">Sugar</span>
									<img src="css/images/sugar.jpg" alt="Product Image 7" />
									<span class="number"></span>
									<span class="price"><span>$</span>11</span>
								</a>
								</li>
							</div>
							<div class="product">
							<li data-id="11">
								<a href="#" title="Fruits">
									<span class="title">Fruits</span>
									<img src="css/images/fruits.jpg" alt="Product Image 8" />
									<span class="number"></span>
									<span class="price"><span>$</span>10</span>
								</a>
								</li>
							</div>
							<div class="product last">
							<li data-id="12">
								<a href="#" title="Bread">
									<span class="title">Bread</span>
									<img src="css/images/bread.jpg" alt="Product Image 9" />
									<span class="number"></span>
									<span class="price"><span>$</span>4</span>
								</a>
								<li>
							</div>
							<div class="cl">&nbsp;</div>
							
						</div>
						</ul>
						</section>
						<!-- End Products -->
					</div>
					<!-- End Content -->
					<!-- Begin Right Sidebar -->
					<div id="right-sidebar" class="sidebar">
						<ul>
							<li class="widget products-box">
								<h2>Your Basket Coupons</h2>
								<div class="widget-entry">
									<script>
								
									</script>
									
									<ul id="couponlist">



									
									</ul>
									<div class="cl">&nbsp;</div>
								</div>
							</li>
							<li class="widget products-box">
								<h2>Coupons for the day</h2>
								<div class="widget-entry">
									<ul id="couponlistMore">
										
																
									</ul>
									<div class="cl">&nbsp;</div>
								</div>
							</li>
						</ul>
					</div>
					<!-- End Sidebar -->
					<div class="cl">&nbsp;</div>
				</div>
			</div>
			<!-- End Inner -->
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
	
	
	<script>
	var checkout_product="";
	var counter=0;
	var resulted="";
  
    var zipcode="";

	
	
		   $(".btn").click(function(){
		       $.post("http://rakretailstore-aaa4a6rp62.elasticbeanstalk.com/productCheckout.jsp",
		       {
		    	   checkout_product: checkout_product,
		         	count: counter
		       },
		       function(data,status){
		    	   alert("Records inserted successfully to the database");
		           //alert("Data: " + data + "\nStatus: " + status);
		       });
		   });
	
		  

	
	
    $(function () {
    	selected_product="";
    	
    	resultadder="";
    	
    	var morecoupon=[];
    	
    	zipcode = getCookie("zipcode");
    	getWeatherData(zipcode);
    
    	if(resulted<64){
    		morecoupon=["FluMedicine","GreenTea","ThermalWear","RainBoots","GreenTea","Kettle"];
    	}else if(resulted>80){
    		morecoupon=["IceCream","SuncreenLotion","Swimsuit","CannedBeer","ShowerGel"];
    	}else{
    		morecoupon=["Soda","PottedPlants","Hats","PartyDecorations","Wine","Water"];
    	}
    	var size=morecoupon.length;
    	for(var i=0;i<size;i++){
    		var couponOfferMore = Math.floor((Math.random() * 5) + 10);
    		addcouponsMore(morecoupon[i],couponOfferMore);
    	}
    	
    	function addcouponsMore(text,couponOffer) {
    	$("#couponlistMore").append('<li>'

    	+'<a href="#" title="'+text+'">'
    	+'<img src="css/couponimg/'+text+'.jpg" alt="wipes" />'
    	+'<span class="info">'
    	+ '<span class="title">' + text + '</span>'
    	+ '<span class="price">'+couponOffer+'% Off</span>'
    	+'</span>'
    	+'<span class="cl">&nbsp;</span>'
    	+'</a>'
    	+'</li>'); 
    	}
    	
		// jQuery UI Draggable
		$("#product li").draggable({
		
			// brings the item back to its place when dragging is over
			revert:true,
		
			// once the dragging starts, we decrease the opactiy of other items
			// Appending a class as we do that with CSS
			drag:function () {
				$(this).addClass("active");
				$(this).closest("#product").addClass("active");
			},
		
			// removing the CSS classes once dragging is over.
			stop:function () {
				$(this).removeClass("active").closest("#product").removeClass("active");
			}
		});

        // jQuery Ui Droppable
		$(".basket").droppable({
		
			// The class that will be appended to the to-be-dropped-element (basket)
			activeClass:"active",
		
			// The class that will be appended once we are hovering the to-be-dropped-element (basket)
			hoverClass:"hover",
		
			// The acceptance of the item once it touches the to-be-dropped-element basket
			// For different values http://api.jqueryui.com/droppable/#option-tolerance
			tolerance:"touch",
			drop:function (event, ui) {
		
				var basket = $(this),
						move = ui.draggable,
						itemId = basket.find("ul li[data-id='" + move.attr("data-id") + "']");
		
				// To increase the value by +1 if the same item is already in the basket
				if (itemId.html() != null) {
					itemId.find("input").val(parseInt(itemId.find("input").val()) + 1);
					var couponStrin=couponGen();
				}
				else {
					// Add the dragged item to the basket
					addBasket(basket, move);
		
					// Updating the quantity by +1" rather than adding it to the basket
					move.find("input").val(parseInt(move.find("input").val()) + 1);
					
					//adding new code
					var fileLocation = getCookie("opfilelocation");
					var fileData = getCookie("filedata");
					//window.alert(fileData);
					//window.alert(fileData+"      cookie for data");
					//window.alert("cookie location "+fileLocation);
					//window.alert(selected_product);
					var couponStrin=couponGen(fileLocation,fileData,selected_product);
					resultadder=resultadder+couponStrin;
					/*window.alert("in add basket"+couponStrin);  */
					//window.alert("I am in"+resultadder);
					resultarray=resultadder.split(",");
					size=resultarray.length-1;
					addcouponsrefresh();
					//addcoupons(resultarray);
					
					 //alert(size);
					for (var i=0; i<size; i++){
						 var text = resultarray[i];
						   	//alert(text);
					
						   	var couponOffer = Math.floor((Math.random() * 10) + 10);
					addcoupons(text,couponOffer);
					} 
				}
			}
		});
        
		 function addcoupons(text,couponOffer) {
			 $("#couponlist").append('<li>'
					 +'<a href="#" title="'+text+'">'

					 +'<img src="css/couponimg/'+text+'.jpg" alt="wipes" />'

					 +'<span class="info">'

					 + '<span class="title">' + text + '</span>'

					 + '<span class="price">'+couponOffer+'% Off</span>'

					 +'</span>'

					 +'<span class="cl">&nbsp;</span>'
					 
					 +'</a>'

					 +'</li>');
			 

 }
		 
		 function addcouponsrefresh() {
			 $("#couponlist").empty();
					

					 }
		 
		 
		 
//Function to add item in cart
	$(".btnAdd").click(function () { 
     var dataid = $(this).attr("data-id"); 
     var data = $(this).attr("data-name"); 
$(".basket").find("ul").append('<li data-id="' + dataid + '">'
+ '<span class="name">' + data + '</span>'
+ '<input class="count" value="1" type="text">'
+ '<button class="delete">&#10005;</button>');

});
	        

		 
		 
        // This function runs once an item is added to the basket
        function addBasket(basket, move) {
			basket.find("ul").append('<li data-id="' + move.attr("data-id") + '">'
					+ '<span class="name">' + move.find("span").html() + '</span>'
					+ '<input class="count" value="1" type="text">'
					+ '<button class="delete">&#10005;</button>');
			
			selected_product=move.find("span").html();
			if(counter==0){
				checkout_product=selected_product;
				counter++;
			}else{
				checkout_product=checkout_product+","+selected_product;
				counter++;
			}
			
		}
        

   
 
        
        
        function couponGen (location, data,selected_product)
        {
        	var fileL=location;
        	var result = false;
        	var fileInfo=data;
        	//window.alert("inside");
            $.ajax({
                type: "post",
                url : "CouponServlet",
                
            
                data: "input="+selected_product+"&output="+fileL+"&fileData="+fileInfo,
           	
                async: false,
                success: function(msg){  
                	result = msg;	
                	//window.alert("Result in couponGen"+result);
                        $('#output').append(msg);
                }
            });
            return result;
        }
        
        function getCookie(cname) {
            var name = cname + "=";
            var ca = document.cookie.split(';');
            for(var i=0; i<ca.length; i++) {
                var c = ca[i];
                while (c.charAt(0)==' ') c = c.substring(1);
                if (c.indexOf(name) == 0) {
                    return c.substring(name.length, c.length);
                }
            }
            return "";
        }
        
        
      


        // The function that is triggered once delete button is pressed
        $(".basket ul li button.delete").live("click", function () {
			$(this).closest("li").remove();
		});

    });
    
    
    function getWeatherData (zipcode)

    {


    var result = false;

        $.ajax({

            type: "post",

            url : "http://api.openweathermap.org/data/2.5/weather?zip="+zipcode, 

            async: false,

            success: function(msg){  

            result = msg;
            
            var result1=result.main.temp;
		     var convert_deg=(result1-273.15)*9/5+32;
		
            window.alert("Your current Temperature: " + Math.round(convert_deg) +"F");  
            resulted=Math.round(convert_deg);

            }

        });

       

    }
    
    
    
</script>






</body>
</html>