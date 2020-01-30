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
    
	<link rel="stylesheet"  href="/foodbridge/assets/css/cartDesign.css"/>
	
	 
    <style>
body {font-family: Arial, Helvetica, sans-serif;}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 5%; /* Location of the box */
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
    </style>
	
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
   
	<style>
	.product{box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    display: flex;
    float: right;
    margin-left: 10%;
    margin-right: 10%;
    padding-left: 10px;
    padding-right: 15px;
    max-width: 90px;
    min-width: 90px;}
    
    .minusbtn{
    	    background: transparent;
    margin-right: 8%;
    font-size: 25px;
    }
    .plusbtn{
    	    color: green;
    background: transparent;
    margin-left: 8%;
    font-size: 25px;
    }
    .item-cart{
    margin-bottom:8%;
    
    }
    .m{
    display: flex;
    float: right;
    width: 40%;
    }
    .m1{
        float: left;
    }
	
	</style>
</head>
<body>
<jsp:include page="include/header.jsp"></jsp:include>


	  <%@ page isELIgnored="false" %>
    	<%@ page import="java.sql.*" %>
	<div class="dashContainer" style="margin-top:15%; ">
		
		<div class="orderContainer">
		
		<div class="orderContents">
			<h3 style="font-weight:bold; text-align: center;text-decoration: underline;">Orders</h3>
			<div class="ongoingOrder" >
				  <ul class="dishes-list" style="margin-left:4%; margin-bottom:4%; width:96%">
                                                                    
                               
       
        							<% ResultSet rd1=(ResultSet)request.getAttribute("rd"); %>
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
        														
        														query="select * from chef_details where id=?";
        														PreparedStatement pr1=con.prepareStatement(query);
        														pr1.setString(1, rd1.getString(6));
        														ResultSet kitchen=pr1.executeQuery();
        														kitchen.next();
        														
        														
        														
          	
        											  %>
        											  <hr style="width: 90%;
    margin-left: 0;">
        											  
        												<div class="ongoingContainer" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); display: grid; width: 90%;padding: 2%;">
        													<div class="ongoingContent" style="display: grid;">
        														<div class="resInfo">
        															<h4 style="font-weight:bold; border-bottom:1px solid; padding-bottom:1%; width:85%;"><%=kitchen.getString(2) %></h4>
        														</div>
        														<div class="ongoingNo" style="    width: 84%;">
        															<h5 style=" font-size: 20px; float: left; font-weight: bold;">Order No: <%=rd1.getString(1) %></h5>
        															<h5 style="font-size: 20px; float: right; font-weight: bold;">Total Paid: Rs <%= rd1.getString(3)%></h5>
        															
        														</div>
        														
        														<div class="a1" style="width:84%;">
        															<h4 style="float:left; ">ITEMS</h4>
        															<h4 style="float:right;">Quantity</h4>
        															
        														</div>
        														
        														<% while(dishesRd.next()){
        															
        															
        															
        														%>
        														<div class="ongoingItems" style="width: 80%; font-size: 15px;font-weight: bold; padding-bottom:2%;">
        														<div class="ongoingItemName" style="    float: left; font-size: 15px;">
        															<%=dishesRd.getString(5) %> 
        															</div>
        															<div class="ongoingItemQuantity" style="    float: right;">
        															<%=dishesRd.getString(3) %>
        															</div>
        														</div>
        														<% }
        														
        														
        														%>
        														
        														<div class="status" style="width:85%; border-top: 1px solid;">
        															<h4 style="float:left; font-weight:bold; color:#0d9825">STATUS: <%=rd1.getString(4) %></h4>
        															<h4 style="float:right;"><%=rd1.getString(5) %></h4>
        														</div>
        													</div>
        												</div>	
        												
        													
                                                                        
                                                                        
                                        	<% } 
          }
          else{
        	  out.print("<h1>No Orders Yet...</h1>");
          }
          	
          	%>
                                                                       
                                                                        
                                                                      
                                                                    </ul>
				
			</div>
		</div>
		

<jsp:include page="include/footer.jsp"></jsp:include>

</body>

	   <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/main.js"></script>
    </html>