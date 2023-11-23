<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="model.Product" %>
<%@page import="DAO.ProductDAO" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Fashion Store A Fashion Category Flat Bootstarp Resposive Website Template | Single :: w3layouts</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery.min.js"></script>
        <!-- Custom Theme files -->
        <!--theme-style-->
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
        <!--//theme-style-->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Fashion Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!--fonts-->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Oswald:400,700,300' rel='stylesheet' type='text/css'>
        <!--//fonts-->
        <link rel="stylesheet" href="css/etalage.css">
        <script src="js/jquery.etalage.min.js"></script>
        <script>
            jQuery(document).ready(function ($) {

                $('#etalage').etalage({
                    thumb_image_width: 300,
                    thumb_image_height: 400,
                    source_image_width: 900,
                    source_image_height: 1200,
                    show_hint: true,
                    click_callback: function (image_anchor, instance_id) {
                        alert('Callback example:\nYou clicked on an image with the anchor: "' + image_anchor + '"\n(in Etalage instance: "' + instance_id + '")');
                    }
                });

            });
        </script>
        <!-- the jScrollPane script -->
        <script type="text/javascript" src="js/jquery.jscrollpane.min.js"></script>
        <script type="text/javascript" id="sourcecode">
            $(function ()
            {
                $('.scroll-pane').jScrollPane();
            });
        </script> 
    </head>
    <body> 
        <!--header-->
        <!--header-->
        <div class="header">
            <div class="header-top">
                <div class="container">
                    <div class="header-grid">
                        <ul>

                        </ul>
                    </div>

                    <c:if test="${user != null}">
                        <div class="header-grid-right">
                            <a class="sign-in">Hello ${user}</a>
                        </div>
                    </c:if>
                    <div class="clearfix"> </div>
                </div>
            </div>
            <div class="container">
                <div class="header-bottom">			
                    <div class="logo">
                        <a href="home"><img src="images/logo.png" alt=" " ></a>
                    </div>

                    <div class="clearfix"> </div>
                </div>	
                <div class="header-bottom-bottom">
                    <div class="top-nav">
                        <span class="menu"> </span>
                        <ul>
                            <li class="active"><a href="home">HOME </a></li>
                            <li><a href="nike" >NIKE</a></li>
                            <li><a href="puma" >PUMA</a></li>					
                            <li><a href="adidas" >ADIDAS</a></li>
                        </ul>	
                        <script>
                            $("span.menu").click(function () {
                                $(".top-nav ul").slideToggle(500, function () {
                                });
                            });
                        </script>

                        <div class="clearfix"> </div>					
                    </div>
                    <div class="search">
                        <form>
                            <input type="text" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }" >
                            <input type="submit"  value="">
                        </form>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>

        <!--content-->
        <div class="content">
            <div class="container">
                <div class="single">
                    <div class="col-md-9">
                        <div class="single_grid">
                            <div class="grid images_3_of_2">
                                <ul id="etalage">
                                    <li>
                                        <a>
                                            <img class="etalage_thumb_image img-responsive" src="${p.getImg()}" alt="" >
                                            <img class="etalage_source_image img-responsive" src="${p.getImg()}" alt="" >
                                        </a>
                                    </li>
                                    <li>
                                        <img class="etalage_thumb_image img-responsive" src="${p.getImg()}" alt="" >
                                        <img class="etalage_source_image img-responsive" src="${p.getImg()}" alt="" >
                                    </li>
                                    <li>
                                        <img class="etalage_thumb_image img-responsive" src="${p.getImg()}" alt=""  >
                                        <img class="etalage_source_image img-responsive" src="${p.getImg()}" alt="" >
                                    </li>
                                    <li>
                                        <img class="etalage_thumb_image img-responsive" src="${p.getImg()}"  alt="" >
                                        <img class="etalage_source_image img-responsive" src="${p.getImg()}" alt="" >
                                    </li>
                                </ul>
                                <div class="clearfix"> </div>		
                            </div> 
                            <!---->
                            <form action="buy?id=${p.getID()}" method="post">

                                <div class="span1_of_1_des">
                                    <div class="desc1">
                                        <h3>${p.getName()}</h3>
                                        <h5>${p.getPrice()}</h5>
                                        <div class="available">
                                            <h4>Available product :${p.getQuantity()}</h4>
                                            Amount: <input type="number" name="amount">
                                            <ul>

                                            </ul>
                                            <div class="form-in">
                                                <input type="submit" name="buy" value="Buy">
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="share-desc">
                                            <div class="share">

                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </form>

                        </div>                       


                        <!----- tabs-box ---->
                        <div class="sap_tabs">	
                            <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
                                <ul class="resp-tabs-list">
                                    <li class="resp-tab-item " aria-controls="tab_item-0" role="tab"><span>Product Description</span></li>
                                    <li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>Additional Information</span></li>
                                    <li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span>Reviews</span></li>
                                    <div class="clearfix"></div>
                                </ul>				  	 
                                <div class="resp-tabs-container">
                                    <h2 class="resp-accordion resp-tab-active" role="tab" aria-controls="tab_item-0"><span class="resp-arrow"></span>Product Description</h2><div class="tab-1 resp-tab-content resp-tab-content-active" aria-labelledby="tab_item-0" style="display:block">
                                        <div class="facts">
                                            <p > There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined </p>
                                            <ul>
                                                <li>Research</li>
                                                <li>Design and Development</li>
                                                <li>Porting and Optimization</li>
                                                <li>System integration</li>
                                                <li>Verification, Validation and Testing</li>
                                                <li>Maintenance and Support</li>
                                            </ul>         
                                        </div>
                                    </div>
                                    <h2 class="resp-accordion" role="tab" aria-controls="tab_item-1"><span class="resp-arrow"></span>Additional Information</h2><div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
                                        <div class="facts">									
                                            <p > Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections </p>
                                            <ul >
                                                <li>Multimedia Systems</li>
                                                <li>Digital media adapters</li>
                                                <li>Set top boxes for HDTV and IPTV Player applications on various Operating Systems and Hardware Platforms</li>
                                            </ul>
                                        </div>	
                                    </div>									
                                    <h2 class="resp-accordion" role="tab" aria-controls="tab_item-2"><span class="resp-arrow"></span>Reviews</h2><div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
                                        <div class="facts">
                                            <p > There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined </p>
                                            <ul>
                                                <li>Research</li>
                                                <li>Design and Development</li>
                                                <li>Porting and Optimization</li>
                                                <li>System integration</li>
                                                <li>Verification, Validation and Testing</li>
                                                <li>Maintenance and Support</li>
                                            </ul>     
                                        </div>	
                                    </div>
                                </div>
                            </div>
                            <script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
                            <script type="text/javascript">
                                $(document).ready(function () {
                                    $('#horizontalTab').easyResponsiveTabs({
                                        type: 'default', //Types: default, vertical, accordion           
                                        width: 'auto', //auto or any width like 600px
                                        fit: true   // 100% fit in a container
                                    });
                                });
                            </script>	

                        </div>
                    </div>
                    <!---->
                    <div class="col-md-3">

                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
        <!---->
        <div class="footer">
            <div class="container">
                <div class="footer-class">
                    <div class="class-footer">
                        <ul>
                            <li ><a href="index.html" class="scroll">HOME </a><label>|</label></li>
                            <li><a href="men.html" class="scroll">MEN</a><label>|</label></li>
                            <li><a href="women.html" class="scroll">WOMEN</a><label>|</label></li>
                            <li><a href="collection.html" class="scroll">COLLECTION</a><label>|</label></li>
                            <li><a href="collection.html" class="scroll">STORE PRODUCTS</a><label>|</label></li>
                            <li><a href="collection.html" class="scroll">LATEST  PRODUCT</a></li>
                        </ul>
                        <p class="footer-grid">&copy; 2014 Template by <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
                    </div>	 
                    <div class="footer-left">
                        <a href="index.html"><img src="images/logo1.png" alt=" " /></a>
                    </div> 
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
    </body>
</html>