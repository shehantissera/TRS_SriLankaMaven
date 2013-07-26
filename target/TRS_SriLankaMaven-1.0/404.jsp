<%-- 
    Document   : 404
    Created on : Jul 21, 2013, 10:41:18 AM
    Author     : Shehan Tis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

    <head>
        <%@ include file="inc_head.jsp" %> 
    </head>
    <body>
        <%@ include file="inc_options.jsp" %> 
        <%@ include file="inc_topNaviBar.jsp" %> 
        <%@ include file="inc_accountStat.jsp" %> 
        
        
        <br><br><br><br><br>
        <div class="site-container">
            <ul class="breadcrumb container-box">
                <li><a href="#">Home</a></li>
                <li class="active">404</li>
            </ul>
            
        </div>
        <!--<div class="site-container">
            <div class="header-eight-box">
                <ul id="header-eight">
                    <li>
                        <img src="content/examples-of-standart-pages.jpg" alt="Examples of standart pages">
                        <div class="slider-border"></div>
                        <div class="title">
                            <h3>examples of standard pages</h3>
                            <div class="clearfix"></div>
                            <h6>Responsive Multi-Purpose Theme</h6>
                        </div>
                    </li>
                </ul>
            </div>
        </div>-->
        <div class="site-container">
            <div class="container not-found-2">
                <div class="row">
                    <div class="span12">
                        <div class="top">404</div>
                        <div class="bottom">the page cannot be found</div>
                    </div>
                    <div class="span12">
                        <center><input type="button" class="btn btn-primary" name="home" value="Home" onclick="window.location.href = 'index.jsp'"/></center>
                    </div>
            </div>
        </div>
        <%@ include file="inc_footer.jsp" %> 
        <script src="js/localjquery.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/jquery.formstyler.js"></script>
        <script src="js/jquery.carouFredSel-6.2.0-packed.js"></script>
        <script src="js/jquery.touchSwipe.min.js"></script>
        <script src="js/jquery.cookie.js"></script>
        <script src="js/jquery.minicolors.js"></script>
        <script src="js/script.js"></script>
    </body>

</html>
