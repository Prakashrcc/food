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



    
    <h1 style="margin-left:48%">cart</h1>
    <hr style="width:80%">
    
    <!-- cart-items -->
   
    <div class="container-fluid padding" style="margin-top: 10%;
    margin-bottom: 10%;">
    <div class="row padding" style="margin-left: 5%;
    width: 80%;">
    	<div class="col-md-4" style=" width: 50%;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); padding-bottom:3%;">
    		<div class="card">
    			<div class="card-body">
    			
    			<div class="res">
    			
      			  <div id="cart-value" class="cart-contents">
           		 <div class="kitchen-content">
              	 
               	 <div class="kitchen-name">
                    <h4 class="card-title" style="font-weight:bold;">Kitchen Name</h4>
                    <h6>kitchen Address</h6>
                    <hr>
                </div>

            </div>
            </div>
            <div class="dishes">
               
                <div  id="dish-name-parent" class="dish-name" style="    display: grid;">
                
                    <h4 id="dish-name"></h4>
                    
                    
                    
                   
                </div>
                
               
            </div>
            <hr>
            <div class="total">
            <div class="totalcontents" style="    display: grid;">
            	<div class="contenttotal">
            	<div class="eachContent" style="float:left;">
            		<h6>Kitchen Taxes</h4>
            	</div>
            	<div class="eachContent" style="float:right;">
            		<h6>Rs 0.0</h4>
            	</div>
            	</div>
            	<div class="contenttotal" >
            	<div class="eachContent" style="float:left;">
            		<h6>Discount</h4>
            	</div>
            	<div class="eachContent" style="float:right;">
            		<h6>Rs 0.0</h4>
            	</div>
            	</div>
            	<div class="contenttotal">
            	<div class="eachContent" style="float:left;">
            		<h6>Delivery Charge</h4>
            	</div>
            	<div class="eachContent" style="float:right;">
            		<h6>Rs 0.0</h4>
            	</div>
            	</div>
            </div>
            <hr>
            <h4 style="float:left;">
            TOTAL 
            </h4>
            <h4 id="total-price" style="float:right;"></h3>
            </div>
            </div>
        </div>
        </div>
        </div>
        
        	<div class="col-md-4" style="    height: 400px; width: 40%;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    margin-left: 3%;">
    		<div class="card" style="    margin-bottom: 15%;">
    			<div class="card-body">
    			<h4 class="card-title">Address</h4><hr>
    			 <% HttpSession ses=request.getSession();
    			  java.util.HashMap<String, String> map = new java.util.HashMap<String, String>();
                    
                    if(ses.getAttribute("name")==null){
                    	
                    
                    %> 
                    <div class="loginBtn">
                    	 <a class="log-popup-btn" onMouseOver="this.style.color='red'"
   onMouseOut="this.style.color='black'"  
	    style="color: black; font-size: 17px;"   href="#" title="Login" itemprop="url">LOGIN</a> / 
	    <a class="sign-popup-btn" onMouseOver="this.style.color='red'"
   onMouseOut="this.style.color='black'"
	     style="color: black; font-size: 17px;" href="#" title="Register" itemprop="url">REGISTER</a> to Continue
                    </div>
                    <%
                    } 
                    else{
                    	%>
                    	<div class="address">
                    	 <h4><%=ses.getAttribute("address") %></h4>
                    	 <div class="titleContents">
						
					<div class="btnclass">
					<button class="editbtn" id="changeName">CHANGE</button><br>
					</div>
					</div>
						<!-- modal for kitchen name -->
		<div id="myModalName" class="modal">

 		 <!-- Modal content -->
 		 <div class="modal-content">
 		  <span class="close">&times;</span>
 		  <form action="editAddress" method="post">
		    <p>Enter the Address</p><br><hr>
		    <input name="type" value="kitchen_name" style="display:none">
		    <input name="id"  style="display:none">
		    <input  style="margin-bottom:2%; padding:2%; width: 80%;" type="text" name="flatNo" title="House No/ Flat No" placeholder="House No/ Flat No"><br>
		     <input  style="margin-bottom:2%; padding:2%;  width: 80%;" type="text" name="streetName" title="Street Name/Road Name" placeholder="Street Name/Road Name"><br>
		      <input  style="margin-bottom:2%; padding:2%;  width: 80%;" type="text" name="city" title="City" placeholder="City"><br>
		      <input  style="margin-bottom:2%; padding:2%;  width: 80%;" type="text" name="pincode" title="Pincode" placeholder="Pincode"><br>
		      <input  style="margin-bottom:2%; padding:2%;  width: 80%;" type="text" name="near" title="Nearby location" placeholder="Nearby location" ><br>
		    <button style="     background-color: green;
    margin-top: 20px;
    color: white;
    padding: 10px;
    margin-left: 45%;" type="submit">Change Address</button>
    
		    
		    </form>
 		 </div>

			</div>
					
                    	 
                    	</div>
                    	   </div>
    			</div>
    			<hr>
    			<div class="paymentContainer" style="margin-bottom: 20%;">
    			<h4 style="font-weight: bold">PAYMENT METHOD</h4><hr>
    				<div class="paymentContent">
    					<h4 style="float:left;">CASH ON DELIVERY</h4>
    					<input style="float:right;     margin-top: 3.5%;" type="radio" checked name="cod">
    					
    				</div>
    			</div>
    			<hr>
    			
    			 <form id="form" action="placeOrder" method="post">
    			
    			
    			
    
    <button style="margin-left: 10%;
    font-size: 20px;
    /* border: 1px solid; */
    background-color: green;
    color: white;
    padding-left: 20%;
    padding-right: 20%;
    padding-top: 4%;
    padding-bottom: 4%;; margin-bottom: 15%;" type="submit">PLACE ORDER</button>
        </form>
    
                    	<% 
                    }
                    %>
                    
                    
                 
    			</div>
    			
    			</div>
        
        </div>
        
        </div>
        
       
        
        <div id="no-item" style="display:none">
        <h1>Cart is Empty..</h1>
        <h6>Please add some food..</h6>
        </div>
   



	<jsp:include page="include/footer.jsp"></jsp:include>

