<%-- 
    Document   : login
    Created on : Jun 27, 2013, 11:59:18 PM
    Author     : Shehan Tis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
//session.setAttribute("userLogin", null);
//session.setAttribute("fname", null);
//session.setAttribute("lname", null);
//session.setAttribute("email", null);
%>

<!DOCTYPE html>
<html>

    <head>

        <%@ include file="inc_head.jsp" %> 

    </head>
    <body>
        <%@ include file="inc_options.jsp" %> 
        <%@ include file="inc_topNaviBar.jsp" %> 
        <%@ include file="inc_accountStat.jsp" %> 

        <div class="container-box">
           <%@ include file="inc_search.jsp" %> 
        </div>
        
        <div class="site-container">
            <div class="header-six-box">

            </div>
        </div>
        <div class="site-container">
            <ul class="breadcrumb container-box">
                <li><a href="#">Home</a></li>
                <li><a href="#">Shop</a></li>
                <li class="active">Login</li>
            </ul>
        </div>
        <div class="site-container">
            <div class="container entry-content">
                <div class="row">
                    <div class="span12">
                        <h1 class="page-title">Login or Create an Account</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="span6 new-costumers">
                        <h2>New guests</h2>
                        <p>By creating an account with our application, you will be able to find the information regarding Sri Lanka faster, 
                            these searches can be according to your interests, get to know the best places available with the recommendations and reviews of other guests.
                        </p>
                        <a href="create_account.jsp" class="btn btn-primary">Create an account</a>
                    </div>
                    <div class="span6 login">
                        <h2>Registered Customers</h2>
                        <p>If you have an account with us, please log in.</p>
                        <%
                            if (request.getAttribute("userLogin") != null) {
                                String flag = request.getAttribute("userLogin").toString();
                                if (flag.equals("error")) {
                                    out.println("<p class='text-error'>Wrong username or password. Please try again.</p>");
                                    request.setAttribute("userLogin", null);
                                } else {
                                    out.println("<p class='text-success'>Correct login!</p>");
                                }
                            }%>
                        <form name="loginForm" method="post" action="loginCheck">
                            <label>Email Adress: <span class="required">*</span></label>
                            <input name="email" type="email" required title="Please provide an proper email address.">
                            <label>Password: <span class="required">*</span></label>
                            <input name="password" type="password">
                            <label class="checkbox-form">
                                <input id="remember" type="checkbox"> Remember me
                            </label>
                            <input type="submit" value="Login" class="btn btn-primary">
                            <div class="required-field pull-right">* Required Field</div>
                            <a href="#" class="forgot pull-right">Forgot Your Password?</a>
                            <div class="clearfix"></div>
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