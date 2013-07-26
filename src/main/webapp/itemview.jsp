<%-- 
    Document   : itemview
    Created on : Jun 27, 2013, 11:58:27 PM
    Author     : Shehan Tis
--%>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="Models.Service" %>
<%@ page language="java" import="Models.DBCON" %>
<%@ page language="java" import="Models.Tour" %>
<%@ page language="java" import="Models.Sight" %>
<%@ page language="java" import="Models.SearchResultItem" %>
<% response.setContentType("text/html");%>
<%
    long searchID = Long.parseLong(request.getParameter("id"));
    DBCON ob = new DBCON();
    Connection con = null;
    PreparedStatement ps = null;
    con = ob.createConnection();
    Boolean contains = false;
    Boolean GEOContains = false;
    long _GEOID = 0;
    String itemCat = "";
    String searchServices = "SELECT * FROM trs_srilanka.sys_services where SVID=?;";
    String searchSight = "SELECT * FROM trs_srilanka.sys_sights where SID=?;";
    String searchTour = "SELECT * FROM trs_srilanka.sys_tours where TRID=?;";
    String buffer = "";
    String resultItem = "";
    ResultSet rsService = null;
    ResultSet rsSight = null;
    ResultSet rsTour = null;
    ResultSet rsGEO = null;
    SearchResultItem item = new SearchResultItem();
    Service serviceRec = new Service();
    Sight sightRec = new Sight();
    Tour tourRec = new Tour();
    
    try {

        if (!contains) {
            ps = con.prepareStatement(searchServices);
            ps.setLong(1, searchID);
            rsService = ps.executeQuery();
            if (rsService.next()) {
                itemCat = "Service";
                contains = true;
            }
        }
        if (!contains) {
            ps = con.prepareCall(searchSight);
            ps.setLong(1, searchID);
            rsSight = ps.executeQuery();
            if (rsSight.next()) {
                itemCat = "Sight";
                contains = true;
            }
        }
        if (!contains) {
            ps = con.prepareCall(searchTour);
            ps.setLong(1, searchID);
            rsTour = ps.executeQuery();
            if (rsTour.next()) {
                itemCat = "Tour";
                contains = true;
            }
        }

        if (itemCat == "Service") {
            serviceRec.setSVID(Long.parseLong(rsService.getString(1)));
            serviceRec.setCompanyname(rsService.getString(2));
            serviceRec.setProvidername(rsService.getString(3));
            serviceRec.setDescription(rsService.getString(4));
            serviceRec.setEmail(rsService.getString(5));
            serviceRec.setLandline(rsService.getString(6));
            serviceRec.setMobile(rsService.getString(7));
            serviceRec.setSkype(rsService.getString(8));
            serviceRec.setAddress(rsService.getString(9));
            serviceRec.setServicetype(rsService.getString(10));
            serviceRec.setLOCID(Long.parseLong(rsService.getString(11)));
            serviceRec.setGEOID(Long.parseLong(rsService.getString(12)));
            _GEOID = Long.parseLong(rsService.getString(12));
        } else if (itemCat == "Sight") {
            sightRec.setSID(Long.parseLong(rsSight.getString(1)));
            sightRec.setName(rsSight.getString(2));
            sightRec.setBrief(rsSight.getString(3));
            sightRec.setLandline(rsSight.getString(4));
            sightRec.setMobile(rsSight.getString(5));
            sightRec.setDescription(rsSight.getString(6));
            sightRec.setEntrance(rsSight.getString(7));
            sightRec.setAdult(rsSight.getString(8));
            sightRec.setChild(rsSight.getString(9));
            sightRec.setLOCID(Long.parseLong(rsSight.getString(10)));
            sightRec.setGEOID(Long.parseLong(rsSight.getString(11)));
            _GEOID = Long.parseLong(rsSight.getString(11));
        } else if (itemCat == "Tour") {
            tourRec.setTRID(Long.parseLong(rsTour.getString(1)));
            tourRec.setTitle(rsTour.getString(2));
            tourRec.setItinary(rsTour.getString(3));
            tourRec.setNoOfDays(rsTour.getString(4));
            tourRec.setAccomadationType(rsTour.getString(4));
            tourRec.setBasis(rsTour.getString(6));
            tourRec.setGEOID(Long.parseLong(rsTour.getString(7)));
            _GEOID = Long.parseLong(rsTour.getString(7));
        }
        if (itemCat == "Service") {
            item.setID(serviceRec.getSVID());
            item.setTitle(serviceRec.getCompanyname());
            item.setDescription(serviceRec.getDescription());
        } else if (itemCat == "Sight") {
            item.setID(sightRec.getSID());
            item.setTitle(sightRec.getName());
            item.setDescription(sightRec.getBrief());
        } else if (itemCat == "Tour") {
            item.setID(tourRec.getTRID());
            item.setTitle(tourRec.getTitle());
            item.setDescription(tourRec.getItinary());
        }
        
        String longitude = "";
        String latitude = "";
        String searchGEO = "SELECT * FROM trs_srilanka.sys_geolocation where GEOID=?";
        if (!GEOContains) {
            ps = con.prepareCall(searchGEO);
            ps.setLong(1, _GEOID);
            rsGEO = ps.executeQuery();
            if (rsGEO.next()) {
                longitude = rsGEO.getString(2);
                latitude = rsGEO.getString(3);
            }
        }
%>
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
           <%@ include file="inc_search.jsp" %> 
        </div>

        <div class="site-container">
            <div class="header-one-box">
                <ul id="header-one">
                    <li>
                        <img src="content/colomboNightLife.jpg" alt="Slider image">
                        <div class="slider-border"><div class="border"></div></div>
                        <div class="title">
                            <span>2013</span>
                            <h6>Colombo night life</h6>
                            <div class="slider-button-box">
                                <div class="btn-ads-container">
                                    <button class="btn-ads" type="button">
                                        <span class="flip-container">
                                            <span class="back">Now</span>
                                            <span class="front">View</span>
                                        </span>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <div class="site-container">
            <ul class="breadcrumb container-box">
                <li><a href="#">Home</a></li>
                <li class="active">Category</li>
            </ul>
        </div>
        
     
        
<%

        resultItem += "<div class='site-container'><div class='container entry-content'><div class='row'><div class='span12'>"+
                        "<h1 class='page-title'>"+item.getTitle()+"</h1>"+
                        "<div class='row product-viev'><div class='span4 image'>"+
                                "<img id='main-product-image' src='content/product-small-img-1.png' data-zoom-image='content/product-big-img-1.png' alt=''>"+
                                "<div id='product-images'>"+
                                    "<a href='#' data-image='content/product-small-img-1.png' data-zoom-image='content/product-big-img-1.png'>"+
                                        "<img src='content/product-gal-1.png' alt=''></a>"+
                                    "<a href='#' data-image='content/product-small-img-2.png' data-zoom-image='content/product-big-img-2.png'>"+
                                        "<img src='content/product-gal-2.png' alt=''></a>"+
                                "</div>"+
                                "<div class='carousel-prev product-prev'>Prev</div>"+
                                "<div class='carousel-next product-next'>Prev</div></div>"+
                            "<div class='span8 product-caption'><div class='row'><div class='top span8'>"+
                                        "<div class='stars'></div> <a href='#' class='count-review'>5 rewiew(s)</a> | <a href='#' class='add-review'>Add your review</a>"+
                                    "</div><p class='span8'>"+
                                    item.getDescription()+
                                    "</p>"+
                                "</div>"+
                                "<hr>"+
                                "<div class='row product-options-one'>"+
                                    "<div class='span3 pull-left'>"+
                                        "<span class='availabillity'>Availabillity:</span> <span class='in-stock'>In stock</span><br>"+
                                        "<span class='sku'>Sku:</span> <span class='sku-status'>Candles Ov</span>"+
                                    "</div>"+
                                    "<div class='span5 row pull-right'>"+
                                        "<select class='first'>"+
                                            "<option>Select a size</option>"+
                                            "<option>12</option>"+
                                            "<option>14</option>"+
                                            "<option>16</option>"+
                                            "<option>18</option>"+
                                        "</select>"+
                                        "<select>"+
                                            "<option>Chose a material</option>"+
                                            "<option>Cotton</option>"+
                                            "<option>Polyester</option>"+
                                        "</select>"+
                                    "</div>"+
                                "</div>"+
                                "<div class='clearfix'></div>"+
                                "<hr>"+
                                "<div class='row product-price-box'>"+
                                    "<div class='span3 pull-left'>"+
                                        "<div class='price'>"+
                                            "<div class='price-old'>$550.00</div>"+
                                            "<div class='price-new'>$399.00</div>"+
                                        "</div>"+
                                    "</div>"+
                                    "<div class='span5 pull-right product-button'>"+
                                        "<div class='pull-left'>"+
                                            "<a href='#' class='wishlist-link'>Add to wishlist</a><br>"+
                                            "<a href='#' class='compaire-link'>Add to compaire</a>"+
                                        "</div>"+
                                        "<a href='#' class='btn pull-right'>Update Information</a>"+
                                    "</div>"+
                                "</div>"+
                            "</div>"+
                            "<div class='clearfix'></div>"+

                            "<div class='span12 product-tab'>"+
                                "<ul class='nav nav-tabs' id='product_tab'>"+
                                    "<li class='active'><a href='#description'>Description</a></li>"+
                                    "<li><a href='#reviews'>Reviews</a></li>"+
                                    //"<li><a href='#custom-tab'>G</a></li>"+
                                "</ul>"+

                                "<div class='tab-content'>"+
                                    "<div class='tab-pane active' id='description'>"+
                                        "<h3>Description</h3>"+
                                        "<p>"+
                                            item.getDescription()+
                                        "</p>"+
                                        "<h3>Map</h3>"+
                                        "<iframe width='100%' height='350' frameborder='0' scrolling='no' marginheight='0' marginwidth='0' src='https://maps.google.com/maps?q="+latitude+","+longitude+"&amp;ie=UTF8&amp;t=m&amp;z=14&amp;ll="+latitude+","+longitude+"&amp;output=embed'></iframe>"+
                                    "</div>"+
                                    "<div class='tab-pane product-reviews' id='reviews'>"+
                                        "<h3>Reviews</h3>"+
                                        "<ul>"+
                                            "<li>"+
                                                "<div class='title'>"+
                                                    "<span>Mike Example,</span> <time datetime='2013-11-03'>03.11.2013</time>"+
                                                "</div>"+
                                                "<div class='review-rating'>"+
                                                    "<span>Rating <span class='stars6'></span></span> <span class='separator'>|</span>"+
                                                "</div>"+
                                                "<p>"+
                                                    "Suspendisse at placerat turpis. Duis luctus erat vel magna pharetra aliquet. Maecenas tincidunt feugiat ultricies. Phasellus et dui risus. Vestibulum adipiscing, eros quis lobortis dictum.  It enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "+
                                                "</p>"+
                                            "</li>"+
                                       "</ul>"+
                                        "<div class='profuct-form-reviews'>"+
                                            "<h3>Write Your Own Review</h3>"+
                                            "<form action='#'>"+
                                                "<div class='rating-input'>"+
                                                    "<span class='quality'>Quality <span class='required'>*</span></span>"+
                                                    "<label><input type='radio' name='quality' value='1'><br>1</label>"+
                                                    "<label><input type='radio' name='quality' value='2'><br>2</label>"+
                                                    "<label><input type='radio' name='quality' value='3'><br>3</label>"+
                                                    "<label><input type='radio' name='quality' value='4'><br>4</label>"+
                                                    "<label><input type='radio' name='quality' value='5'><br>5</label>"+
                                                    
                                                "</div>"+
                                                "<div class='left'>"+
                                                    "<label>Nickname: <span class='required'>*</span></label>"+
                                                    "<input type='text'>"+
                                                    //"<label>Summary of Your Review: <span class='required'>*</span></label>"+
                                                    //"<input type='text'>"+
                                                    "<label>Review: <span class='required'>*</span></label>"+
                                                    "<textarea></textarea>"+
                                                    "<div class='note'>Note: HTML is not translated!</div>"+
                                                "</div>"+
                                                //"<div class='left'>"+
                                                    
                                                //"</div>"+
                                                "<div class='clearfix'></div>"+
                                                "<input type='submit' value='Submit' class='btn btn-primary'>"+
                                            "</form>"+
                                            "<div class='clearfix'></div>"+
                                        "</div>"+
                                    "</div>"+
                               "</div>"+
                                "<div class='carousel-grid'>"+
                                    "<div class='title-one'><span>Related Products</span><div class='carousel-pager one pull-right'></div></div>"+
                                    "<ul class='product-grid'>"+
                                        
                                        "<li>"+
                                            "<article>"+
                                                "<div class='border-top'></div>"+
                                                "<div class='border-left'></div>"+
                                                "<div class='border-right'></div>"+
                                                "<div class='border-bottom'></div>"+
                                                "<a href='product-view.html'><img src='content/baner-img-6.png' alt=''></a>"+
                                                "<div class='product-caption'>"+
                                                    "<div class='price'>"+
                                                        "<span>$399.00</span>"+
                                                    "</div>"+
                                                    "<div class='inner'>"+
                                                        "<h3 class='title'><a href='product-view.html' title='Caramel & Black Collared BODY Dress'>Caramel & Black Collared BODY Dress</a></h3>"+
                                                        "<div class='cart-button'>"+
                                                            "<a href='#' class='btn btn-primary'>Add to cart</a>"+
                                                            "<a href='#' class='wishlist-link'>Add to wishlist</a>"+
                                                            "<a href='#' class='compaire-link'>Add to compare</a>"+
                                                            "<div class='clearfix'></div>"+
                                                        "</div>"+
                                                    "</div>"+
                                                "</div>"+
                                            "</article>"+
                                        "</li>"+
                                        
                                    "</ul>"+
                                    "<div class='carousel-prev'>&lt;</div>"+
                                    "<div class='carousel-next'>&gt;</div>"+
                                "</div>"+
                            "</div>"+

                        "</div>"+
                    "</div>"+
                "</div>"+
            "</div>"+
        "</div>";

        buffer += resultItem;

        //request.setAttribute("resultList", buffer);
        //request.getRequestDispatcher("searchresults.jsp").forward(request, response);
        
        
    } catch (Exception e) {
        out.println("Exception is ;" + e);
    } finally {
        if (ps != null) {
            ps.close();
        }

        if (con != null) {
            con.close();
        }
    }
