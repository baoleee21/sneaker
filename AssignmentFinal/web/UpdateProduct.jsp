<%-- 
    Document   : UpdateProduct
    Created on : Jul 14, 2022, 8:09:13 AM
    Author     : huyke
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
          <div class="header">
            <div class="header-top">
                <div class="container">
                    <div class="header-grid">




                    </div>
                    <div class="header-grid-right">

                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
            <div class="container">
                <div class="header-bottom">			
                    <div class="logo">
                        <a href="index.html"><img src="images/logo.png" alt=" " ></a>

                        <form action="admin">
                            <h2>Hello!! ${user}</h2>
                        </form>
                    </div>

                    <div class="clearfix"> </div>

                </div>	
                <div class="header-bottom-bottom">
                    <div class="top-nav">
                        <span class="menu"> </span>
                        <ul>
                            
                            <li><a href="" >Update Product</a></li>

                        </ul>	
                        <script>
                            $("span.menu").click(function () {
                                $(".top-nav ul").slideToggle(500, function () {
                                });
                            });
                        </script>

                        <div class="clearfix"> </div>					
                    </div>
                    
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
	<!---->
	<div class="content">
		<div class="container"> 			         
		<div class="register">
                    <form action="Update"> 
				 <div class="  register-top-grid">
					<h3>Product INFORMATION</h3>
					<div class="mation">
                                            
						<span>Product ID<label>*</label></span>
                                                <input type="text" name="id" value="${id}"> 
					
						<span>Name<label>*</label></span>
                                                <input type="text" name="name" value="${Name}"> 
                                                
                                                <span>Image<label>*</label></span>
                                                <input type="text" name="Image" value="${Image}">                                                
                                                					 
						 <span>Quantity<label>*</label></span>
                                                 <input type="text" name="qtt" value="${quantity}"> 
                                                 
                                                 <span>Price<label>*</label></span>
                                                 <input type="text" name="pr" value="${Price}"> 
                                                 
                                                  <span>Type<label>*</label></span>
                                                  <input type="text" name="ty" value="${type}"> 
					</div>
					 <div class="clearfix"> </div>
                                         <input type="submit" name="update" value="Update">
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
