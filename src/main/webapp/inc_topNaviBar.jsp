<%-- 
    Document   : inc_topNaviBar
    Created on : Jul 7, 2013, 9:04:31 AM
    Author     : Shehan Tis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="navbar-static-top navbar">
    <div class="container-box top-box">
        <a href="index.jsp" class="brand"><img src="img/logo.png" alt="Precise logo"></a>
        <a class="btn btn-navbar collapsed" data-toggle="collapse" data-target=".navbar-responsive-collapse">
            <div class="icon-container">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </div>
            <div class="title-menu">Menu</div>
        </a>
        <div class="nav-collapse navbar-responsive-collapse collapse">
            <ul class="nav top-main-navigation">
                <li class="active"><a href="index.jsp">home</a></li>
                <li><a href="about.jsp">About Sri Lanka</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Sights</a>
                    <ul class="dropdown-menu">
                        <li class="empty">All</li>
                        <li class="empty">Other types of locations comes over here</li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Accomadation</a>
                    <ul class="dropdown-menu">
                        <li><a href="#">All</a></li>
                        <li><a href="#">Other types of accomadation comes over here</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Services</a>
                    <ul class="dropdown-menu">
                        <li><a href="catalog-grid.html">Types of Services</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Gallery</a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Types of Gallery</a></li>
                        <li><a href="#">All images</a></li>
                    </ul>
                </li>

            </ul>
        </div>
        <ul class="nav pull-right nav-top-right">
            <li class="dropdown">
                <a href="#" data-toggle="dropdown">En<span class="arrow"></span></a>
                <ul class="dropdown-menu language">
                    <li><a href="#">English</a></li>
                    <li><a href="#">Ukrainian</a></li>
                    <li><a href="#">Russian</a></li>
                </ul>
            </li>

        </ul>
    </div>
</div>