</body>

	   <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/main.js"></script>

    <script>
    
    var totalprice=0;
    if(localStorage.length==1){
		document.getElementById("cart-value").style.display="none";
		document.getElementById("no-item").style.display="block";
        }
    else{
        var val=0;
        
        for(var i=0; i< localStorage.length; i++){

            var dish=JSON.parse(window.localStorage.getItem(localStorage.key(i)));
            var x1=(localStorage.key(i));
            
            if(x1!="value"){

            	  var id=x1.substring(4,x1.length);
                 
                
			var div=document.createElement("div");
			div.setAttribute("id","div"+id);
			div.setAttribute("class","item-cart");
			var contain=document.createElement("div");
			contain.setAttribute("class","m1");
			
            var para = document.createElement("h4");
            var node = document.createTextNode(dish.name);
            para.appendChild(node);

		var input=document.createElement("input");
			input.setAttribute("name","dish"+val);
			val=val+1;
			input.setAttribute("value",id+"#"+dish.quantity);
			input.setAttribute("style","display:none;");
			input.setAttribute("id","input"+id);
		
            
            var element = document.getElementById("dish-name-parent");
            var child = document.getElementById("dish-name");
            

           var  para1 = document.createElement("h6");
           var  node1 = document.createTextNode(dish.price);
           // para1.appendChild(node1);
           contain.appendChild(para);

            var quantity=document.createElement("div");
            quantity.setAttribute("class","product");
            quantity.setAttribute("id","product");
            var quantminus=document.createElement("button");
            quantminus.setAttribute("onclick","remove("+id+")");
            quantminus.setAttribute("class","minusbtn");
            var text=document.createTextNode("-");
            quantminus.appendChild(text);

            var h4=document.createElement("h4");
            h4.setAttribute("id","no"+id);
            text=document.createTextNode(dish.quantity);
            h4.appendChild(text);

            var quantplus=document.createElement("button");
            quantplus.setAttribute("onclick","addMore("+id+")");
            quantplus.setAttribute("class","plusbtn");
            text=document.createTextNode("+");
            quantplus.appendChild(text);

            quantity.appendChild(quantminus);
            quantity.appendChild(h4);
            quantity.appendChild(quantplus);
        	
            var total=document.createElement("h4");
            total.setAttribute("id","item-price"+id);
            
            var itemprice=parseInt(dish.price);
            var itemquant=parseInt(dish.quantity);
            itemprice=itemprice*itemquant;
            totalprice=totalprice+itemprice;
            var totalvalue=document.createTextNode("Rs "+itemprice);
            total.appendChild(totalvalue);

			var contain2=document.createElement("div");
			contain2.setAttribute("class","m");
			contain2.appendChild(quantity);
			contain2.appendChild(total);
          //  div.appendChild(input);
            div.appendChild(contain);
       //     div.appendChild(para1);
            div.appendChild(contain2);
         //   div.appendChild(total);
         
         var element1=document.getElementById("form");
         if(element1!=null){
         var child1=document.getElementById("but");
         element1.insertBefore(input,child1);
            }
             
            element.insertBefore(div,child);
         
            
            }

		document.getElementById("total-price").innerHTML="Rs "+totalprice;
		
         
		
		
        }
        var inputTotal=document.createElement("input");
		inputTotal.setAttribute("name","totalPrice");
		inputTotal.setAttribute("value",totalprice);
		inputTotal.setAttribute("style","display:none;");
		inputTotal.setAttribute("id","inputTotal");
		
		 var element = document.getElementById("form");
         if(element1!=null){
             var child1=document.getElementById("but");
             element1.insertBefore(inputTotal,child1);
                }
    }
    
    </script>

   <script type="text/javascript">

    var nameModal = document.getElementById("myModalName");

    var nav=document.getElementById("pks123");
    

 // Get the button that opens the modal
 var changeNameBtn = document.getElementById("changeName");

 // Get the <span> element that closes the modal
 var span1 = document.getElementsByClassName("close")[0];


 // When the user clicks the button, open the modal 
 changeNameBtn.onclick = function() {
   nameModal.style.display = "block";
   nav.style.display="none";
 }

	 

 // When the user clicks on <span> (x), close the modal
 span1.onclick = function() {
	 nameModal.style.display = "none";
	 nav.style.display="block";
 }
 
 // When the user clicks anywhere outside of the modal, close it
 window.onclick = function(event) {
   if (event.target == nameModal) {
	   nameModal.style.display = "none";
	   nav.style.display="block";
   }
  
 }




    </script>

 

