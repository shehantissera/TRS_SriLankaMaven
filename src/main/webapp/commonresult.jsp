<%-- 
    Document   : commonresult
    Created on : Jun 30, 2013, 5:52:09 PM
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
                <li class="active">Result</li>
            </ul>
        </div>
        <div class="site-container">
            <div class="container entry-content about-us-page">
                <div class="row">
                    <div class="span12">
                        <h3 class="page-title">${Title}</h3>
                    </div>
                    <div class="span6">
                        ${Description}
                    </div>
                    ${VerificationInput}
                </div>
                <div class="row">
                    <center>
                        <input type="button" class="btn btn-primary" name="home" value="Home" onclick="window.location.href = 'index.jsp'"/>
                        <input style="${display}" type="button" class="btn btn-primary" name="again" value="${BtnValue}" onclick="window.location.href = '${BtnPath}'"/>
                    </center>
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
