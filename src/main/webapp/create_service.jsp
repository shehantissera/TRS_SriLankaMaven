<%-- 
    Document   : create_service
    Created on : Jun 27, 2013, 11:55:15 PM
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
                <li class="active">Create an Service</li>
            </ul>
        </div>
        <div class="site-container">
            <div class="container entry-content">
                <div class="row">
                    <div class="span12">
                        <h1 class="page-title">Create a Service</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="span6 login">
                        <h2>New Service</h2>
                        <p>Enter your information in the fields given below. The fields which contain <span class="required">*</span> are the required fields.</p>
                        <form name="insertServiceForm" method="post" action="ServiceController">

                            <label>Company name: <span class="required">*</span></label>
                            <input name="companyname" type="text" maxlength=100 required placeholder="Enter the name of your company..." title="Company name cannot be empty.">

                            <label>Provider name: <span class="required">*</span></label>
                            <input name="providername" type="text" maxlength=100 required placeholder="Enter your name..." title="Name cannot be empty.">

                            <label>Description: <span class="required">*</span></label>
                            <textarea name="description" required="required" maxlength=999 placeholder="Description should be less than 1000 characters"></textarea>

                            <label>Company Email Address: <span class="required">*</span></label>
                            <input name="email" type="email" maxlength=50 required placeholder="ex: some_one@yahoo.com" title="Please provide an valide email address.">

                            <label>Landline: <span class="required">*</span></label>
                            <input name="landline" type="number" required maxlength=20  placeholder="ex: 94312239524">

                            <label>Mobile: <span class="required">*</span></label>
                            <input name="mobile" type="number" required maxlength=20  placeholder="ex: 94770727245">

                            <label>Skype name:</label>
                            <input name="skype" type="text" maxlength=100 required placeholder="Skype name...">

                            <label>Address:</label>
                            <textarea name="address"  maxlength=999 placeholder="Description should be less than 1000 characters"></textarea>

                            <label>Service type:</label>
                            <select name="servicetype">
                                <option disabled selected value="">Please Select</option>
                                <option>Taxi service</option>
                                <option>Accommodation</option>
                                <option>Other</option>
                            </select>

                            <label>Location:</label>
                            <select>
                                <option disabled selected value="">Please Select</option>
                                <option>Aaland Islands</option>
                                <option>Afghanistan</option>
                            </select>

                            <label>Category: <span class="required">*</span></label>
                            <%@ page language="java" import="Models.DBCON" %>
                            <%@ page language="java" import="java.sql.*" %>
                            <%
                                DBCON ob = new DBCON();
                                Connection con = null;
                                PreparedStatement ps = null;
                                ResultSet interests = null;
                                con = ob.createConnection();
                                String categories = "";
                                int count = 1;
                                String searchINTEREST = "SELECT * FROM trs_srilanka.sys_userinterests ORDER BY IN_type ASC";

                                ps = con.prepareStatement(searchINTEREST);
                                interests = ps.executeQuery();
                                while (interests.next()) {
                                    categories += "<label class='checkbox inline'><input type='checkbox' id='inlineCheckbox"+count+"' value='"+interests.getString(2)+"'>"+interests.getString(2)+"</label>";
                                    count++;
                                }
                                out.println(categories);
                            %>
                            
                            <br><br>
                            
                            <label>Longitude: <span class="required">*</span></label>
                            <input name="longitude" type="number" step="any" required title="Longitude can contain only the range from -180 to 180">

                            <label>Latitude: <span class="required">*</span></label>
                            <input name="latitude" type="number" step="any" required title="Latitude can contain only the range from -90 to 90">

                            <label>Images:</label>
                            <input type="file" multiple="true" name="imageuploader"/>


                            <br><br>

                            <input name="addService" type="submit" value="Create Service" class="btn btn-primary">

                            <input type="reset" value="Clear" class="btn btn-primary">

                            <div class="required-field pull-right">* Required Field</div>

                            <div class="clearfix"></div>
                        </form>
                    </div>
                    <div class="span6 new-costumers">
                        <h2>New Service</h2>
                        <p>
                            By creating registering yourself as an service, you will be able to display information about the service you provide to the people who can you this service. 
                            You are capable of entering various types of information so that the user can get most of the information in one place. Services can varie from each other according to the service you provide ex: Accomadation, Taxi services
                            <br><br>Please create your account and continue using this information system.
                        </p>
                        
                         <iframe src="gmaps.jsp" width="100%" height="910" seamless></iframe>
                        
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
