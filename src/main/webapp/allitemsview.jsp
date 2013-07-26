<%-- 
    Document   : allitemsview
    Created on : Jun 27, 2013, 11:53:26 PM
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

        <div class="container-box">
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
                                <a href="#" data-toggle="dropdown">Women</a>
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
                                <a href="#" data-toggle="dropdown">Men</a>
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
                            <li class="dropdown">
                                <a href="#" data-toggle="dropdown">Footwear</a>
                                <ul class="dropdown-menu one">
                                    <li><a href="#">Dresses</a></li>
                                    <li><a href="#">Knitwear</a></li>
                                    <li><a href="#">Jackets & Coats</a></li>
                                    <li><a href="#">Trousers & Leggings</a></li>
                                    <li><a href="#">Cardigans</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#" data-toggle="dropdown">Jewelry</a>
                            </li>
                            <li>
                                <a href="#" data-toggle="dropdown">Accessories</a>
                            </li>
                            <li>
                                <a href="#" data-toggle="dropdown">Electronics</a>
                            </li>
                            <li>
                                <a href="#" data-toggle="dropdown">Furniture</a>
                            </li>
                        </ul>
                    </div>
                    <form class="navbar-search pull-right" action="#" method="get">
                        <input class="search-query" type="search" name="q"><button type="submit" class="search-button">&nbsp;</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="site-container">
            <div class="header-one-box">
                <ul id="header-one">
                    <li>
                        <img src="content/Shoes.jpg" alt="Slider image">
                        <div class="slider-border"><div class="border"></div></div>
                        <div class="title">
                            <span>2013</span>
                            <h6>NEW Womens Collections</h6>
                            <div class="slider-button-box">
                                <div class="btn-ads-container">
                                    <button class="btn-ads" type="button">
                                        <span class="flip-container">
                                            <span class="back">Only from $150</span>
                                            <span class="front">Buy Now</span>
                                        </span>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
                <div class="header-one-prev"></div>
                <div class="header-one-next"></div>
            </div>
        </div>
        <div class="site-container">
            <ul class="breadcrumb container-box">
                <li><a href="#">Home</a></li>
                <li class="active">Category</li>
            </ul>
        </div>
        <div class="site-container">
            <div class="container entry-content">
                <div class="row">
                    <div class="span3">
                        <div class="box">
                            <div class="box-heading">Categories</div>
                            <div class="category-list">
                                <ul>
                                    <li><a href="#">Women <span>(211)</span></a></li>
                                    <li><a href="#">Men <span>(187)</span></a></li>
                                    <li><a href="#">Footwear <span>(75)</span></a></li>
                                    <li><a href="#" class="current">Jewelry <span>(453)</span></a></li>
                                    <li><a href="#">Accessories <span>(49)</span></a></li>
                                    <li><a href="#">Electronics <span>(133)</span></a></li>
                                    <li><a href="#">Furniture <span>(18)</span></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="box filter">
                            <div class="box-heading">Shop By</div>
                            <p>Currently Shopping by:</p>
                            <ul class="result">
                                <li><a href="#" class="close">Close</a><span>Price: </span>$0.00-$999.99</li>
                                <li><a href="#" class="close">Close</a><span>Manufacturer: </span>Apple</li>
                            </ul>
                            <a href="#" class="btn-link pull-right">Clear all</a>
                            <div class="clearfix"></div>
                            <div class="nested-header">Category</div>
                            <ul class="option">
                                <li><span class="arrow">&nbsp;</span><a href="#">Blue (23)</a></li>
                                <li><span class="arrow">&nbsp;</span><a href="#">Green (27)</a></li>
                                <li><span class="arrow">&nbsp;</span><a href="#">Red (9)</a></li>
                            </ul>
                            <div class="nested-header">Price</div>
                            <ul class="option">
                                <li><span class="arrow">&nbsp;</span><a href="#">0.00 - $49.99 (21)</a></li>
                                <li><span class="arrow">&nbsp;</span><a href="#">$50.00 - $99.99 (7)</a></li>
                                <li><span class="arrow">&nbsp;</span><a href="#">$100.00 and above (15)</a></li>
                            </ul>
                        </div>
                        <div class="box">
                            <div class="box-heading">Manufacturers</div>
                            <div class="manufacturers-list">
                                <ul>
                                    <li><a href="#">Glamorous <span>(35)</span></a></li>
                                    <li><a href="#">Jeffrey Campbell <span>(157)</span></a></li>
                                    <li><a href="#">True Decedance <span>(75)</span></a></li>
                                    <li><a href="#">Noir Marron <span>(19)</span></a></li>
                                    <li><a href="#">Caramel <span>(15)</span></a></li>
                                    <li><a href="#">Argent <span>(20)</span></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="box">
                            <div class="box-heading">Specials</div>
                            <div class="sidebar-list-products">
                                <ul>
                                    <li>
                                        <div class="img-box">
                                            <div class="img">
                                                <a href="product-view.html"><img src="content/silebar-img-1.png" alt="Product image"></a>
                                            </div>
                                        </div>
                                        <div class="content">
                                            <a href="product-view.html" class="title">Lilac One Shoulder Bandage Dress</a>
                                            <div class="price">
                                                <span class="price-old">$177.00</span>
                                                <span class="price-new">$75.00</span>
                                            </div>
                                        </div>
                                        <div class="clearfix"></div>
                                    </li>
                                    <li>
                                        <div class="img-box">
                                            <div class="img">
                                                <a href="product-view.html"><img src="content/silebar-img-2.png" alt="Product image"></a>
                                            </div>
                                        </div>
                                        <div class="content">
                                            <a href="product-view.html" class="title">Hot Pink & Black Strapless Bandage Dress</a>
                                            <div class="price">
                                                <span class="price-old">$185.00</span>
                                                <span class="price-new">$139.00</span>
                                            </div>
                                        </div>
                                        <div class="clearfix"></div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="span9 content">
                        <h1>Product list</h1>
                        <div class="toolbar">
                            <div class="left-side pull-left">
                                <div class="view-mode">
                                    <strong title="Grid" class="grid">Grid</strong>
                                    <a href="catalog-list.html" title="List" class="list">List</a>
                                </div>
                            </div>
                            <div class="right-side pull-right">
                                <div class="sort-by pull-left">
                                    <label>Sort By</label>
                                    <select>
                                        <option>Position</option>
                                        <option>Name</option>
                                        <option>Price</option>
                                    </select>
                                    <a href="#" title="">Sort</a>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="limiter pull-left">
                                    <label>Show</label>
                                    <select>
                                        <option selected="selected">12</option>
                                        <option>18</option>
                                        <option>30</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <ul class="product-grid">
                            <li>
                                <article>
                                    <div class="border-top"></div>
                                    <div class="border-left"></div>
                                    <div class="border-right"></div>
                                    <div class="border-bottom"></div>
                                    <a href="product-view.html"><img src="content/baner-img-6.png" alt="Product image"></a>
                                    <div class="product-caption">
                                        <div class="price">
                                            <span>View</span>
                                        </div>
                                        <div class="inner">
                                            <h3 class="title"><a href="product-view.html" title="Caramel & Black Collared BODY Dress">Caramel & Black Collared BODY Dress</a></h3>
                                            <div class="cart-button">
                                                <a href="#" class="btn btn-primary">Add to cart</a>
                                                <a href="#" class="wishlist-link">Add to wishlist</a>
                                                <a href="#" class="compaire-link">Add to compare</a>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                </article>
                            </li>
                            <li>
                                <article>
                                    <div class="border-top"></div>
                                    <div class="border-left"></div>
                                    <div class="border-right"></div>
                                    <div class="border-bottom"></div>
                                    <a href="product-view.html"><img src="content/baner-img-11.png" alt="Product image"></a>
                                    <div class="product-caption">
                                        <div class="price">
                                            <span>View</span>
                                        </div>
                                        <div class="inner">
                                            <h3 class="title"><a href="product-view.html" title="Mix Cady Collins Dresss">Mix Cady Collins Dresss</a></h3>
                                            <div class="cart-button">
                                                <a href="#" class="btn btn-primary">Add to cart</a>
                                                <a href="#" class="wishlist-link">Add to wishlist</a>
                                                <a href="#" class="compaire-link">Add to compare</a>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                </article>
                            </li>
                            <li>
                                <article>
                                    <div class="border-top"></div>
                                    <div class="border-left"></div>
                                    <div class="border-right"></div>
                                    <div class="border-bottom"></div>
                                    <a href="product-view.html"><img src="content/baner-img-12.png" alt="Product image"></a>
                                    <div class="product-caption">
                                        <div class="price">
                                            <span>View</span>
                                        </div>
                                        <div class="inner">
                                            <h3 class="title"><a href="product-view.html" title="Caramel & Black Collared BODY Dress">Caramel & Black Collared BODY Dress</a></h3>
                                            <div class="cart-button">
                                                <a href="#" class="btn btn-primary">Add to cart</a>
                                                <a href="#" class="wishlist-link">Add to wishlist</a>
                                                <a href="#" class="compaire-link">Add to compare</a>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                </article>
                            </li>
                            <li>
                                <article>
                                    <div class="border-top"></div>
                                    <div class="border-left"></div>
                                    <div class="border-right"></div>
                                    <div class="border-bottom"></div>
                                    <a href="product-view.html"><img src="content/baner-img-13.png" alt="Product image"></a>
                                    <div class="product-caption">
                                        <div class="price">
                                            <span>$179.00</span>
                                        </div>
                                        <div class="inner">
                                            <h3 class="title"><a href="product-view.html" title="Mix Cady Collins Dresss">Mix Cady Collins Dresss</a></h3>
                                            <div class="cart-button">
                                                <a href="#" class="btn btn-primary">Add to cart</a>
                                                <a href="#" class="wishlist-link">Add to wishlist</a>
                                                <a href="#" class="compaire-link">Add to compare</a>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                </article>
                            </li>
                            <li>
                                <article>
                                    <div class="border-top"></div>
                                    <div class="border-left"></div>
                                    <div class="border-right"></div>
                                    <div class="border-bottom"></div>
                                    <a href="product-view.html"><img src="content/baner-img-14.png" alt="Product image"></a>
                                    <div class="product-caption">
                                        <div class="price">
                                            <span>$399.00</span>
                                        </div>
                                        <div class="inner">
                                            <h3 class="title"><a href="product-view.html" title="Mix Cady Collins Dresss">Mix Cady Collins Dresss</a></h3>
                                            <div class="cart-button">
                                                <a href="#" class="btn btn-primary">Add to cart</a>
                                                <a href="#" class="wishlist-link">Add to wishlist</a>
                                                <a href="#" class="compaire-link">Add to compare</a>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                </article>
                            </li>
                            <li>
                                <article>
                                    <div class="border-top"></div>
                                    <div class="border-left"></div>
                                    <div class="border-right"></div>
                                    <div class="border-bottom"></div>
                                    <a href="product-view.html"><img src="content/baner-img-15.png" alt="Product image"></a>
                                    <div class="product-caption">
                                        <div class="price">
                                            <span>$299.00</span>
                                        </div>
                                        <div class="inner">
                                            <h3 class="title"><a href="product-view.html" title="Caramel & Black Collared BODY Dress">Caramel & Black Collared BODY Dress</a></h3>
                                            <div class="cart-button">
                                                <a href="#" class="btn btn-primary">Add to cart</a>
                                                <a href="#" class="wishlist-link">Add to wishlist</a>
                                                <a href="#" class="compaire-link">Add to compare</a>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                </article>
                            </li>
                            <li>
                                <article>
                                    <div class="border-top"></div>
                                    <div class="border-left"></div>
                                    <div class="border-right"></div>
                                    <div class="border-bottom"></div>
                                    <a href="product-view.html"><img src="content/baner-img-16.png" alt="Product image"></a>
                                    <div class="product-caption">
                                        <div class="price">
                                            <span>$264.00</span>
                                        </div>
                                        <div class="inner">
                                            <h3 class="title"><a href="product-view.html" title="Mix Cady Collins Dresss">Mix Cady Collins Dresss</a></h3>
                                            <div class="cart-button">
                                                <a href="#" class="btn btn-primary">Add to cart</a>
                                                <a href="#" class="wishlist-link">Add to wishlist</a>
                                                <a href="#" class="compaire-link">Add to compare</a>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                </article>
                            </li>
                            <li>
                                <article>
                                    <div class="border-top"></div>
                                    <div class="border-left"></div>
                                    <div class="border-right"></div>
                                    <div class="border-bottom"></div>
                                    <a href="product-view.html"><img src="content/baner-img-17.png" alt="Product image"></a>
                                    <div class="product-caption">
                                        <div class="price">
                                            <span>$349.00</span>
                                        </div>
                                        <div class="inner">
                                            <h3 class="title"><a href="product-view.html" title="Caramel & Black Collared BODY Dress">Caramel & Black Collared BODY Dress</a></h3>
                                            <div class="cart-button">
                                                <a href="#" class="btn btn-primary">Add to cart</a>
                                                <a href="#" class="wishlist-link">Add to wishlist</a>
                                                <a href="#" class="compaire-link">Add to compare</a>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                </article>
                            </li>
                            <li>
                                <article>
                                    <div class="border-top"></div>
                                    <div class="border-left"></div>
                                    <div class="border-right"></div>
                                    <div class="border-bottom"></div>
                                    <a href="product-view.html"><img src="content/baner-img-18.png" alt="Product image"></a>
                                    <div class="product-caption">
                                        <div class="price">
                                            <span>$756.00</span>
                                        </div>
                                        <div class="inner">
                                            <h3 class="title"><a href="product-view.html" title="Mix Cady Collins Dresss">Mix Cady Collins Dresss</a></h3>
                                            <div class="cart-button">
                                                <a href="#" class="btn btn-primary">Add to cart</a>
                                                <a href="#" class="wishlist-link">Add to wishlist</a>
                                                <a href="#" class="compaire-link">Add to compare</a>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                </article>
                            </li>
                            <li>
                                <article>
                                    <div class="border-top"></div>
                                    <div class="border-left"></div>
                                    <div class="border-right"></div>
                                    <div class="border-bottom"></div>
                                    <a href="product-view.html"><img src="content/baner-img-19.png" alt="Product image"></a>
                                    <div class="product-caption">
                                        <div class="price">
                                            <span>$120.00</span>
                                        </div>
                                        <div class="inner">
                                            <h3 class="title"><a href="product-view.html" title="Caramel & Black Collared BODY Dress">Caramel & Black Collared BODY Dress</a></h3>
                                            <div class="cart-button">
                                                <a href="#" class="btn btn-primary">Add to cart</a>
                                                <a href="#" class="wishlist-link">Add to wishlist</a>
                                                <a href="#" class="compaire-link">Add to compare</a>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                </article>
                            </li>
                            <li>
                                <article>
                                    <div class="border-top"></div>
                                    <div class="border-left"></div>
                                    <div class="border-right"></div>
                                    <div class="border-bottom"></div>
                                    <a href="product-view.html"><img src="content/baner-img-20.png" alt="Product image"></a>
                                    <div class="product-caption">
                                        <div class="price">
                                            <span>$367.00</span>
                                        </div>
                                        <div class="inner">
                                            <h3 class="title"><a href="product-view.html" title="Mix Cady Collins Dresss">Mix Cady Collins Dresss</a></h3>
                                            <div class="cart-button">
                                                <a href="#" class="btn btn-primary">Add to cart</a>
                                                <a href="#" class="wishlist-link">Add to wishlist</a>
                                                <a href="#" class="compaire-link">Add to compare</a>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                </article>
                            </li>
                            <li>
                                <article>
                                    <div class="border-top"></div>
                                    <div class="border-left"></div>
                                    <div class="border-right"></div>
                                    <div class="border-bottom"></div>
                                    <a href="product-view.html" class="image"><img src="content/baner-img-21.png" alt="Product image"></a>
                                    <div class="product-caption">
                                        <div class="price">
                                            <span>$291.00</span>
                                        </div>
                                        <div class="inner">
                                            <h3 class="title"><a href="product-view.html" title="Caramel & Black Collared BODY Dress">Caramel & Black Collared BODY Dress</a></h3>
                                            <div class="cart-button">
                                                <a href="#" class="btn btn-primary">Add to cart</a>
                                                <a href="#" class="wishlist-link">Add to wishlist</a>
                                                <a href="#" class="compaire-link">Add to compare</a>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                </article>
                            </li>
                        </ul>
                        <div class="pagination-select visible-380">
                            <select>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>...</option>
                                <option>100</option>
                            </select>
                        </div>
                        <div class="pagination">
                            <ul>
                                <li><a href="#" class="prev">&lt;</a></li>
                                <li><a href="#" class="active">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li><a href="#">...</a></li>
                                <li><a href="#">100</a></li>
                                <li><a href="#" class="next">&gt;</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%@ include file="inc_footer.jsp" %> 

        <script src="js/localjquery.js"></script>
        <script src="js/jquery-ui.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/jquery.formstyler.js"></script>
        <script src="js/jquery.carouFredSel-6.2.0-packed.js"></script>
        <script src="js/jquery.touchSwipe.min.js"></script>
        <script src="js/jquery.cookie.js"></script>
        <script src="js/jquery.minicolors.js"></script>
        <script src="js/script.js"></script>
    </body>

</html>
