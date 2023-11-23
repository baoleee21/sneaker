<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
    <head>
        <title>Fashion Store A Fashion Category Flat Bootstarp Resposive Website Template | Men :: w3layouts</title>
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
    </head>
    <body> 
        <!--header-->
        <div class="header">
            <div class="header-top">
                <div class="container">
                    <div class="header-grid">
                        <ul>

                        </ul>
                    </div>
                    <c:if test="${user == null}">
                        <div class="header-grid-right">
                            <a href="#" class="sign-in">Sign In</a>
                            <p class="text-danger">
                                ${error}
                            </p>

                            <form action = "cus" method ="post" >
                                <input type="text" name ="Username" value="Username" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">
                                <input type="text" name ="Password" value="Password"  onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">
                                <input type="submit"  value="Go" >
                            </form>
                            <label>|</label>
                            <a href="signup.jsp" class="sign-up">Sign Up</a>
                        </div>
                    </c:if >
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
                <div class="  col-m-on">
                    <!---->
                    <div class="in-line">
                        <div class="para-all">
                            <h3>LATEST  ARRIVALS</h3>
                            <p>Check our all latest products in this section.</p>
                        </div>
                        <div class="in-line">
                        <ul class="dc_pagination dc_paginationA dc_paginationA06">
                            <c:forEach begin="${1}" end="${numpage}" var="item">
                                <li><a href="puma?xpage=${item}">${item}</a></li>
                                </c:forEach>
                        </ul>
                        </div>
                        <div class="lady-on">
                            <c:forEach items="${listP}" var="item">
                                <div class="col-md-4 you-para">
                                    <a href="single?id=${item.getID()}"><img class="img-responsive pic-in" src="${item.getImg()}" alt=" " ></a>
                                    <div class="you-in">
                                        <span>15<label>%</label></span>
                                        <small>off</small>
                                    </div>
                                    <p>${item.getName()}</p>
                                    <span>${item.getPrice()} | <label class="cat-in"> </label> <a href="single?id=${item.getID()}">Add to Cart </a></span>
                                </div>
                            </c:forEach>
                            <div class="clearfix"> </div>
                        </div>
                    </div>
                </div>
                <!---->
                <div class="lady-in-on">
                    <div class="buy-an">
                        <h3>OTHER PRODUCTS</h3>
                        <p>Check our all latest products in this section.</p>
                    </div>
                    <ul id="flexiselDemo1">
                        <c:forEach items="${listP}" var="item">
                            <li><a href="single?id=${item.getID()}"><img class="img-responsive women" src="${item.getImg()}" alt=""></a>
                            <div class="hide-in">
                                <p>${item.getName()}</p>
                                <span>${item.getPrice()}  |  <a href="single?id=${item.getID()}">Buy Now </a></span>
                            </div></a></li>
                        </c:forEach>
                    </ul>
                    <script type="text/javascript">
                        $(window).load(function () {
                            $("#flexiselDemo1").flexisel({
                                visibleItems: 4,
                                animationSpeed: 1000,
                                autoPlay: true,
                                autoPlaySpeed: 3000,
                                pauseOnHover: true,
                                enableResponsiveBreakpoints: true,
                                responsiveBreakpoints: {
                                    portrait: {
                                        changePoint: 480,
                                        visibleItems: 1
                                    },
                                    landscape: {
                                        changePoint: 640,
                                        visibleItems: 2
                                    },
                                    tablet: {
                                        changePoint: 768,
                                        visibleItems: 3
                                    }
                                }
                            });

                        });
                    </script>
                    <script type="text/javascript" src="js/jquery.flexisel.js"></script>
                </div>
            </div>
        </div>
        <!---->
        <div class="footer">
            <div class="container">
                <div class="footer-class">
                    <div class="class-footer">
                        <ul>
                            <li ><a href="home" class="scroll">HOME </a><label>|</label></li>
                            <li><a href="men.html" class="scroll">MEN</a><label>|</label></li>
                            <li><a href="women.html" class="scroll">WOMEN</a><label>|</label></li>
                            <li><a href="collection.html" class="scroll">COLLECTION</a><label>|</label></li>
                            <li><a href="collection.html" class="scroll">STORE PRODUCTS</a><label>|</label></li>
                            <li><a href="collection.html" class="scroll">LATEST  PRODUCT</a></li>
                        </ul>
                        <p class="footer-grid">&copy; 2014 Template by <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
                    </div>	 
                    <div class="footer-left">
                        <a href="home"><img src="images/logo1.png" alt=" " ></a>
                    </div> 
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
    </body>
</html>