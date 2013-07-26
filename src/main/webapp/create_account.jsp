<%-- 
    Document   : create_account
    Created on : Jun 27, 2013, 11:54:25 PM
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
            <%@ include file="inc_search.jsp" %> 
        </div>
        <div class="site-container">
            <div class="header-six-box">

            </div>
        </div>
        <div class="site-container">
            <ul class="breadcrumb container-box">
                <li><a href="#">Home</a></li>
                <li class="active">Create an Account</li>
            </ul>
        </div>
        <div class="site-container">
            <div class="container entry-content">
                <div class="row">
                    <div class="span12">
                        <h1 class="page-title">Create an Account</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="span6 login">
                        <h2>New Account</h2>
                        <p>Enter your information in the fields given below. The fields which contain <span class="required">*</span> are the required fields.</p>
                        <form name="insertUserForm" method="post" action="UserController">
                            <label>First name: <span class="required">*</span></label>
                            <input name="fname" type="text" maxlength=100 required placeholder="Enter your First name..." title="First name cannot be empty.">

                            <label>Last name: <span class="required">*</span></label>
                            <input name="lname" type="text" maxlength=100 required placeholder="Enter your Second name..." title="Last name cannot be empty.">

                            <label>Age range:</label>
                            <select name="ageRange">
                                <option selected>Please Select</option>
                                <option value="10-25">18-25</option>
                                <option value="26-35">26-35</option>
                                <option value="36-45">36-45</option>
                                <option value="46-55">46-55</option>
                                <option value="56 and above">56 and above</option>
                            </select>

                            <label>Gender:</label><br>
                            <label class="radio">
                                <input type="radio" name="gender" id="optionsRadios1" value="male" required>
                                Male
                            </label>
                            <label class="radio">
                                <input type="radio" name="gender" id="optionsRadios2" value="female">
                                Female
                            </label>
                            <br>

                            <label>Email Address: <span class="required">*</span></label>
                            <input name="email" type="email" maxlength=50 required placeholder="ex: some_one@yahoo.com" title="Please provide an valide email address.">

                            <label>Password: <span class="required">*</span></label>
                            <input name="passwordtemp" type="password" required placeholder="Password...">

                            <label>Re-Password: <span class="required">*</span></label>
                            <input name="password" type="password" required placeholder="Repeat your password...">

                            <label>Country:</label>
                            <select name="country">
                                <option disabled selected value="">Please Select</option>
                                <option>Afghanistan</option>
                                <option>Akrotiri</option>
                                <option>Albania</option>
                                <option>Algeria</option>
                                <option>American Samoa</option>
                                <option>Andorra</option>
                                <option>Angola</option>
                                <option>Anguilla</option>
                                <option>Antarctica</option>
                                <option>Antigua and Barbuda</option>
                                <option>Argentina</option>
                                <option>Armenia</option>
                                <option>Aruba</option>
                                <option>Ashmore and Cartier Islands</option>
                                <option>Australia</option>
                                <option>Austria</option>
                                <option>Azerbaijan</option>
                                <option>Bahamas, The</option>
                                <option>Bahrain</option>
                                <option>Bangladesh</option>
                                <option>Barbados</option>
                                <option>Bassas da India</option>
                                <option>Belarus</option>
                                <option>Belgium</option>
                                <option>Belize</option>
                                <option>Benin</option>
                                <option>Bermuda</option>
                                <option>Bhutan</option>
                                <option>Bolivia</option>
                                <option>Bosnia and Herzegovina</option>
                                <option>Botswana</option>
                                <option>Bouvet Island</option>
                                <option>Brazil</option>
                                <option>British Indian Ocean Territory</option>
                                <option>British Virgin Islands</option>
                                <option>Brunei</option>
                                <option>Bulgaria</option>
                                <option>Burkina Faso</option>
                                <option>Burma</option>
                                <option>Burundi</option>
                                <option>Cambodia</option>
                                <option>Cameroon</option>
                                <option>Canada</option>
                                <option>Cape Verde</option>
                                <option>Cayman Islands</option>
                                <option>Central African Republic</option>
                                <option>Chad</option>
                                <option>Chile</option>
                                <option>China</option>
                                <option>Christmas Island</option>
                                <option>Clipperton Island</option>
                                <option>Cocos (Keeling) Islands</option>
                                <option>Colombia</option>
                                <option>Comoros</option>
                                <option>Congo, Democratic Republic of the</option>
                                <option>Congo, Republic of the</option>
                                <option>Cook Islands</option>
                                <option>Coral Sea Islands</option>
                                <option>Costa Rica</option>
                                <option>Cote d'Ivoire</option>
                                <option>Croatia</option>
                                <option>Cuba</option>
                                <option>Cyprus</option>
                                <option>Czech Republic</option>
                                <option>Denmark</option>
                                <option>Dhekelia</option>
                                <option>Djibouti</option>
                                <option>Dominica</option>
                                <option>Dominican Republic</option>
                                <option>Ecuador</option>
                                <option>Egypt</option>
                                <option>El Salvador</option>
                                <option>Equatorial Guinea</option>
                                <option>Eritrea</option>
                                <option>Estonia</option>
                                <option>Ethiopia</option>
                                <option>Europa Island</option>
                                <option>Falkland Islands (Islas Malvinas)</option>
                                <option>Faroe Islands</option>
                                <option>Fiji</option>
                                <option>Finland</option>
                                <option>France</option>
                                <option>French Guiana</option>
                                <option>French Polynesia</option>
                                <option>French Southern and Antarctic Lands</option>
                                <option>Gabon</option>
                                <option>Gambia, The</option>
                                <option>Gaza Strip</option>
                                <option>Georgia</option>
                                <option>Germany</option>
                                <option>Ghana</option>
                                <option>Gibraltar</option>
                                <option>Glorioso Islands</option>
                                <option>Greece</option>
                                <option>Greenland</option>
                                <option>Grenada</option>
                                <option>Guadeloupe</option>
                                <option>Guam</option>
                                <option>Guatemala</option>
                                <option>Guernsey</option>
                                <option>Guinea</option>
                                <option>Guinea-Bissau</option>
                                <option>Guyana</option>
                                <option>Haiti</option>
                                <option>Heard Island and McDonald Islands</option>
                                <option>Holy See (Vatican City)</option>
                                <option>Honduras</option>
                                <option>Hong Kong</option>
                                <option>Hungary</option>
                                <option>Iceland</option>
                                <option>India</option>
                                <option>Indonesia</option>
                                <option>Iran</option>
                                <option>Iraq</option>
                                <option>Ireland</option>
                                <option>Isle of Man</option>
                                <option>Israel</option>
                                <option>Italy</option>
                                <option>Jamaica</option>
                                <option>Jan Mayen</option>
                                <option>Japan</option>
                                <option>Jersey</option>
                                <option>Jordan</option>
                                <option>Juan de Nova Island</option>
                                <option>Kazakhstan</option>
                                <option>Kenya</option>
                                <option>Kiribati</option>
                                <option>Korea, North</option>
                                <option>Korea, South</option>
                                <option>Kuwait</option>
                                <option>Kyrgyzstan</option>
                                <option>Laos</option>
                                <option>Latvia</option>
                                <option>Lebanon</option>
                                <option>Lesotho</option>
                                <option>Liberia</option>
                                <option>Libya</option>
                                <option>Liechtenstein</option>
                                <option>Lithuania</option>
                                <option>Luxembourg</option>
                                <option>Macau</option>
                                <option>Macedonia</option>
                                <option>Madagascar</option>
                                <option>Malawi</option>
                                <option>Malaysia</option>
                                <option>Maldives</option>
                                <option>Mali</option>
                                <option>Malta</option>
                                <option>Marshall Islands</option>
                                <option>Martinique</option>
                                <option>Mauritania</option>
                                <option>Mauritius</option>
                                <option>Mayotte</option>
                                <option>Mexico</option>
                                <option>Micronesia, Federated States of</option>
                                <option>Moldova</option>
                                <option>Monaco</option>
                                <option>Mongolia</option>
                                <option>Montserrat</option>
                                <option>Morocco</option>
                                <option>Mozambique</option>
                                <option>Namibia</option>
                                <option>Nauru</option>
                                <option>Navassa Island</option>
                                <option>Nepal</option>
                                <option>Netherlands</option>
                                <option>Netherlands Antilles</option>
                                <option>New Caledonia</option>
                                <option>New Zealand</option>
                                <option>Nicaragua</option>
                                <option>Niger</option>
                                <option>Nigeria</option>
                                <option>Niue</option>
                                <option>Norfolk Island</option>
                                <option>Northern Mariana Islands</option>
                                <option>Norway</option>
                                <option>Oman</option>
                                <option>Pakistan</option>
                                <option>Palau</option>
                                <option>Panama</option>
                                <option>Papua New Guinea</option>
                                <option>Paracel Islands</option>
                                <option>Paraguay</option>
                                <option>Peru</option>
                                <option>Philippines</option>
                                <option>Pitcairn Islands</option>
                                <option>Poland</option>
                                <option>Portugal</option>
                                <option>Puerto Rico</option>
                                <option>Qatar</option>
                                <option>Reunion</option>
                                <option>Romania</option>
                                <option>Russia</option>
                                <option>Rwanda</option>
                                <option>Saint Helena</option>
                                <option>Saint Kitts and Nevis</option>
                                <option>Saint Lucia</option>
                                <option>Saint Pierre and Miquelon</option>
                                <option>Saint Vincent and the Grenadines</option>
                                <option>Samoa</option>
                                <option>San Marino</option>
                                <option>Sao Tome and Principe</option>
                                <option>Saudi Arabia</option>
                                <option>Senegal</option>
                                <option>Serbia and Montenegro</option>
                                <option>Seychelles</option>
                                <option>Sierra Leone</option>
                                <option>Singapore</option>
                                <option>Slovakia</option>
                                <option>Slovenia</option>
                                <option>Solomon Islands</option>
                                <option>Somalia</option>
                                <option>South Africa</option>
                                <option>South Georgia and the South Sandwich Islands</option>
                                <option>Spain</option>
                                <option>Spratly Islands</option>
                                <option>Sri Lanka</option>
                                <option>Sudan</option>
                                <option>Suriname</option>
                                <option>Svalbard</option>
                                <option>Swaziland</option>
                                <option>Sweden</option>
                                <option>Switzerland</option>
                                <option>Syria</option>
                                <option>Taiwan</option>
                                <option>Tajikistan</option>
                                <option>Tanzania</option>
                                <option>Thailand</option>
                                <option>Timor-Leste</option>
                                <option>Togo</option>
                                <option>Tokelau</option>
                                <option>Tonga</option>
                                <option>Trinidad and Tobago</option>
                                <option>Tromelin Island</option>
                                <option>Tunisia</option>
                                <option>Turkey</option>
                                <option>Turkmenistan</option>
                                <option>Turks and Caicos Islands</option>
                                <option>Tuvalu</option>
                                <option>Uganda</option>
                                <option>Ukraine</option>
                                <option>United Arab Emirates</option>
                                <option>United Kingdom</option>
                                <option>United States</option>
                                <option>Uruguay</option>
                                <option>Uzbekistan</option>
                                <option>Vanuatu</option>
                                <option>Venezuela</option>
                                <option>Vietnam</option>
                                <option>Virgin Islands</option>
                                <option>Wake Island</option>
                                <option>Wallis and Futuna</option>
                                <option>West Bank</option>
                                <option>Western Sahara</option>
                                <option>Yemen</option>
                                <option>Zambia</option>
                                <option>Zimbabwe</option>
                            </select>

                            <label>User type: <span class="required">*</span></label>
                            <select name="usertype">
                                <option disabled selected>Please Select</option>
                                <option>Traveller</option>
                                <option>Service Provider</option>
                            </select>

                            <label>Interests: <span class="required">*</span></label>
                            <label class="checkbox inline">
                                <input type="checkbox" id="inlineCheckbox1" value="option1"> Category 1
                            </label>
                            <label class="checkbox inline">
                                <input type="checkbox" id="inlineCheckbox2" value="option2"> Category 2
                            </label>
                            <label class="checkbox inline">
                                <input type="checkbox" id="inlineCheckbox3" value="option3"> Category 3
                            </label>

                            <br><br>

                            -
                            <button name="addUser" type="submit" class="btn btn-primary">Create Acount</button>
                            <input type="reset" value="Clear" class="btn btn-primary">

                            <div class="required-field pull-right">* Required Field</div>

                            <div class="clearfix"></div>
                        </form>
                    </div>
                    <div class="span6 new-costumers">
                        <h2>New guests</h2>
                        <p>By creating an account with our application as a guest, you will be able to find the information regarding Sri Lanka faster, 
                            these searches can be according to your interests, get to know the best places available with the recommendations and reviews of other guests.
                        </p>

                        <h2>New Service providers</h2>
                        <p>By creating an account with our application as a Service provider, you will be able to add information about the service that you provide to the country, which can vary from Accomadation to Tours. 
                            these information can be viewed by the forigners who would like to use your service as for their requirment.
                        </p>
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