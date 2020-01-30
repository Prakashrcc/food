<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FoodBridge-HomeMade Food Delivery</title>

	 
    <link rel="stylesheet" href="/foodbridge/assets/css/icons.min.css"/>
    <link rel="stylesheet" href="/foodbridge/assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/foodbridge/assets/css/animate.min.css"/>
    <link rel="stylesheet" href="/foodbridge/assets/css/main.css"/>
    <link rel="stylesheet" href="/foodbridge/assets/css/red-color.css"/>
    <link rel="stylesheet" href="/foodbridge/assets/css/yellow-color.css"/>
    <link rel="stylesheet" href="/foodbridge/assets/css/responsive.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
    .product{
    display:none;
    float: right;
    
    }
    .ord-btn{
    float:right;
    }
    .ord-btn button, .product button{
    background:green;
    padding:10px;
    margin:10px;
    color: white;
    }
    .product h4{
        padding: 10px;
    margin: 10px;
    width: 20px;
    }
    /* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
  background-color: #fefefe;
  margin: auto;
  margin-top:15%;
  padding: 20px;
  border: 1px solid #888;
  width: 24%;
  color:green;
}

/* The Close Button */
.close {
  color: #aaaaaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}
    
    .bQEAj:before {
    content: "\20B9";
}
.flaticon-transport:before {
    content: "\f102";
}
[class^="flaticon-"]:before, [class*=" flaticon-"]:before, [class^="flaticon-"]:after, [class*=" flaticon-"]:after {
    font-family: Flaticon;
    font-style: normal;
}
    
   .chefbutton{
	float:right; 
	padding: 10px; 
	color: white; 
	margin-top: 3px;
	
	
}
 .dropbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
}