<script>
    
   




    	
		function addToCart(id){
			var z="cart"+id;
			
			var x=document.getElementById(z);
			
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
			 var dish=JSON.parse(window.localStorage.getItem("dish"+id));
			if(no.innerHTML=="0"){
				
                no.innerHTML++;
                localStorage.removeItem("dish"+id);
                var t="div"+id;

                document.getElementById(t).style.display="none";
                var itemprice=parseInt(dish.price);
                totalprice=totalprice-itemprice;
                document.getElementById("total-price").innerHTML=totalprice;

				var inputTotal=document.getElementById("inputTotal");
				inputTotal.setAttribute("value",totalprice);

                
 var input=document.getElementById("input"+id);
                
                input.setAttribute("value","no");
                
			}
            else{
                
               
                dish.quantity=no.innerHTML;
                var itemprice=parseInt(dish.price);
                totalprice=totalprice-itemprice;
                var itemquant=parseInt(dish.quantity);
                itemprice=itemprice*itemquant;
                
				
                var input=document.getElementById("input"+id);
                
                input.setAttribute("value",id+"#"+no.innerHTML);
                document.getElementById("total-price").innerHTML="Rs "+totalprice;

                var inputTotal=document.getElementById("inputTotal");
				inputTotal.setAttribute("value",totalprice);
                
				document.getElementById("item-price"+id).innerHTML="Rs "+itemprice;
                
                localStorage.setItem("dish"+id,JSON.stringify(dish) );
            }
			var cartitems=document.getElementById("cartitems");
			cartitems.innerHTML--;
            localStorage.setItem("value",cartitems.innerHTML);

            if(localStorage.length==1){
				document.getElementById("cart-value").style.display="none";
				document.getElementById("no-item").style.display="block";
                }
            
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

                var itemprice=parseInt(dish.price);
                totalprice=totalprice+itemprice;
                var itemquant=parseInt(dish.quantity);
                itemprice=itemprice*itemquant;
                document.getElementById("total-price").innerHTML="Rs "+totalprice;

                var inputTotal=document.getElementById("inputTotal");
				inputTotal.setAttribute("value",totalprice);
                
				document.getElementById("item-price"+id).innerHTML="Rs "+itemprice;
                
                localStorage.setItem("dish"+id,JSON.stringify(dish) );
               
                var input=document.getElementById("input"+id);
                
                input.setAttribute("value",id+"#"+no.innerHTML);
			
			}

	
    </script>
</html>