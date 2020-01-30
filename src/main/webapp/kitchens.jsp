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
	
	 
            <div class="block" style="padding: 50px 0; padding-bottom: 150px;">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-lg-12">
                            <div class="title1-wrapper text-center">
                                <div class="title1-inner">
                                    <span>Your Favourite Food</span>
                                    <h2 itemprop="headline">Choose & Enjoy</h2>
                                </div>
                                
                                  </div>
                           
                                <div class="row remove-ext5">
                                   <%@ page isELIgnored="false" %>
       					<%@ page import="java.sql.ResultSet" %>
       
        					<% ResultSet rd=(ResultSet)request.getAttribute("rd"); %>
        					 <% 
       			   if(rd.next()){
        	  
       				  rd.previous();
        			  while(rd.next()){
          
        			  %>
        					
                         
          		
          			
                                    <form class="col-md-4 col-sm-6 col-lg-4" action="kitchenmenu">
                                    <input value="<%=rd.getString(1) %>"  name="id" style="display: none ;  ">
                                    <input value="<%=rd.getString(2) %>"  name="kitchen_name" style="display: none ;  ">
                                    <input value="<%=rd.getString(3) %>"  name="rating" style="display: none ;  ">
                                    <input value="<%=rd.getString(4) %>"  name="kitchen_picture" style="display: none ;  ">
                                    <input value="<%=rd.getString(5) %>"  name="descriptions" style="display: none ;  ">
                                    <input value="<%=rd.getString(6) %>"  name="address" style="display: none ;  ">
                                    <button type="submit" style="  display: contents; text-align: left;  ">
                                        <div class="popular-dish-box wow fadeIn" data-wow-delay="0.2s">
                                            <div class="popular-dish-thumb">
                                                <a  type="submit" title="" itemprop="url"><img src="assets/images/resource/popular-dish-img1.jpg" alt="popular-dish-img1.jpg" style="width:inherit;" itemprop="image"></a>
                                                <span class="post-rate yellow-bg brd-rd2"><i class="fa fa-star-o"></i> <%= rd.getString(3) %></span>
                                                
                                            </div>
                                            <div class="popular-dish-info">
                                                <h4 itemprop="headline"><a  title="" itemprop="url">
													<%= rd.getString(2) %></a>
												</h4>
                                                <p itemprop="description"><%=rd.getString(5) %></p>
                                                
                                                
          											
                                               
                                                <a class="brd-rd2"  title="Order Now" itemprop="url">Order now</a>
                                               
                                            </div>
                                        </div><!-- Popular Dish Box -->
                                        </button>
                                         </form>
                                        
                                       
                                        	<% } 
          }
          else{
        	  out.print("<h1>No Kitchens Found..</h1>");
          }
          	
          	%>
          	
          	
                                   
                                   
                                  
                                 </div>        
                                   
                                </div>
                        </div>
                    </div>
                </div>
            </div>
        </section><!-- choose and enjoy meal -->
		
	
	
	
	
	<jsp:include page="include/footer.jsp"></jsp:include>

</body>

	   <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/main.js"></script>
</html>