%>

        <% out.println(buffer); %>
        
        <!--<div class="site-container">
            <div class="container entry-content">
                <div class="row">
                    <div class="span12">
                        <h1 class="page-title">Mix Cady Collins Dress</h1>
                        <div class="row product-viev">
                            <div class="span4 image">
                                <img id="main-product-image" src="content/product-small-img-1.png" data-zoom-image="content/product-big-img-1.png" alt="">
                                <div id="product-images">
                                    <a href="#" data-image="content/product-small-img-1.png" data-zoom-image="content/product-big-img-1.png">
                                        <img src="content/product-gal-1.png" alt="">
                                    </a>
                                    <a href="#" data-image="content/product-small-img-2.png" data-zoom-image="content/product-big-img-2.png">
                                        <img src="content/product-gal-2.png" alt="">
                                    </a>
                                    <a href="#" data-image="content/product-small-img-3.png" data-zoom-image="content/product-big-img-3.png">
                                        <img src="content/product-gal-3.png" alt="">
                                    </a>
                                    <a href="#" data-image="content/product-small-img-4.png" data-zoom-image="content/product-big-img-4.png">
                                        <img src="content/product-gal-4.png" alt="">
                                    </a>
                                </div>
                                <div class="carousel-prev product-prev">Prev</div>
                                <div class="carousel-next product-next">Prev</div>
                            </div>
                            <div class="span8 product-caption">
                                <div class="row">
                                    <div class="top span8">
                                        <div class="stars"></div> <a href="#" class="count-review">5 rewiew(s)</a> | <a href="#" class="add-review">Add your review</a>
                                    </div>
                                    <p class="span8">
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur nec posuere odio. 
                                        Phasellus odio lectus, ultrices non pretium ac, mollis id elit. Fusce tempor tellus non 
                                        felis tempus vestibulum. Donec molestie purus sem. Suspendisse a neque quam. Etiam 
                                        mollis volutpat odio, id euismod justo gravida a. Aliquam erat volutpat. Phasellus 
                                        faucibus venenatis lorem, vitae commodo elit pretium et.
                                    </p>
                                </div>
                                <hr>
                                <div class="row product-options-one">
                                    <div class="span3 pull-left">
                                        <span class="availabillity">Availabillity:</span> <span class="in-stock">In stock</span><br>
                                        <span class="sku">Sku:</span> <span class="sku-status">Candles Ov</span>
                                    </div>
                                    <div class="span5 row pull-right">
                                        <select class="first">
                                            <option>Select a size</option>
                                            <option>12</option>
                                            <option>14</option>
                                            <option>16</option>
                                            <option>18</option>
                                        </select>
                                        <select>
                                            <option>Chose a material</option>
                                            <option>Cotton</option>
                                            <option>Polyester</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                                <hr>
                                <div class="row product-price-box">
                                    <div class="span3 pull-left">
                                        <div class="price">
                                            <div class="price-old">$550.00</div>
                                            <div class="price-new">$399.00</div>
                                        </div>
                                    </div>
                                    <div class="span5 pull-right product-button">
                                        <div class="pull-left">
                                            <a href="#" class="wishlist-link">Add to wishlist</a><br>
                                            <a href="#" class="compaire-link">Add to compaire</a>
                                        </div>
                                        <a href="#" class="btn btn-primary pull-right">Add to Cart</a>
                                    </div>
                                </div>
                            </div>
                            <div class="clearfix"></div>

                            <div class="span12 product-tab">
                                <ul class="nav nav-tabs" id="product_tab">
                                    <li class="active"><a href="#description">Description</a></li>
                                    <li><a href="#reviews">Reviews</a></li>
                                    <li><a href="#custom-tab">Custom Tab</a></li>
                                </ul>

                                <div class="tab-content">
                                    <div class="tab-pane active" id="description">
                                        <h3>Description</h3>
                                        <p>
                                            Suspendisse at placerat turpis. Duis luctus erat vel magna pharetra aliquet. Maecenas tincidunt 
                                            feugiat ultricies. Phasellus et dui risus. Vestibulum adipiscing, eros quis lobortis dictum. Etiam 
                                            mollis volutpat odio, id euismod justo gravida a. Aliquam erat volutpat. Phasellus faucibus venenatis 
                                            lorem, vitae commodo elit pretium et. Duis rhoncus lobortis congue. Vestibulum et purus dui, vel porta 
                                            lectus. Sed vulputate pulvinar adipiscing.
                                        </p>
                                        <ul>
                                            <li>She was walking to the mall.</li>
                                            <li>Ted might eat the cake.</li>
                                            <li>You must go right now.</li>
                                            <li>Words were spoken.</li>
                                            <li>The teacher is writing a report.</li>
                                        </ul>
                                        <p>
                                            Here are some verb phrase examples where the verb phrase is the predicate of a sentence. In this case, 
                                            the verb phrase consists of the main verb plus any auxiliary, or helping, verbs. Nulla nec velit. 
                                            Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.
                                        </p>
                                        <ol>
                                            <li>Shipping & Delivery.</li>
                                            <li>Privacy & Security.</li>
                                            <li>Returns & Replacements.</li>
                                            <li>Payment, Pricing & Promotions.</li>
                                            <li>Viewing Orders.</li>
                                        </ol>
                                        <p>
                                            Next are some verb phrase examples of verb phrases where the phrase has a single function which means it 
                                            can act like an adverb or an adjective. The phrase would include the verb and any modifiers, complements, 
                                            or objects. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis.  
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur nec posuere odio. Proin vel ultrices erat. 
                                        </p>
                                    </div>
                                    <div class="tab-pane product-reviews" id="reviews">
                                        <h3>Reviews</h3>
                                        <ul>
                                            <li>
                                                <div class="title">
                                                    <span>Mike Example,</span> <time datetime="2013-11-03">03.11.2013</time>
                                                </div>
                                                <div class="review-rating">
                                                    <span>Quality <span class="stars"></span></span> <span class="separator">|</span>
                                                    <span>Price <span class="stars"></span></span>
                                                </div>
                                                <p>
                                                    Suspendisse at placerat turpis. Duis luctus erat vel magna pharetra aliquet. Maecenas tincidunt feugiat 
                                                    ultricies. Phasellus et dui risus. Vestibulum adipiscing, eros quis lobortis dictum.  It enim ad minim 
                                                    veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
                                                </p>
                                            </li>
                                        </ul>
                                        <div class="profuct-form-reviews">
                                            <h3>Write Your Own Review</h3>
                                            <form action="#">
                                                <div class="rating-input">
                                                    <span class="quality">Quality <span class="required">*</span></span>
                                                    <label><input type="radio" name="quality" value="1"><br>1</label>
                                                    <label><input type="radio" name="quality" value="2"><br>2</label>
                                                    <label><input type="radio" name="quality" value="3"><br>3</label>
                                                    <label><input type="radio" name="quality" value="4"><br>4</label>
                                                    <label><input type="radio" name="quality" value="5"><br>5</label>
                                                    <div class="visible-440"></div>
                                                    <span class="price">Price <span class="required">*</span></span>
                                                    <label><input type="radio" name="price" value="1"><br>1</label>
                                                    <label><input type="radio" name="price" value="2"><br>2</label>
                                                    <label><input type="radio" name="price" value="3"><br>3</label>
                                                    <label><input type="radio" name="price" value="4"><br>4</label>
                                                    <label><input type="radio" name="price" value="5"><br>5</label>
                                                </div>
                                                <div class="left">
                                                    <label>Nickname: <span class="required">*</span></label>
                                                    <input type="text">
                                                    <label>Summary of Your Review: <span class="required">*</span></label>
                                                    <input type="text">
                                                </div>
                                                <div class="right">
                                                    <label>Review: <span class="required">*</span></label>
                                                    <textarea></textarea>
                                                    <div class="note">Note: HTML is not translated!</div>
                                                </div>
                                                <div class="clearfix"></div>
                                                <input type="submit" value="Submit" class="btn btn-primary">
                                            </form>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="custom-tab">
                                        <h3>Custom Tab</h3>
                                        <p>
                                            Suspendisse at placerat turpis. Duis luctus erat vel magna pharetra aliquet. Maecenas tincidunt 
                                            feugiat ultricies. Phasellus et dui risus. Vestibulum adipiscing, eros quis lobortis dictum. Etiam 
                                            mollis volutpat odio, id euismod justo gravida a. Aliquam erat volutpat. Phasellus faucibus venenatis 
                                            lorem, vitae commodo elit pretium et. Duis rhoncus lobortis congue. Vestibulum et purus dui, vel porta 
                                            lectus. Sed vulputate pulvinar adipiscing.
                                        </p>
                                        <p>
                                            Here are some verb phrase examples where the verb phrase is the predicate of a sentence. In this case, 
                                            the verb phrase consists of the main verb plus any auxiliary, or helping, verbs. Nulla nec velit. 
                                            Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.
                                        </p>
                                        <p>
                                            Next are some verb phrase examples of verb phrases where the phrase has a single function which means it 
                                            can act like an adverb or an adjective. The phrase would include the verb and any modifiers, complements, 
                                            or objects. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis.  
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur nec posuere odio. Proin vel ultrices erat. 
                                        </p>
                                    </div>
                                </div>
                                <div class="carousel-grid">
                                    <div class="title-one"><span>Related Products</span><div class="carousel-pager one pull-right"></div></div>
                                    <ul class="product-grid">
                                        
                                        <li>
                                            <article>
                                                <div class="border-top"></div>
                                                <div class="border-left"></div>
                                                <div class="border-right"></div>
                                                <div class="border-bottom"></div>
                                                <a href="product-view.html"><img src="content/baner-img-6.png" alt=""></a>
                                                <div class="product-caption">
                                                    <div class="price">
                                                        <span>$399.00</span>
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
                                    <div class="carousel-prev">&lt;</div>
                                    <div class="carousel-next">&gt;</div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>-->

        <%@ include file="inc_footer.jsp" %> 	
        <script src="js/localjquery.js"></script>
        <script src="js/jquery-ui.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/jquery.formstyler.js"></script>
        <script src="js/jquery.carouFredSel-6.2.0-packed.js"></script>
        <script src="js/jquery.touchSwipe.min.js"></script>
        <script src="js/jquery.elevateZoom-2.5.5.min.js"></script>
        <script src="js/jquery.cookie.js"></script>
        <script src="js/jquery.minicolors.js"></script>
        <script src="js/script.js"></script>
    </body>

</html>
