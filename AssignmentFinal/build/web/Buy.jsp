<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
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
					<ul>
												
					</ul>
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
				</div>
					
				<div class="clearfix"> </div>
			</div>	
			<div class="header-bottom-bottom">
				<div class="top-nav">
					<span class="menu"> </span>
								
					<div class="clearfix"> </div>	
				<script>
					$("span.menu").click(function(){
						$(".top-nav ul").slideToggle(500, function(){
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
                    <form action="admin" method="Post"> 
				 <div class="  register-top-grid">
					<h2>Information!</h2>
					<div class="mation">
                                            <c:if test="${error != null}">
                                                <span><label>${error}</label></span>
                                            </c:if>
                                                <c:if test="${error == null}">
                                                <span><label>You have bought ${amount} product ${name} with price: ${money}</label></span>
                                                <a href="home">Continue shopping</a>
                                            </c:if>
						
                                                
                                                
					</div>
					 <div class="clearfix"> </div>
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