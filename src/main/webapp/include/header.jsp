
        <header id="pks123" class="stick">
            <div class="topbar">
                <div class="container">
               
                 <a class="chefbutton" href="chef.jsp" style="float:right; padding: 10px; color: white; margin-top: 3px;"
                  title="Register" itemprop="url">Become a Chef</a>
                    <div class="social1">
                        <a href="#" title="Facebook" itemprop="url" target="_blank"><i class="fa fa-facebook-square"></i></a>
                        <a href="#" title="Twitter" itemprop="url" target="_blank"><i class="fa fa-twitter"></i></a>
                        <a href="#" title="Google Plus" itemprop="url" target="_blank"><i class="fa fa-google-plus"></i></a>
                    </div> 
                    
                    
                    
                    
                </div>                
            </div><!-- Topbar -->
            <div class="logo-menu-sec">
                <div class="container">
                    <div class="logo"><h1 itemprop="headline"><a href="index.jsp" title="Home" itemprop="url">FoodBridge</a></h1></div>
                    <nav>
                        <div class="menu-sec">
                            <ul>
                                <li class="menu-item-has-children"><a href="index.jsp" title="HOMEPAGES" itemprop="url"><span class="red-clr">FOOD ORDERING</span>HOME</a>
                                   
                                </li>
                                <li class="menu-item-has-children"><a href="kitchen" title="RESTAURANTS" itemprop="url"><span class="red-clr">REAL FOOD</span>Kitchens</a>
                                    
                                </li>
                                <li class="menu-item-has-children"><a href="#" title="PAGES" itemprop="url"><span class="red-clr">REAL FOOD</span>About Us</a>
                                    
                              
                                </li>
                                <li><a href="contact.html" title="CONTACT US" itemprop="url"><span class="red-clr">REAL FOOD</span>CONTACT US</a></li>
                                 <li><a href="cart.jsp" title="cart" itemprop="url">
                                 <i class="fa fa-shopping-cart"><strong id="cartitems" style="display: inline;">0</strong></i>
                                 <span class="red-clr"></span>CART</a></li>
                            </ul>
                           
                            <%@ page isELIgnored="false" %>
                    <% HttpSession ses=request.getSession();
                    
                    if(ses.getAttribute("name")==null){
                    	
                    
                    %> 
                   
                    <div   style="margin-top: 40px;font-weight:darker; float: right;" >
                        <a class="log-popup-btn" onMouseOver="this.style.color='red'"
   onMouseOut="this.style.color='black'"  
	    style="color: black; font-size: 17px;"   href="#" title="Login" itemprop="url">LOGIN</a> / 
	    <a class="sign-popup-btn" onMouseOver="this.style.color='red'"
   onMouseOut="this.style.color='black'"
	     style="color: black; font-size: 17px;" href="#" title="Register" itemprop="url">REGISTER</a>
                    </div>
                    
                     	 <%
                   	
                    }
                    
                    else{
                    	%>
                    	 <div class="dropdown" style="margin-left:7%">
                    	  <button class="dropbtn">${name }</button>
                    	  <div class="dropdown-content">
                                <a href="account" id="My Bookings">Profile</a>
                                <a href="orderConfirmation" id="My Account">Orders</a>
                                <form action="logout">
                               <a><button id="Logout" type="submit" style="border:none;  color: black;
  
  text-decoration: none;
  display: block;
  background: none;">Log out</button></a>
                                </form>
                              </div>
                              </div>
                              
                              
                              
                              
                              

	    
                    	 <%
                    	
                    }
                            
                            
                            %>
                           
                           
                           
                        </div>
                    </nav><!-- Navigation -->
                </div>
            </div><!-- Logo Menu Section -->
        </header><!-- Header -->

        <div class="responsive-header">
            <div class="responsive-topbar">
                
               
            </div>
            <div class="responsive-logomenu">
                <div class="logo"><h1 itemprop="headline"><a href="index.html" title="Home" itemprop="url" style="color: white;">FoodBridge</a></h1></div>
                <span class="menu-btn yellow-bg brd-rd4"><i class="fa fa-align-justify"></i></span>
            </div>
            <div class="responsive-menu">
                <span class="menu-close red-bg brd-rd3"><i class="fa fa-close"></i></span>
                <div class="menu-lst">
                    <ul>
                        <li><a href="#" title="HOMEPAGES" itemprop="url"><span class="yellow-clr">FOOD ORDERING</span>HOME</a>
                           
                        </li>
                        <li ><a href="#" title="RESTAURANTS" itemprop="url"><span class="yellow-clr">REAL FOOD</span>Shops</a>
                            
                        </li>
                        <li ><a href="hjgdb" title="PAGES" itemprop="url"><span class="yellow-clr">REAL FOOD</span>About Us</a>
                           
                                        </li>
                                    
                                </li>
                               
                                
                            
                        <li ><a href="contact.html" title="CONTACT US" itemprop="url"><span class="yellow-clr">REAL FOOD</span>CONTACT US</a></li>
                         <li><a href="cart" title="cart" itemprop="url">
                                 <i class="fa fa-shopping-cart" onclick="show()"><strong id="cartitems" style="display: inline;">0</strong></i>
                                 <span class="red-clr"></span>CART</a></li>
                    </ul>
                </div>
                <div class="topbar-register">
                    <a class="log-popup-btn" href="#" title="Login" itemprop="url">LOGIN</a> / <a class="sign-popup-btn" href="#" title="Register" itemprop="url">REGISTER</a>
                </div>
                <div class="social1">
                    <a href="#" title="Facebook" itemprop="url" target="_blank"><i class="fa fa-facebook-square"></i></a>
                    <a href="#" title="Twitter" itemprop="url" target="_blank"><i class="fa fa-twitter"></i></a>
                    <a href="#" title="Google Plus" itemprop="url" target="_blank"><i class="fa fa-google-plus"></i></a>
                </div>
                <div class="register-btn">
                    <a class="yellow-bg brd-rd4" href="register-reservation.html" title="Register" itemprop="url">Become a Chef</a>
                </div>
            </div><!-- Responsive Menu -->
        </div><!-- Responsive Header -->
        
           <div class="log-popup text-center" id="signinform">
            <div class="sign-popup-wrapper brd-rd5">
                <div class="sign-popup-inner brd-rd5">
                    <a class="log-close-btn" href="#" title="" itemprop="url"><i class="fa fa-close"></i></a>
                    <div class="sign-popup-title text-center">
                        <h4 itemprop="headline">SIGN IN</h4>
                       
                    </div>
                  
                  
                    <form class="sign-form" method="post" action="login_user">
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-lg-12">
                                <input class="brd-rd3" type="text" name="phone" placeholder="phone">
                            </div>
                            <div class="col-md-12 col-sm-12 col-lg-12">
                                <input class="brd-rd3" type="password" name="password" placeholder="Password">
                            </div>
                            <div class="col-md-12 col-sm-12 col-lg-12">
                                <button class="red-bg brd-rd3" type="submit">SIGN IN</button>
                            </div>
                            <div class="col-md-12 col-sm-12 col-lg-12">
                                <a class="sign-btn" href="#" title="" itemprop="url">Not a member? Sign up</a>
                                <a class="recover-btn" href="#" title="" itemprop="url">Recover my password</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div class="sign-popup text-center" >
            <div class="sign-popup-wrapper brd-rd5">
                <div class="sign-popup-inner brd-rd5">
                    <a class="sign-close-btn" href="#" title="" itemprop="url"><i class="fa fa-close"></i></a>
                    <div class="sign-popup-title text-center">
                        <h4 itemprop="headline">SIGN UP</h4>
                        
                    </div>
                   
                    <form class="sign-form" action="register_user" method="post">
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-lg-12">
                                <input class="brd-rd3" type="text" name="name" placeholder="Name" required><br>
                            </div>
                            <div class="col-md-12 col-sm-12 col-lg-12">
                                <input class="brd-rd3" type="text" name="email" placeholder="Email" required><br>
                            </div>
                            <div class="col-md-12 col-sm-12 col-lg-12">
                                <input class="brd-rd3" type="phone"  name="phone" placeholder="Phone" required>
                            </div>
                            <div class="col-md-12 col-sm-12 col-lg-12">
                                <input class="brd-rd3" type="password"  name="password" placeholder="Password" required>
                            </div>
                            <div class="col-md-12 col-sm-12 col-lg-12">
                                <button class="red-bg brd-rd3" type="submit">REGISTER NOW</button>
                            </div>
                            <div class="col-md-12 col-sm-12 col-lg-12">
                                <a class="sign-btn" data-toggle="tab" href="#signinform" title="" itemprop="url">Already Registered? Sign in</a>
                                
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <script>
        
		var x=document.getElementById("cartitems");
		var value=localStorage.getItem("value");
		x.innerHTML=value;

        </script>