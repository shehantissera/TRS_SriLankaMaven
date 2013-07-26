<%-- 
    Document   : myaccount
    Created on : Jul 2, 2013, 12:48:12 AM
    Author     : Shehan Tis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

    <head>

        <%@ include file="inc_head.jsp" %> 

    </head>
    <%@ include file="inc_auth.jsp" %> 
    <body>
        <%@ include file="inc_options.jsp" %> 
        <%@ include file="inc_topNaviBar.jsp" %> 
        <%@ include file="inc_accountStat.jsp" %> 
        <br><br><br><br><br>
        <div class="site-container">
            <ul class="breadcrumb container-box">
                <li><a href="#">Home</a></li>
                <li class="active">My Account</li>
            </ul>
        </div>
        <div class="site-container">
            <div class="container entry-content about-us-page">
                <div class="row">
                    <div class="span12">
                        <h3 class="page-title">My Account</h3>
                    </div>
                    <div class="span12">
                        <form action="#">
                            <input type="button" value="Create Sight" onclick="window.location.href = 'create_sight.jsp'" class="btn btn-primary">
                            <input type="button" value="Create Tour" onclick="window.location.href = 'create_tours.jsp'" class="btn btn-primary">
                            <input type="button" value="Create Service" onclick="window.location.href = 'create_service.jsp'" class="btn btn-primary">
                        </form>
                    </div>
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

