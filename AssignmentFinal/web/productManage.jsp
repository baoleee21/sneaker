<%-- 
    Document   : productManage
    Created on : Jul 14, 2022, 6:31:47 AM
    Author     : huyke
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="model.Product" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Fashion Store A Fashion Category Flat Bootstarp Resposive Website Template | Home :: w3layouts</title>
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
        <link href='http://fonts.googleapis.com/css?family=Libre+Baskerville:400,700,400italic' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Oswald:400,700,300' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
        <!--//fonts-->
        <style>
            table {
                width: 100%;
                border-collapse: collapse;
            }
            th, td {
                padding: 8px;
                border: 1px solid #dee2e6;
            }
            th {
                height: 40px;
                text-align: left;
            }
        </style>
    </head>
    <body>
        <!--header-->
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
                            <h2>Hello!! ${account}</h2>
                        </form>
                    </div>

                    <div class="clearfix"> </div>

                </div>	
                <div class="header-bottom-bottom">
                    <div class="top-nav">
                        <span class="menu"> </span>
                        <ul>
                            
                            <li><a href="#" >Product Manage</a></li>

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
                        <form action="adminproduct" method="Post">
                            <input type="text" name="search" value="${search}"  >
                            <input type="submit" name="sub" value="">
                        </form>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>

        <table border="1" align="center" style="background-size:100%">
            <tr>
                <td>ID</td>
                <td>Name</td>
                <td>Image</td>
                <td>Quantity</td>
                <td>Price</td>
                <td>Type</td>
                <td>Update</td>
                <td>Delete</td>
            </tr>
            <c:forEach items="${list}" var="item">
                <tr>

                    <td>${item.getID()}</td>
                    <td>${item.getName()}</td>
                    <td><img style='width:100px;height:60px' src='${item.getImg()}'></td>
                    <td>${item.getQuantity()}</td>
                    <td>${item.getPrice()}</td>
                    <td>${item.getType()}</td>
                    <td><a href="Edit?id=${item.getID()}&mod=update">Update</a></td>
                    <td><a href="Edit?id=${item.getID()}&mod=delete">Delete</a></td>


                </tr>
            </c:forEach>
        </table> 
        <c:forEach begin="${1}" end="${numpage}" var="item">
            <button><a href="adminproduct?xpage=${item}">${item}</a></button> 

        </c:forEach>                
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
