<%-- 
    Document   : inc_search
    Created on : Jul 7, 2013, 9:49:09 AM
    Author     : Shehan Tis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container main-menu">
    <div class="navbar">
        <a class="btn btn-navbar collapsed" data-toggle="collapse" data-target=".navbar-main">
            <div class="icon-container">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </div>
            <div class="title-menu">Caregory</div>
        </a>
        <div class="nav-collapse navbar-main collapse">
            <ul class="nav">
                <li class="dropdown">
                    <a href="#" data-toggle="dropdown">Sights</a>
                    <div class="dropdown-menu span12">
                        <div class="dropdown-section pull-left">
                            <a class="title" href="#">Clothing</a>
                            <ul>
                                <li><a href="#">Dresses</a></li>
                                <li><a href="#">Knitwear</a></li>
                                <li><a href="#">Jackets & Coats</a></li>
                                <li><a href="#">Trousers & Leggings</a></li>
                                <li><a href="#">Playsuits</a></li>
                                <li><a href="#">Editors Choice</a></li>
                                <li><a href="#">True Decadence</a></li>
                                <li><a href="#">Cardigans</a></li>
                            </ul>
                        </div>
                        <div class="dropdown-section pull-left">
                            <a class="title" href="#">Accommodation</a>
                            <ul>
                                <li><a href="#">Party Shoes</a></li>
                                <li><a href="#">Boots</a></li>
                                <li><a href="#">High Heel</a></li>
                                <li><a href="#">Wedge</a></li>
                                <li><a href="#">Flats Shoes</a></li>
                                <li><a href="#">Jeffrey Campbell</a></li>
                            </ul>
                        </div>
                        <div class="dropdown-section pull-left">
                            <a class="title" href="#">Accessories</a>
                            <ul>
                                <li><a href="#">Scarves</a></li>
                                <li><a href="#">Handbags</a></li>
                                <li><a href="#">Hats</a></li>
                                <li><a href="#">Belts & Scarves</a></li>
                            </ul>
                        </div>
                        <div class="dropdown-section pull-left">
                            <a class="title" href="#">Be inspared</a>
                            <ul>
                                <li><a href="#">Disco disco</a></li>
                                <li><a href="#">Standout slogans</a></li>
                                <li><a href="#">Sports luxe</a></li>
                                <li><a href="#">Monochrome</a></li>
                            </ul>
                        </div>
                    </div>
                </li>
                <li class="dropdown">
                    <a href="#" data-toggle="dropdown">Accommodation</a>
                    <div class="dropdown-menu span12">
                        <div class="dropdown-section pull-left">
                            <a class="title" href="#">Be inspared</a>
                            <ul>
                                <li><a href="#">Disco disco</a></li>
                                <li><a href="#">Standout slogans</a></li>
                                <li><a href="#">Sports luxe</a></li>
                                <li><a href="#">Monochrome</a></li>
                            </ul>
                        </div>
                        <div class="dropdown-section pull-left">
                            <a class="title" href="#">Shoes</a>
                            <ul>
                                <li><a href="#">Party Shoes</a></li>
                                <li><a href="#">Boots</a></li>
                                <li><a href="#">High Heel</a></li>
                                <li><a href="#">Wedge</a></li>
                                <li><a href="#">Flats Shoes</a></li>
                                <li><a href="#">Jeffrey Campbell</a></li>
                            </ul>
                        </div>
                        <div class="dropdown-section pull-left">
                            <a class="title" href="#">Clothing</a>
                            <ul>
                                <li><a href="#">Dresses</a></li>
                                <li><a href="#">Knitwear</a></li>
                                <li><a href="#">Jackets & Coats</a></li>
                                <li><a href="#">Trousers & Leggings</a></li>
                                <li><a href="#">Playsuits</a></li>
                                <li><a href="#">Editors Choice</a></li>
                                <li><a href="#">True Decadence</a></li>
                                <li><a href="#">Cardigans</a></li>
                            </ul>
                        </div>
                        <div class="dropdown-section promo pull-left">
                            <a href="#"><img src="content/sample-benner-1.png" alt=""></a>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem, quam sunt tenetur eaque minima at distinctio officiis quis explicabo rem.</p>
                        </div>
                    </div>
                </li>
                
                <li>
                    <a href="#" data-toggle="dropdown">Services</a>
                </li>
                <li>
                    <a href="#" data-toggle="dropdown">By Categories</a>
                </li>
                <li>
                    <a href="#" data-toggle="dropdown">By Ratings</a>
                </li>
                <li>
                    <a href="#" data-toggle="dropdown">By Location</a>
                </li>
                <li>
                    <a href="#" data-toggle="dropdown">Best of 2013</a>
                </li>
            </ul>
        </div>
        <form name="searchForm" class="navbar-search pull-right" action="searchprocesser.jsp" method="get">
            <input class="search-query" type="search" name="q" id="inputString" onkeyup="lookup(this.value);" onblur="fill();">
            <button type="submit" class="search-button">&nbsp;</button>
            <div class="suggestionsBox" id="suggestions" style="display: none" >
                <div class="suggestionList" id="autoSuggestionsList">
                </div>
            </div>
        </form>
    </div>
</div>