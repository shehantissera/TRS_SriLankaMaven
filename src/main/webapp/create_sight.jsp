<%-- 
    Document   : create_sight
    Created on : Jun 27, 2013, 11:56:51 PM
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
                <li class="active">Create a Sight</li>
            </ul>
        </div>
        <div class="site-container">
            <div class="container entry-content">
                <div class="row">
                    <div class="span12">
                        <h1 class="page-title">Create a Sight</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="span6 login">
                        <h2>New Sight</h2>
                        <p>Enter your information in the fields given below. The fields which contain <span class="required">*</span> are the required fields.</p>
                        <form name="insertSightForm" method="post" action="SightsController">

                            <label>Name: <span class="required">*</span></label>
                            <input name="name" type="text" maxlength=100 required title="The name should be filled." placeholder="Enter the sight name...">

                            <label>Brief: <span class="required">*</span></label>
                            <textarea name="brief" required="required" maxlength=999 placeholder="Brief should be less than 1000 characters"></textarea>

                            <label>Landline:</label>
                            <input name="landline" type="number" maxlength=20  placeholder="ex: 94789452612">

                            <label>Mobile:</label>
                            <input name="mobile" type="number" maxlength=20  placeholder="ex: 94777897898">

                            <label>Description: <span class="required">*</span></label>
                            <textarea name="description" required="required" maxlength=999 placeholder="Description should be less than 10000 characters"></textarea>

                            <label>Entrance type:</label>
                            <select name="entrancetype">
                                <option disabled selected value="">Please Select</option>
                                <option>Free</option>
                                <option>Paid</option>
                            </select>

                            <label>Price per adult:</label>
                            <input name="adult" type="number" maxlength=20  placeholder="ex: 200">

                            <label>Price per child:</label>
                            <input name="child" type="number" maxlength=20  placeholder="ex: 125">

                            <label>Location:</label>
                            <select name="location">
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
                                    categories += "<label class='checkbox inline'><input type='checkbox' name='categories' id='inlineCheckbox"+count+"' value='"+interests.getString(1)+"'>"+interests.getString(2)+"</label>";
                                    count++;
                                }
                                out.println(categories);
                            %>
                            
                            <br><br>
                            <!--<table>
                                <tr>
                                    <td><label class="checkbox inline"><input type="checkbox" id="inlineCheckbox1" value="option1"> Category 1</label></td>
                                    <td><label class="checkbox inline"><input type="checkbox" id="inlineCheckbox2" value="option2"> Category 2</label></td>
                                    <td><label class="checkbox inline"><input type="checkbox" id="inlineCheckbox3" value="option3"> Category 3</label></td>
                                </tr>
                                <tr>
                                    <td><label class="checkbox inline"><input type="checkbox" id="inlineCheckbox1" value="option1"> Category 1</label></td>
                                    <td><label class="checkbox inline"><input type="checkbox" id="inlineCheckbox2" value="option2"> Category 2</label></td>
                                    <td><label class="checkbox inline"><input type="checkbox" id="inlineCheckbox3" value="option3"> Category 3</label></td>
                                </tr>
                            </table>-->
                            
                           

                            <br><br>

                            <label>Longitude: <span class="required">*</span></label>
                            <input name="longitude" type="number" step="any" required title="Longitude can contain only the range from -180 to 180">

                            <label>Latitude: <span class="required">*</span></label>
                            <input name="latitude" type="number" step="any" required title="Latitude can contain only the range from -90 to 90">

                            <label>Images:</label>
                            <input type="file" multiple="true" name="imageuploader"/>

                            <br><br>

                            <input name="addSight" type="submit" value="Create Sight" class="btn btn-primary">

                            <input type="reset" value="Clear" class="btn btn-primary">

                            <div class="required-field pull-right">* Required Field</div>

                            <div class="clearfix"></div>
                        </form>
                    </div>
                    <div class="span6 new-costumers">
                        <h2>New Sight</h2>
                        <p>A sight can be a location which can be an attraction to the forigners and people who find it interesting. If you think you should share the areas which you find it interesting, add those information over here and add it as an new sight and let others know.
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
