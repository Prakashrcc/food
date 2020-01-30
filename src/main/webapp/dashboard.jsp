<%@page import="java.sql.PreparedStatement"%>
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
    
    <style type="text/css">
    
/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 15%; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}
.container1{
	margin:15%; width:70%; font-size:20px;

}

/* Modal Content */
.modal-content {
  background-color: white;
  margin: auto;
  padding: 20px;
  border: 1px solid #888;
  width: 50%;
  min-width: 500px;
 
}
.modal-content input{
	border:1px solid;
}
.modal-content button{
	margin-top:20px;
}

/* The Close Button */
.close {
  color: black;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: red;
  text-decoration: none;
  cursor: pointer;
}

.detailsContainer{
	padding:3%;
	 box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
.editbtn{
	
    color: green;
    background: transparent;
    font-weight: 600;
    display: block;}
    
    .editbtn:hover{
     color: #bfbb30;
    }
    
    .title{
    font-size:25px;
    font-weight:bold;
    }
    .titleContents{
    
    }
    .btnclass{
    float:right;}
    
    
    @media screen and (max-width: 600px){
    
    .container1{
    margin-top:15%; width:98%; font-size:20px;
    margin-bottom:15%;
    margin-left:1%;
    }
    
    
    }
    
  
    
    .takeOrder{
    width: 80%;
    margin-left: 10%;
    margin-top: 3%;
    padding: 3%;
    font-size: 30px;
    color: white;
    background-color: green;
     box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    }
    .dashContainer{
         margin-top: 10%;
    width: 96%;
    margin-left: 2%;
    }
    
    .orderContainer{
    background-color:white;
     box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        margin-top: 3%;
    
    width: 68%;
    float: left;
   
    margin-bottom: 3%;

    }
    .orderContents{
        width: 96%;
    /* box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); */
    margin-left: 2%;
    height: 300px;
  
    margin-top: 3%;}
    body{background-color:cadetblue;}
    
    .menuContainer{
    background-color:white;
     box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    width: 30%;
    float: right;
    margin-top:3%
    }
    </style>
</head>
<body>
	<jsp:include page="include/vendorHeader.jsp"></jsp:include>
	  <%@ page isELIgnored="false" %>
    	<%@ page import="java.sql.*" %>
	<div class="dashContainer">
		
		<div class="orderContainer">
		<% ResultSet rd2=(ResultSet)request.getAttribute("rd2");
	
		%>
		
		<%
		// String status="0";
			String status=rd2.getString(7);
			
		System.out.println("yes");
			if(status.equals("0")){
				%>
				<form action="takeOrder" method="post">
					<input name="work" value="1" style="display:none;">
		
					<button class="takeOrder" type="submit" >Take Orders</button>
					</form>
				
				<%
			}
			else{
				
				%>
					<form action="takeOrder" method="post">
					<input name="work" value="0" style="display:none;">
		
					<button class="takeOrder" type="submit" style="background: red">Stop Taking Orders</button>
					</form>
				
				<% 
			}
		%>
		
		
		<div class="orderContents">
			<h3 style="text-align: center;text-decoration: underline;">Ongoing Orders</h3>
			<div class="ongoingOrder" >
				  <ul class="dishes-list" style="margin-left:5%; margin-bottom:4%;">
                                                                    
                               
       
        							<% ResultSet rd1=(ResultSet)request.getAttribute("rd1"); %>
        											 <% 
       			  										 if(rd1.next()){
        	  
       													  rd1.previous();
        												  while(rd1.next()){
        													  String url="jdbc:mysql://localhost:3306/foodBridge_database	";
        														String uname="root";
        														String pass="Prakash1";
        													  String query="select * from transactindishes where transId=?";
        													  Class.forName("com.mysql.jdbc.Driver");
        														
        														Connection con=DriverManager.getConnection(url,uname,pass);
        														PreparedStatement pr=con.prepareStatement(query);
        														pr.setString(1, rd1.getString(1));
        														ResultSet dishesRd=pr.executeQuery();
        														System.out.println("Yes working");
          	
        											  %>
        											  <hr style="width: 90%;
    margin-left: 0;">
        											  
        												<div class="ongoingContainer" style="display: grid;">
        													<div class="ongoingContent" style="display: grid;">
        														<div class="ongoingNo" style="    width: 84%; border-bottom: 2px solid cadetblue;">
        															<h5 style=" font-size: 20px; float: left; font-weight: bold;">Order No: <%=rd1.getString(1) %></h5>
        															<h5 style="font-size: 20px; float: right; font-weight: bold;">Total price:Rs <%= rd1.getString(3)%></h5>
        															
        														</div>
        														
        														<div class="a1" style="width:84%;">
        															<h4 style="float:left;">ITEMS</h4>
        															<h4 style="float:right;">Quantity</h4>
        															
        														</div>
        														
        														<% while(dishesRd.next()){
        														
        														%>
        														<div class="ongoingItems" style="width: 80%; font-size: 15px;font-weight: bold;">
        														<div class="ongoingItemName" style="    float: left; font-size: 15px;">
        															<%=dishesRd.getString(5) %> 
        															</div>
        															<div class="ongoingItemQuantity" style="    float: right;">
        															<%=dishesRd.getString(3) %>
        															</div>
        														</div>
        														<% }
        														
        														if(rd1.getString(4).equals("Ordered")){
        															%>
        															<div class="Button">
        																<form action="acceptOrder" method="post">
        																	<input name="transId" value="<%=rd1.getString(1) %>" style="display:none;">
        																	<button type="submit" style="    background: green; color: white;margin-top: 2%; font-size: 16px;padding: 1%;">ACCEPT ORDER</button>
        																</form>
        																<div class="Button">
        																
        															<button  class="editbtn" id="changeAddress" type="submit" style="    background: red; color: white;margin-top: 2%; font-size: 16px;padding: 1%;">CANCEL ORDER</button>
        																
        															</div>
        															</div>
        										
        															<% 
        														}
        														else if(rd1.getString(4).equals("Preparing")){
        															%>
        															<div class="Button" style="width: 85%;">
        																<form action="deliverOrder" method="post">
        																	<input name="transId" value="<%=rd1.getString(1) %>" style="display:none;">
        																	<button type="submit" style=" float: left;   background: green; color: white;margin-top: 2%; font-size: 16px;padding: 1%;">ORDER PREPARED</button>
        																</form>
        																<div class="Button">
        																
        															<button  class="editbtn" id="changeAddress" type="submit" style=" float: right; background: transparent;color: red;  margin-top: 2%; font-size: 16px; padding: 1%;">CANCEL ORDER</button>
        																
        															</div>
        															</div>
        															
        															<% }
        														else{
        															%>
        															<div class="Button" style="width: 85%;">
        																<form action="deliverOrderComplete" method="post">
        																	<input name="transId" value="<%=rd1.getString(1) %>" style="display:none;">
        																	<button type="submit" style=" float: left;   background: black; color: white;margin-top: 2%; font-size: 16px;padding: 1%;">Order Delivered</button>
        																</form>
        																</div>
        															
        															<% 
        														}
        														%>
        													</div>
        												</div>	
        												<!-- modal for cancel order -->
														<div id="myModalAddress" class="modal">

 														 <!-- Modal content -->
 															 <div class="modal-content">
 															  <span class="close">&times;</span>
 															  <form action="cancelOrder" method="post">
		 														   <p style="color:black;">Are You Sure You want To Cancel this Order?</p><br>
		  														  <input name="transId" value="<%=rd1.getString(1) %>" style="display:none">
																   
																    <button style="color: red; font-weight:bold;
																    background: transparent;" type="submit">Cancel Order</button>
		    
		  														  </form>
 																 </div>

																	</div>
		
																<!-- modal for cancel order -->
        													
                                                                        
                                                                        
                                        	<% } 
          }
          else{
        	  out.print("<h1>No Orders Yet...</h1>");
          }
          	
          	%>
                                                                       
                                                                        
                                                                      
                                                                    </ul>
				
			</div>
		</div>
		
		
		
		
		</div>
		<div class="menuContainer">
			<div class="menuContents">
				<div class="dishes-list-wrapper" style="margin:10%; width:80%; ">
			  <h4>In The Menu</h4><hr>
	  			
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
                                                                                    <span ><div id="dish-price<%=rd.getString(1) %>">Rs <%=rd.getString(5) %></div></span>
                                                                                   
                                                                                     <div>
                                                                                    	
                                                                                    </div>
                                                                                    <div>
                                                                                    	
                                                                                    </div>
                                                                                    
                                                                                   
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
	
	
<jsp:include page="include/vendorFooter.jsp"></jsp:include>
</body>

	   <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/main.js"></script>
      <script type="text/javascript">

    
    var addressModal = document.getElementById("myModalAddress");

 // Get the button that opens the modal

 var changeAddressBtn = document.getElementById("changeAddress");

 // Get the <span> element that closes the modal
 var span1 = document.getElementsByClassName("close")[0];

 // When the user clicks the button, open the modal 
 
 changeAddressBtn.onclick = function() {
	   addressModal.style.display = "block";
	 }
	 

 // When the user clicks on <span> (x), close the modal
 
 span1.onclick = function() {
	 addressModal.style.display = "none";
 }
 // When the user clicks anywhere outside of the modal, close it
 window.onclick = function(event) {
  
   if (event.target == addressModal) {
	   addressModal.style.display = "none";
   }
 }




    </script>
</html>