.dropdown {
margin-left: 20%;
    margin-top: 3%;
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #ddd;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #3e8e41;}
</style>
   
 
</head>
<body itemscope>
	 <main>
        <div class="preloader">
            <div id="cooking">
                <div class="bubble"></div>
                <div class="bubble"></div>
                <div class="bubble"></div>
                <div class="bubble"></div>
                <div class="bubble"></div>
                <div id="area">
                    <div id="sides">
                        <div id="pan"></div>
                        <div id="handle"></div>
                    </div>
                    <div id="pancake">
                        <div id="pastry"></div>
                    </div>
                </div>
            </div>
        </div>
	<jsp:include page="include/header.jsp"></jsp:include>
	
	<section>
            <div class="block gray-bg top-padd30">
                <div class="container" style="margin-bottom: 15%;
   
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-lg-12">
                            <div class="sec-box">
                                <div class="sec-wrapper">
                                    <div class="row">
                                        <div class="col-md-8 col-sm-12 col-lg-8">
                                            <div class="restaurant-detail-wrapper">
                                                <div class="restaurant-detail-info">
                                                    <div class="restaurant-detail-thumb">
                                                        <ul class="restaurant-detail-img-carousel slick-initialized slick-slider">
                                                            <div class="slick-list draggable"><div class="slick-track" style="opacity: 1; width: 6687px; transform: translate3d(-743px, 0px, 0px);"><li class="slick-slide slick-cloned" data-slick-index="-1" aria-hidden="true" tabindex="-1" style="width: 743px;"><img class="brd-rd3" src="assets/images/resource/restaurant-detail-big-img1-4.jpg" alt="restaurant-detail-big-img1-4.jpg" itemprop="image"></li><li class="slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" tabindex="0" style="width: 743px;"><img class="brd-rd3" src="assets/images/resource/restaurant-detail-big-img1-1.jpg" alt="restaurant-detail-big-img1-1.jpg" itemprop="image"></li><li class="slick-slide" data-slick-index="1" aria-hidden="true" tabindex="-1" style="width: 743px;"><img class="brd-rd3" src="assets/images/resource/restaurant-detail-big-img1-2.jpg" alt="restaurant-detail-big-img1-2.jpg" itemprop="image"></li><li class="slick-slide" data-slick-index="2" aria-hidden="true" tabindex="-1" style="width: 743px;"><img class="brd-rd3" src="assets/images/resource/restaurant-detail-big-img1-3.jpg" alt="restaurant-detail-big-img1-3.jpg" itemprop="image"></li><li class="slick-slide" data-slick-index="3" aria-hidden="true" tabindex="-1" style="width: 743px;"><img class="brd-rd3" src="assets/images/resource/restaurant-detail-big-img1-4.jpg" alt="restaurant-detail-big-img1-4.jpg" itemprop="image"></li><li class="slick-slide slick-cloned" data-slick-index="4" aria-hidden="true" tabindex="-1" style="width: 743px;"><img class="brd-rd3" src="assets/images/resource/restaurant-detail-big-img1-1.jpg" alt="restaurant-detail-big-img1-1.jpg" itemprop="image"></li><li class="slick-slide slick-cloned" data-slick-index="5" aria-hidden="true" tabindex="-1" style="width: 743px;"><img class="brd-rd3" src="assets/images/resource/restaurant-detail-big-img1-2.jpg" alt="restaurant-detail-big-img1-2.jpg" itemprop="image"></li><li class="slick-slide slick-cloned" data-slick-index="6" aria-hidden="true" tabindex="-1" style="width: 743px;"><img class="brd-rd3" src="assets/images/resource/restaurant-detail-big-img1-3.jpg" alt="restaurant-detail-big-img1-3.jpg" itemprop="image"></li><li class="slick-slide slick-cloned" data-slick-index="7" aria-hidden="true" tabindex="-1" style="width: 743px;"><img class="brd-rd3" src="assets/images/resource/restaurant-detail-big-img1-4.jpg" alt="restaurant-detail-big-img1-4.jpg" itemprop="image"></li></div></div>
                                                            
                                                            
                                                            
                                                        </ul>
                                                        <ul class="restaurant-detail-thumb-carousel slick-initialized slick-slider">
                                                            <div class="slick-list draggable"><div class="slick-track" style="opacity: 1; width: 1199px; transform: translate3d(-327px, 0px, 0px);"><li class="slick-slide slick-cloned" data-slick-index="-3" aria-hidden="true" tabindex="-1" style="width: 109px;"><img class="brd-rd3" src="assets/images/resource/restaurant-detail-small-img1-2.jpg" alt="restaurant-detail-small-img1-2.jpg" itemprop="image"></li><li class="slick-slide slick-cloned" data-slick-index="-2" aria-hidden="true" tabindex="-1" style="width: 109px;"><img class="brd-rd3" src="assets/images/resource/restaurant-detail-small-img1-3.jpg" alt="restaurant-detail-small-img1-3.jpg" itemprop="image"></li><li class="slick-slide slick-cloned" data-slick-index="-1" aria-hidden="true" tabindex="-1" style="width: 109px;"><img class="brd-rd3" src="assets/images/resource/restaurant-detail-small-img1-4.jpg" alt="restaurant-detail-small-img1-4.jpg" itemprop="image"></li><li class="slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" tabindex="0" style="width: 109px;"><img class="brd-rd3" src="assets/images/resource/restaurant-detail-small-img1-1.jpg" alt="restaurant-detail-small-img1-1.jpg" itemprop="image"></li><li class="slick-slide slick-active" data-slick-index="1" aria-hidden="false" tabindex="0" style="width: 109px;"><img class="brd-rd3" src="assets/images/resource/restaurant-detail-small-img1-2.jpg" alt="restaurant-detail-small-img1-2.jpg" itemprop="image"></li><li class="slick-slide slick-active" data-slick-index="2" aria-hidden="false" tabindex="0" style="width: 109px;"><img class="brd-rd3" src="assets/images/resource/restaurant-detail-small-img1-3.jpg" alt="restaurant-detail-small-img1-3.jpg" itemprop="image"></li><li class="slick-slide" data-slick-index="3" aria-hidden="true" tabindex="-1" style="width: 109px;"><img class="brd-rd3" src="assets/images/resource/restaurant-detail-small-img1-4.jpg" alt="restaurant-detail-small-img1-4.jpg" itemprop="image"></li><li class="slick-slide slick-cloned" data-slick-index="4" aria-hidden="true" tabindex="-1" style="width: 109px;"><img class="brd-rd3" src="assets/images/resource/restaurant-detail-small-img1-1.jpg" alt="restaurant-detail-small-img1-1.jpg" itemprop="image"></li><li class="slick-slide slick-cloned" data-slick-index="5" aria-hidden="true" tabindex="-1" style="width: 109px;"><img class="brd-rd3" src="assets/images/resource/restaurant-detail-small-img1-2.jpg" alt="restaurant-detail-small-img1-2.jpg" itemprop="image"></li><li class="slick-slide slick-cloned" data-slick-index="6" aria-hidden="true" tabindex="-1" style="width: 109px;"><img class="brd-rd3" src="assets/images/resource/restaurant-detail-small-img1-3.jpg" alt="restaurant-detail-small-img1-3.jpg" itemprop="image"></li><li class="slick-slide slick-cloned" data-slick-index="7" aria-hidden="true" tabindex="-1" style="width: 109px;"><img class="brd-rd3" src="assets/images/resource/restaurant-detail-small-img1-4.jpg" alt="restaurant-detail-small-img1-4.jpg" itemprop="image"></li></div></div>
                                                            
                                                            
                                                            
                                                        </ul>
                                                    </div>
                                                     <%@ page isELIgnored="false" %>
       											<%@ page import="java.sql.ResultSet" %>
       					
       					
                                                    <div class="restaurant-detail-title">
                                                        <h1 itemprop="headline"><%=request.getAttribute("kitchen_name") %></h1>
                                                        <div class="info-meta">
                                                            <span><%=request.getAttribute("address") %></span>
                                                            <span><%=request.getAttribute("descriptions") %></span>
                                                        </div>
                                                        <div class="rating-wrapper">
                                                            <a class="gradient-brd brd-rd2" href="#" title="" itemprop="url"><i class="fa fa-star"></i> Rate <i><%=request.getAttribute("rating") %></i></a>
                                                            <div class="rate-share brd-rd5">
                                                                <div class="rating-box-wrapper">
                                                                    <span>Rate</span>
                                                                    <div class="rating-box">
                                                                        <span class="brd-rd2 clr1 on"></span>
                                                                        <span class="brd-rd2 clr2 on"></span>
                                                                        <span class="brd-rd2 clr3 on"></span>
                                                                        <span class="brd-rd2 clr4 on"></span>
                                                                        <span class="brd-rd2 clr5 on"></span>
                                                                        <span class="brd-rd2 clr6 on"></span>
                                                                        <span class="brd-rd2 clr7 off"></span>
                                                                        <span class="brd-rd2 clr8 off"></span>
                                                                        <i>4.0</i>
                                                                    </div>
                                                                </div>
                                                               
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="restaurant-detail-tabs">
                                                        <ul class="nav nav-tabs">
                                                            <li class="active"><a href="#tab1-1" data-toggle="tab"><i class="fa fa-cutlery"></i> Menu</a></li>
                                                            
                                                        </ul>
                                                        <div class="tab-content">
                                                            <div class="tab-pane fade in active" id="tab1-1">
                                                                <form class="search-dish">
                                                                    <input type="text" placeholder="Search here">
                                                                    <button type="submit"><i class="fa fa-search"></i></button>
                                                                </form>
                                                                <div class="dishes-list-wrapper">
                                                                   
                                                                    <ul class="dishes-list">
                                                                    
                                                                     <%@ page isELIgnored="false" %>
       															<%@ page import="java.sql.ResultSet" %>
       
        												<% ResultSet rd=(ResultSet)request.getAttribute("rd"); %>
        											 <% 
       			  										 if(rd.next()){
        	  
       													  rd.previous();
        												  while(rd.next()){
          	
        											  %>
        					
                                                                       <li class="wow fadeInUp" data-wow-delay="0.1s" style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;">
                                                                            <div class="featured-restaurant-box">
                                                                                <div class="featured-restaurant-thumb">
                                                                                    <a href="#" title="" itemprop="url"><img src="assets/images/resource/dish-img1-1.jpg" alt="dish-img1-1.jpg" itemprop="image"></a>
                                                                                </div>
                                                                                <div class="featured-restaurant-info" style="    display: inline-grid;">
                                                                                    <h4 itemprop="headline"><a href="#" title="" itemprop="url" id="dish-name<%=rd.getString(1) %>"><%=rd.getString(3) %></a></h4>
                                                                                    <span class="price"><span class="bQEAj" style="float:left;">
                                                                                    
                                                                                    </span>
                                                                                    <span  ><div  id="dish-price<%=rd.getString(1) %>"><%=rd.getString(5) %></div></span>
                                                                                    <p itemprop="description"><%=rd.getString(4) %></p>
                                                                                   
                                                                                </div>
                                                                                <div class="ord-btn">
                                                                                   <button id="cart<%=rd.getString(1) %>" onclick="addToCart(<%=rd.getString(1) %>)"> Order Now</button>
                                                                                </div>
                                                                                <div class="product" id="product<%=rd.getString(1) %>">
                                                                                	<button onclick="remove(<%=rd.getString(1) %>)">-</button>
                                                                                	<h4 id="no<%=rd.getString(1) %>" > 1</h4>
                                                                                	<button onclick="addMore(<%=rd.getString(1) %>)">+</button>
                                                                                	
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                        
                                                                        
                                        	<% } 
          }
          else{
        	  out.print("<h1>No dishes Found..</h1>");
          }
          	
          	%>
                                                                       
                                                                        
                                                                      
                                                                    </ul>
                                                                </div>
                                                               
                                                          
                                                           
                                                          
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                       
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
	
	
	<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span class="close">&times;</span>
    <p style="color:green; font-size:25px;">Food added to the Cart..</p>
  </div>

</div>
	
	<jsp:include page="include/footer.jsp"></jsp:include>

</body>

	   <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/main.js"></script>
    <script>
    
    for (var i = 0; i < localStorage.length; i++){
    var x1=(localStorage.key(i));
    var z="cart"+x1;
    
			
			var x=document.getElementById(z);
            if(x==null){

            }
            else{
            window.alert(x);
			x.style.display="none";


            var abc="product"+x1;
			var b=document.getElementById(abc);
			 b.style.display="flex";

             var ia="no"+x1;
			var no=document.getElementById(ia); 
			no.innerHTML=(localStorage.getItem(localStorage.key(i)));
    }

}




    	
		function addToCart(id){
			var z="cart"+id;
			
			var x=document.getElementById(z);
			document.cookie=id;
			x.style.display="none";


            var dish={
                name: document.getElementById("dish-name"+id).innerHTML,
                price: document.getElementById("dish-price"+id).innerHTML ,
                quantity: 1,
                }


			var cartitems=document.getElementById("cartitems");
			cartitems.innerHTML++;
			
			var modal = document.getElementById("myModal");

			// Get the button that opens the modal
			
                
                localStorage.setItem(("dish"+id),JSON.stringify(dish));
                localStorage.setItem("value",cartitems.innerHTML);
			// Get the <span> element that closes the modal
			var span = document.getElementsByClassName("close")[0];

			// When the user clicks the button, open the modal 
			
			  modal.style.display = "block";
			

			// When the user clicks on <span> (x), close the modal
			span.onclick = function() {
			  modal.style.display = "none";
			}
			var abc="product"+id;
			var b=document.getElementById(abc);
			 b.style.display="flex";

			// When the user clicks anywhere outside of the modal, close it
			window.onclick = function(event) {
			  if (event.target == modal) {
			    modal.style.display = "none";
			  }
			}



			
			}
		function remove(id){
			var i="no"+id;
			var no=document.getElementById(i); 
			no.innerHTML--;
			if(no.innerHTML=="0"){
				var z="cart"+id;
				
				var x=document.getElementById(z);
				document.cookie=id;
				x.style.display="block";

				var abc="product"+id;
				var b=document.getElementById(abc);
				 b.style.display="none";
                
                no.innerHTML++;
                localStorage.removeItem("dish"+id);
			}
            else{
               
                var dish=JSON.parse(window.localStorage.getItem("dish"+id));
                dish.quantity=no.innerHTML;
                localStorage.setItem("dish"+id,JSON.stringify(dish) );
            }
			var cartitems=document.getElementById("cartitems");
			cartitems.innerHTML--;
            localStorage.setItem("value",cartitems.innerHTML);
            
			}
		function addMore(id){
			var i="no"+id;
			
			var no=document.getElementById(i);
			
			no.innerHTML++;
			var cartitems=document.getElementById("cartitems");
			cartitems.innerHTML++;
           
            localStorage.setItem("value",cartitems.innerHTML);
            var dish=JSON.parse(window.localStorage.getItem("dish"+id));
                dish.quantity=no.innerHTML;
                localStorage.setItem("dish"+id,JSON.stringify(dish) );
			
			}

	
    </script>
    
    
    
    
    
</html>