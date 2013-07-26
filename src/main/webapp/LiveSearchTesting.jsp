<%-- 
    Document   : LiveSearchTesting
    Created on : Jul 3, 2013, 9:12:32 AM
    Author     : shehan1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>jQuery Auto Complete</title>
        <script type="text/javascript" src="js/localjquery.js"></script>
        <!--<script type="text/javascript">
            function lookup(inputString) {
                if (inputString.length == 0) {
                    $('#suggestions').hide();
                } else {
                    $.post("states.jsp", {queryString: "" + inputString + ""}, function(data) {
                        if (data.length > 0) {
                            $('#suggestions').show();
                            $('#autoSuggestionsList').html(data);
                        }
                    });
                }
            }
            
        </script>-->
        
        <script language="javascript" type="text/javascript">  
            var xmlHttp  
            function lookup(str){
        
                if(str!=""){
                    if (typeof XMLHttpRequest != "undefined"){
                        xmlHttp= new XMLHttpRequest();
                    }
                    else if (window.ActiveXObject){
                        xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
                    }
                    if (xmlHttp==null){
                        alert("Browser does not support XMLHTTP Request")
                        return;
                    }
                    var url="states.jsp";
                    url +="?queryString=" +str;
                    
                    xmlHttp.onreadystatechange = resultbox;
                    xmlHttp.open("POST", url, true);
                    xmlHttp.send(null);
                }
        
            }
            
            function fill(thisValue) {
                $('#inputString').val(thisValue);
                setTimeout("$('#suggestions').hide();", 200);
            }
    
            function resultList(){   
                if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){   
                    document.getElementById("resultbox").innerHTML=xmlHttp.responseText   
                }   
            }
    
        </script>
                    
        <style type="text/css">
            body {
                font-family: Helvetica;
                font-size: 13px;
                color: #000;
            }
            h3 {
                margin: 0px;
                padding: 0px;
            }
            .suggestionsBox {
                position: relative;
                left: 260px;
                margin: 0px 0px 0px 0px;
                width: 200px;
                background-color: #fff;
                border: 1px solid #000;
                color: #000;
            }
            .suggestionList {
                margin: 0px;
                padding: 0px;
            }
            .suggestionList li {
                margin: 0px 0px 3px 0px;
                padding: 3px;
                cursor: pointer;
            }
            .suggestionList li:hover {
                background-color: #DD45CD;
            }
            
            .resultbox{
                position: relative;
                left: 260px;
                margin: 0px 0px 0px 0px;
                width: 200px;
                background-color: #fff;
                border: 1px solid #000;
                color: #000;   
            }
            .resultbox li {
                margin: 0px 0px 3px 0px;
                padding: 3px;
                cursor: pointer;
            }
            .resultbox li:hover {
                background-color: #DD45CD;
            }
        </style>
    </head>
    <body>
        <div>
            <form>
                <div> <h3><font color="red">Indian States</states></font></h3> <br /> Enter India State Name to see autocomplete
                    <input name="inputString" type="text" size="30" value="" id="inputString" onkeyup="lookup(this.value);" onblur="fill(this.value);" />
                </div>
                <div class="suggestionsBox" id="suggestions" style="display: none;">
                    <div class="suggestionList" id="resultbox">
                    </div>
                </div>
            </form>
            
            
        </div>
    </body>
</html>