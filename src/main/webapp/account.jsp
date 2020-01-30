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
body {font-family: Arial, Helvetica, sans-serif;
 background-color:cadetblue;
}

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
  color: black;
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
    
    
    .detailsContainer{
    background-color:white;
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
.submitInput{
	font-size: 16px;
    width: 80%;
    border-bottom: 1px solid cadetblue;
}

.submitBtn{
	margin-top: 5%;
    background: black;
    color: white;
    padding: 1%;
    padding-left: 3%;
    border-radius: 20px;
    padding-right: 3%;
}
.submitP{
	    font-weight: bold;
    color: black;
}
</style>
   
   
</head>
<body>
	<jsp:include page="include/header.jsp"></jsp:include>
	   <%@ page isELIgnored="false" %>
      	<%@ page import="java.sql.ResultSet" %>
	<% ResultSet rd=(ResultSet)request.getAttribute("rd");
	rd.next();
	
	%>
	<div class="container1" >
		<div class="detailsContainer">
		<span class="title">Name </span><br><hr>
		<div class="titleContents">
		<span><%=rd.getString(2) %></span>
		<div class="btnclass">
		<button class="editbtn" id="changeName">CHANGE</button><br>
		</div>
		</div>
		</div>
		<!-- modal for kitchen name -->
		<div id="myModalName" class="modal">

 		 <!-- Modal content -->
 		 <div class="modal-content">
 		  <span class="close">&times;</span>
 		  <form action="editAccount" method="post">
		    <p class="submitP">Enter the Name</p><br>
		    <input name="type" value="name" style="display:none">
		    <input name="id" value="<%=rd.getString(1) %>" style="display:none">
		    <input  class="submitInput" type="text" name="newName"><br>
		    <button class="submitBtn"  type="submit">Change Name</button>
		    
		    </form>
 		 </div>

			</div>
		<hr>
		
		<div class="detailsContainer">
		<span class="title">PHONE NO </span><br><hr>
		<div class="titleContents">
		<span><%=rd.getString(4) %></span>
		<div class="btnclass">
		<button class="editbtn" id="changePicture">CHANGE</button>
		</div>
		</div>
		</div>
		<!-- modal for kitchen name -->
		<div id="myModalPicture" class="modal">

 		 <!-- Modal content -->
 		 <div class="modal-content">
 		  <span class="close">&times;</span>
 		  <form style="padding: 20px;" action="editAccount" method="post">
		    <p class="submitP">Change PHONE NO</p><br>
		    <input name="type" value="phone" style="display:none">
		    <input name="id" value="<%=rd.getString(1) %>" style="display:none">
		    <input  class="submitInput"  type="text" name="newName"><br>
		    <button class="submitBtn" type="submit">Change PHONE No</button>
		    
		    </form>
 		 </div>

			</div>
		<hr>
		<div class="detailsContainer">
		<span class="title">Email </span><br><hr>
		<div class="titleContents">
		<span><%=rd.getString(6) %></span>
		<div class="btnclass">
		<button class="editbtn" id="changeDescriptions">CHANGE</button><br>
		</div>
		</div>
		</div>
		<!-- modal for kitchen name -->
		<div id="myModalDescriptions" class="modal">

 		 <!-- Modal content -->
 		 <div class="modal-content">
 		  <span class="close">&times;</span>
 		  <form action="editAccount" method="post">
		    <p class="submitP">Enter Email</p><br>
		    <input name="type" value="email" style="display:none">
		    <input name="id" value="<%=rd.getString(1) %>" style="display:none">
		    <input  class="submitInput" type="text" name="newName"><br>
		    <button class="submitBtn" type="submit">Change Email</button>
		    
		    </form>
 		 </div>

			</div>
		<hr>
		<div class="detailsContainer">
		<span class="title">Address </span><br><hr>
		<div class="titleContents">
		<span><%=rd.getString(7) %></span>
		<div class="btnclass">
		<button class="editbtn" id="changeAddress">CHANGE</button><br>
		</div>
		</div>
		</div>
		<!-- modal for kitchen name -->
		<div id="myModalAddress" class="modal">

 		 <!-- Modal content -->
 		 <div class="modal-content">
 		  <span class="close">&times;</span>
 		  <form action="editAccount" method="post">
		    <p class="submitP">Enter The Address</p><br>
		    <input name="type" value="address" style="display:none">
		    <input name="id" value="<%=rd.getString(1) %>" style="display:none">
		    <input  class="submitInput" type="text" name="newName"><br>
		    <button class="submitBtn" type="submit">Change Address</button>
		    
		    </form>
 		 </div>

			</div>
	</div>
	
	
	
	
	 <jsp:include page="include/footer.jsp"></jsp:include>

</body>

	   <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/main.js"></script>
    <script type="text/javascript">

    var nameModal = document.getElementById("myModalName");
    var pictureModal = document.getElementById("myModalPicture");
    var descriptionsModal = document.getElementById("myModalDescriptions");
    var addressModal = document.getElementById("myModalAddress");

 // Get the button that opens the modal
 var changeNameBtn = document.getElementById("changeName");
 var changePictureBtn = document.getElementById("changePicture");
 var changeDescriptionsBtn = document.getElementById("changeDescriptions");
 var changeAddressBtn = document.getElementById("changeAddress");

 // Get the <span> element that closes the modal
 var span1 = document.getElementsByClassName("close")[0];
 var span2 = document.getElementsByClassName("close")[1];
 var span3 = document.getElementsByClassName("close")[2];
 var span4 = document.getElementsByClassName("close")[3];

 // When the user clicks the button, open the modal 
 changeNameBtn.onclick = function() {
   nameModal.style.display = "block";
 }
 changePictureBtn.onclick = function() {
	   pictureModal.style.display = "block";
	 }
 changeDescriptionsBtn.onclick = function() {
	   descriptionsModal.style.display = "block";
	 }
 changeAddressBtn.onclick = function() {
	   addressModal.style.display = "block";
	 }
	 

 // When the user clicks on <span> (x), close the modal
 span1.onclick = function() {
	 nameModal.style.display = "none";
 }
 span2.onclick = function() {
	 pictureModal.style.display = "none";
 }
 span3.onclick = function() {
	 descriptionsModal.style.display = "none";
 }
 span4.onclick = function() {
	 addressModal.style.display = "none";
 }
 // When the user clicks anywhere outside of the modal, close it
 window.onclick = function(event) {
   if (event.target == nameModal) {
	   nameModal.style.display = "none";
   }
   if (event.target == pictureModal) {
	   pictureModal.style.display = "none";
   }
   if (event.target == descriptionsModal) {
	   descriptionsModal.style.display = "none";
   }
   if (event.target == addressModal) {
	   addressModal.style.display = "none";
   }
 }




    </script>
</html>