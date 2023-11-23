<%-- 
    Document   : signup
    Created on : Jul 13, 2022, 7:45:52 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <title>Fashion Store A Fashion Category Flat Bootstarp Resposive Website Template | Signup :: w3layouts</title>
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

                </div>
                <div class="header-grid-right">
                    <a href="#" class="sign-in">Sign In</a>
                    <form>
                        <input type="text" value="Username" onfocus="this.value = '';" onblur="if (this.value == '') {
                                    this.value = '';
                                }">
                        <input type="text" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {
                                    this.value = '';}">
                        <input type="submit" value="Go" >
                    </form>
                    <label>|</label>
                    <a href="signup.jsp" class="sign-up">Sign Up</a>
                </div>
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

                    </ul>			
                    <div class="clearfix"> </div>	
                    <script>
                        $("span.menu").click(function () {
                            $(".top-nav ul").slideToggle(500, function () {
                            });
                        });
                    </script>					
                </div>
                <div class="search">
                    <form>
                        <input type="text" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {
                                    this.value = '';}" >
                        <input type="submit"  value="">
                    </form>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
    <!---->
    <div class="content">
        <div class="container"> 			         
            <div class="register">
                <form action="register" method="post"> 
                    <div class="  register-top-grid">
                        <h3>PERSONAL INFORMATION</h3>
                        <div class="mation">

                            <span>UserName<label>*</label></span>
                            <input type="text" name="username">
                            <p class="text-warning">${error}</p>

                            <span>Password<label>*</label></span>
                            <input type="password" name="pass"> 

                            <span>Name<label>*</label></span>
                            <input value="${name}" type="text" name="name">                                                

                            <span>Email Address<label>*</label></span>
                            <input value ="${mail}" type="email" name="mail"> 

                            <span>MobilePhone<label>*</label></span>
                            <input value ="${phone}"type="number" name="phone"> 
                        </div>
                        <div class="clearfix"> </div>
                        <input type="submit" name="signup" value="Sign Up">
                    </div>

                </form>
            </div>
        </div>
    </div>
    <!---->
    <div class="footer">
        <div class="container">
            <div class="footer-class">
                <div class="class-footer">
                    <ul>
                        <li ><a href="index.jsp" class="scroll">HOME </a><label>|</label></li>
                        <li><a href="men.jsp" class="scroll">MEN</a><label>|</label></li>
                        <li><a href="women.jsp" class="scroll">WOMEN</a><label>|</label></li>
                        <li><a href="collection.jsp" class="scroll">COLLECTION</a><label>|</label></li>
                        <li><a href="collection.jsp" class="scroll">STORE PRODUCTS</a><label>|</label></li>
                        <li><a href="collection.jsp" class="scroll">LATEST  PRODUCT</a></li>
                    </ul>
                    <p class="footer-grid">&copy; 2014 Template by <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
                </div>	 
                <div class="footer-left">
                    <a href="index.jsp"><img src="images/logo1.png" alt=" " /></a>
                </div> 
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
</body>
</html>
