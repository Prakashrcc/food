
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <title>FoodBridge-HomeMade Food</title>
    <link rel="shortcut icon" href="assets/images/favicon.png" type="image/x-icon">
    
    
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
.restaurant-info-form input{
font-size: 17px;
}
.mrg20 {
    display: grid;
    margin: 0 -10px;
}
.sec-box ,reservation-tabs-list{
	 box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
.col-md-6 input{ box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);}
.col-md-6 label{font-weight:bold; font-size:15px;}

.dropdown-content a:hover {background-color: #ddd;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #3e8e41;}
.reservation-tabs-list{box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);}
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
       
        
        <section>
            <div class="block">
                <div class="fixed-bg" style="background-image: url(assets/images/topbg.jpg);"></div>
                <div class="page-title-wrapper text-center">
                    <div class="col-md-12 col-sm-12 col-lg-12">
                        <div class="page-title-inner">
                            <h1 itemprop="headline">Become a Chef</h1>
                                <span>Ab har ghar hoga restaurant</span>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        <section>
            <div class="block top-padd30 gray-bg" style="background-color:cadetblue;">
                
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-lg-12">
                                <div class="sec-box">
                                <div class="reservation-tabs-wrapper">
                                    <div class="row">
                                        <div class="col-md-3 col-sm-12 col-lg-3" >
                                            <div class="reservation-tabs-list brd-rd5">
                                                <ul class="nav nav-tabs brd-rd5">
                                                    <li class="active">
														<a href="#reservation-tab1" data-toggle="tab" aria-expanded="true">
														<span class="brd-rd50">1</span> Personal Details</a>
													</li>
                                                    <li class="">
														<a href="#reservation-tab2" data-toggle="tab" aria-expanded="false">
															<span class="brd-rd50">2</span> Kitchen Details
														</a>
													</li>
                                                    <li><a href="#reservation-tab3" data-toggle="tab"><span class="brd-rd50">3</span> Payment Information</a></li>
                                                    <li><a href="#reservation-tab4" data-toggle="tab"><span class="brd-rd50">4</span> Activation</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col-md-9 col-sm-12 col-lg-9" style=" box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
                                        <form class="restaurant-info-form brd-rd5" action="addchef">
                                            <div class="reservation-tab-content">
                                                <div class="tab-content">
                                                 
                                                    <div class="tab-pane fade active in" id="reservation-tab1">
                                                       
                                                            <div class="row mrg20">
                                                                <div class="col-md-6 col-sm-6 col-lg-6">
                                                                    <label>Name <sup>*</sup></label>
                                                                    <input  name="name" class="brd-rd3" type="text" required>
                                                                </div>
                                                                <br>
                                                                <div class="col-md-6 col-sm-6 col-lg-6">
                                                                    <label>Email <sup>*</sup></label>
                                                                    <input name="email" class="brd-rd3" type="text" required>
                                                                </div>
                                                                <br>
                                                                <div class="col-md-6 col-sm-6 col-lg-6">
                                                                    <label>Phone <sup>*</sup></label>
                                                                    <input name="phone" class="brd-rd3" type="text" required>
                                                                </div>
                                                                <br>
                                                                <div class="col-md-6 col-sm-6 col-lg-6" required>
                                                                    <label>Password <sup>*</sup></label>
                                                                    <input name="password" class="brd-rd3" type="text" required>
                                                                </div>
                                                                
                                                               

                                                                <div class="col-md-12 col-sm-12 col-lg-12">
                                                                    <div class="step-buttons">
                                                                    
                                                                        <a class="brd-rd3 red-bg" href="#reservation-tab2" data-toggle="tab" aria-expanded="true">Next Step</a>
                                                                   </a> </div>
                                                                </div>
                                                            </div>
                                                        
                                                    </div>
                                                    <div class="tab-pane fade" id="reservation-tab2">
                                                      
                                                            <div class="row mrg20">
                                                                <div class="col-md-6 col-sm-6 col-lg-6">
                                                                    <label>Kitchen Name <sup>*</sup></label>
                                                                    <input name="kitchen_name" class="brd-rd3" type="text" required>
                                                                </div>
                                                                <br>
                                                                <div class="col-md-6 col-sm-6 col-lg-6">
                                                                    <label>Category <sup>*</sup></label>
                                                                    <input name="descriptions" class="brd-rd3" type="text" required>
                                                                </div>
                                                                <br>
                                                                <div class="col-md-6 col-sm-6 col-lg-6">
                                                                    <label>Kitchen Picture <sup>*</sup></label>
                                                                    <input name="kitchen-picture" class="brd-rd3" type="text" required>
                                                                </div>
                                                                <br>
                                                                <div class="col-md-6 col-sm-6 col-lg-6">
                                                                    <label>Address <sup>*</sup></label>
                                                                    <input name="address" class="brd-rd3" type="text" required>
                                                                </div>
                                                                
                                                               

                                                                <div class="col-md-12 col-sm-12 col-lg-12">
                                                                    <div class="step-buttons">
                                                                <a class="brd-rd3 red-bg" href="#reservation-tab1" data-toggle="tab" aria-expanded="true">Back Step</a>
                                                                <a class="brd-rd3 red-bg" href="#reservation-tab3" data-toggle="tab" aria-expanded="true">Next Step</a>
                                                            </div>
                                                                </div>
                                                            </div>
                                                       
                                                    </div>
                                                           
                                                        
                                                    <div class="tab-pane fade" id="reservation-tab3">
                                                       
                                                            <div class="row mrg20">
                                                                <div class="col-md-6 col-sm-6 col-lg-6">
                                                                    <label> Bank Name <sup>*</sup></label>
                                                                    <input name="bank-name" class="brd-rd3" type="text" required>
                                                                </div>
                                                                <div class="col-md-6 col-sm-6 col-lg-6">
                                                                    <label>Account no <sup>*</sup></label>
                                                                    <input name="account-no" class="brd-rd3" type="text" required>
                                                                </div>
                                                                <div class="col-md-6 col-sm-6 col-lg-6">
                                                                    <label>Account Holder Name <sup>*</sup></label>
                                                                    <input name="account-holder-name" class="brd-rd3" name="accout"  type="text" required>
                                                                </div>
                                                                <div class="col-md-6 col-sm-6 col-lg-6">
                                                                    <label>IFSC Code <sup>*</sup></label>
                                                                    <input name="ifsc" class="brd-rd3" type="text" required>
                                                                </div>
                                                                <div class="col-md-6 col-sm-6 col-lg-6">
                                                                    <label>Branch Name <sup>*</sup></label>
                                                                    <input name="branch-name" class="brd-rd3">
                                                                </div>
                                                                <div class="col-md-12 col-sm-12 col-lg-12">
                                                                    <div class="step-buttons">
                                                                        <a class="brd-rd3 red-bg" href="#reservation-tab2" data-toggle="tab" aria-expanded="true">Back Step</a>
                                                                        <a class="brd-rd3 red-bg" href="#reservation-tab4" data-toggle="tab" aria-expanded="true">Next Step</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        
                                                    </div>
                                                    <div class="tab-pane fade" id="reservation-tab4">
                                                        <div class="order-wrapper2 brd-rd5">
                                                            <div class="step-buttons">
                                                                        <a class="brd-rd3 red-bg" href="#reservation-tab3" data-toggle="tab" aria-expanded="false">Back Step</a>
                                                                       
                                                                        <button type="submit" class="brd-rd3 red-bg">Submit Your application</button>
                                                                    </div>
                                                        </div>
                                                       
                                                    </div>
                                                </div>
                                            </div>
                                             </form>
                                        </div>
                                    </div>
                                </div>
                                </div><!-- Section Box -->
                            </div>
                        </div>
                    </div>
                
            </div>
        </section>
        
		<jsp:include page="include/footer.jsp"/>

       <!-- Newsletter Popup Wrapper -->

     
    </main><!-- Main Wrapper -->

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/main.js"></script>
</body>	
</html>