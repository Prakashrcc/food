<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
    body{background-color:cadetblue;}
    .dishes-list-wrapper{
    background-color:white;
    margin-top: 13%;
    width: 96%;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    margin-left: 2%;
    padding-left: 5%;
    padding-right: 5%;
       margin-bottom: 3%;
    padding-bottom: 10px;
    }
    .menutitle{display:flex;}
    .topbar-register{
    border:none;}
    
    .btnContainer{
    display: flex;}
    
    .editcontainer form button,.deletecontainer form button{background:transparent;}
    
    .status{
    float: right;
    margin-top: 5%;
    }
    .addbtn{
    background-color: green;
    color: white;
    padding: 5%;
    }
    .removebtn{
    background-color: red;
    color: white;
    padding: 5%;
    }
    
    
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
  margin-top:15%;
  margin-left:25%;
  padding: 20px;
  border: 1px solid #888;
  width: 50%;
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
    </style>
</head>
<body>
	<jsp:include page="include/vendorHeader.jsp"></jsp:include>
	
	
	  <div class="dishes-list-wrapper" >
	  <div class=" menutitle">
	  <div class="m">
	  <h1>MENU</h1>
	  </div>
	   <div class="topbar-register" style="margin-left: 75%;
    margin-top: 1%;">
                    <a class="log-popup-btn" href="#" title="ADD A DISH" itemprop="url" style="color:darkgreen; font-size:20px;  font-weight:bold;   ">+ ADD A DISH</a> 
                </div>
                </div>
                <hr>
                                                                   
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
                                                                                    <span class="price"><span class="bQEAj" style="float:left; padding-right: 1%;">Rs</span>
                                                                                    
                                                                                   
                                                                                    <span ><div id="dish-price<%=rd.getString(1) %>"><%=rd.getString(5) %></div></span>
                                                                                    <p itemprop="description"><%=rd.getString(4) %></p>
                                                                                    <div class="btnContainer">
                                                                                     <div class="editcontainer">
                                                                                    	<form action="editDish" method="get">
                                                                                    	<input name="dishId" value="<%=rd.getString(1) %>" style="display:none;">
                                                                                    	<button type="submit">EDIT</button>
                                                                                    	</form>
                                                                                    </div>
                                                                                 
                                                                                   <div class="deletecontainer">
                                                                                   		<button style="background: transparent;" id="myBtn">DELETE</button>
                                                                                    	
                                                                                    </div>
                                                                                    </div>
                                                                                    <!-- The Modal -->
																		<div id="myModal" class="modal">

  																<!-- Modal content -->
 																		 <div class="modal-content">
  																	  <span class="close">&times;</span>
																		    <p>Are You sure You want to delete this item?</p>
																		    <form action="deleteDish" method="get">
                                                                                    	<input name="dishId" value="<%=rd.getString(1) %>" style="display:none;">
                                                                                    	<button style="background: transparent;" type="submit">DELETE</button>
                                                                                    	</form>
																							  </div>

																									</div>
                                                                                   
                                                                                    
                                                                                   
                                                                                </div>
                                                                                <div class="status">
                                                                                <% if(rd.getString(8).equals("0")){
                                                                                	%>
                                                                                	<form action="addToMenu" method="post">
                                                                                	 <input name="dishId" value="<%=rd.getString(1) %>" style="display:none;">
                                                                                	 <button class="addbtn" type="submit">Add To Menu</button>
                                                                                	</form>
                                                                                	<% 
                                                                                }
                                                                                else{
                                                                                	%>
                                                                                	<form action="removeToMenu" method="post">
                                                                                	 <input name="dishId" value="<%=rd.getString(1) %>" style="display:none;">
                                                                                	 <button class="removebtn" type="submit">Remove From Menu</button>
                                                                                	</form>
                                                                                	<% 
                                                                                }
                                                                                	%>
                                                                                	
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
                                                                
                                                                
        <div class="log-popup text-center" id="signinform">
            <div class="sign-popup-wrapper brd-rd5">
                <div class="sign-popup-inner brd-rd5">
                    <a class="log-close-btn" href="#" title="" itemprop="url"><i class="fa fa-close"></i></a>
                    <div class="sign-popup-title text-center">
                        <h4 itemprop="headline">ADD A DISH</h4>
                       
                    </div>
                  
                  
                    <form class="sign-form" method="post" action="addDish">
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-lg-12">
                                <input class="brd-rd3" type="text" name="dishName" placeholder="Dish Name" required>
                            </div>
                            <div class="col-md-12 col-sm-12 col-lg-12">
                                <input class="brd-rd3" type="text" name="price" placeholder="Price" required>
                            </div>
                             <div class="col-md-12 col-sm-12 col-lg-12">
                                <input class="brd-rd3" type="text" name="description" placeholder="Description" required>
                            </div>
                             <div class="col-md-12 col-sm-12 col-lg-12">
                                <input class="brd-rd3" type="text" name="category" placeholder="Category" required>
                            </div>
                            
                            <div class="col-md-12 col-sm-12 col-lg-12">
                                <button class="red-bg brd-rd3" type="submit">ADD</button>
                            </div>
                          
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <jsp:include page="include/vendorFooter.jsp"></jsp:include>

</body>

	   <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/main.js"></script>
    <script>
// Get the modal
var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>
</html>