<%-- 
    Document   : gmaps
    Created on : Jul 2, 2013, 11:36:58 PM
    Author     : Shehan Tis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
        <title>Find latitude and longitude with Google Maps</title>
        <script src="http://maps.google.com/maps?file=api&amp;v=2&amp;key=ABQIAAAAgrj58PbXr2YriiRDqbnL1RSqrCjdkglBijPNIIYrqkVvD1R4QxRl47Yh2D_0C1l5KXQJGrbkSDvXFA"
        type="text/javascript"></script>
        <link href="http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,300italic,700" rel="stylesheet" media="all">
            <link href="css/style.css" rel="stylesheet">
                <link href="css/media.css" rel="stylesheet">

                    <script type="text/javascript">

                        function load() {
                            if (GBrowserIsCompatible()) {
                                var map = new GMap2(document.getElementById("map"));
                                map.addControl(new GSmallMapControl());
                                map.addControl(new GMapTypeControl());
                                var center = new GLatLng(6.92708, 79.86124);
                                map.setCenter(center, 15);
                                geocoder = new GClientGeocoder();
                                var marker = new GMarker(center, {draggable: true});
                                map.addOverlay(marker);
                                document.getElementById("lat").innerHTML = center.lat().toFixed(5);
                                document.getElementById("lng").innerHTML = center.lng().toFixed(5);

                                GEvent.addListener(marker, "dragend", function() {
                                    var point = marker.getPoint();
                                    map.panTo(point);
                                    document.getElementById("lat").innerHTML = point.lat().toFixed(5);
                                    document.getElementById("lng").innerHTML = point.lng().toFixed(5);

                                });


                                GEvent.addListener(map, "moveend", function() {
                                    map.clearOverlays();
                                    var center = map.getCenter();
                                    var marker = new GMarker(center, {draggable: true});
                                    map.addOverlay(marker);
                                    document.getElementById("lat").innerHTML = center.lat().toFixed(5);
                                    document.getElementById("lng").innerHTML = center.lng().toFixed(5);


                                    GEvent.addListener(marker, "dragend", function() {
                                        var point = marker.getPoint();
                                        map.panTo(point);
                                        document.getElementById("lat").innerHTML = point.lat().toFixed(5);
                                        document.getElementById("lng").innerHTML = point.lng().toFixed(5);

                                    });

                                });

                            }
                        }

                        function showAddress(address) {
                            var map = new GMap2(document.getElementById("map"));
                            map.addControl(new GSmallMapControl());
                            map.addControl(new GMapTypeControl());
                            if (geocoder) {
                                geocoder.getLatLng(
                                        address,
                                        function(point) {
                                            if (!point) {
                                                alert(address + " not found");
                                            } else {
                                                document.getElementById("lat").innerHTML = point.lat().toFixed(5);
                                                document.getElementById("lng").innerHTML = point.lng().toFixed(5);
                                                map.clearOverlays()
                                                map.setCenter(point, 14);
                                                var marker = new GMarker(point, {draggable: true});
                                                map.addOverlay(marker);

                                                GEvent.addListener(marker, "dragend", function() {
                                                    var pt = marker.getPoint();
                                                    map.panTo(pt);
                                                    document.getElementById("lat").innerHTML = pt.lat().toFixed(5);
                                                    document.getElementById("lng").innerHTML = pt.lng().toFixed(5);
                                                });


                                                GEvent.addListener(map, "moveend", function() {
                                                    map.clearOverlays();
                                                    var center = map.getCenter();
                                                    var marker = new GMarker(center, {draggable: true});
                                                    map.addOverlay(marker);
                                                    document.getElementById("lat").innerHTML = center.lat().toFixed(5);
                                                    document.getElementById("lng").innerHTML = center.lng().toFixed(5);

                                                    GEvent.addListener(marker, "dragend", function() {
                                                        var pt = marker.getPoint();
                                                        map.panTo(pt);
                                                        document.getElementById("lat").innerHTML = pt.lat().toFixed(5);
                                                        document.getElementById("lng").innerHTML = pt.lng().toFixed(5);
                                                    });

                                                });

                                            }
                                        }
                                );
                            }
                        }
                    </script>
                    <script type="text/javascript">
                  //<![CDATA[
                        var gs_d = new Date, DoW = gs_d.getDay();
                        gs_d.setDate(gs_d.getDate() - (DoW + 6) % 7 + 3);
                        var ms = gs_d.valueOf();
                        gs_d.setMonth(0);
                        gs_d.setDate(4);
                        var gs_r = (Math.round((ms - gs_d.valueOf()) / 6048E5) + 1) * gs_d.getFullYear();
                        var gs_p = (("https:" == document.location.protocol) ? "https://" : "http://");
                        document.write(unescape("%3Cscript src='" + gs_p + "s.gstat.orange.fr/lib/gs.js?" + gs_r + "' type='text/javascript'%3E%3C/script%3E"));
                  //]]>
                    </script>
                    </head>


                    <body onload="load()" onunload="GUnload()" >

                        <div class="site-container">
                            <div class="container entry-content">
                                <div class="row">
                                    <div class="span6">
                                        <h1 class="page-title">GMAPS</h1>

                                        <form action="#" onsubmit="showAddress(this.address.value); return false">      
                                            <input type="text" size="83" name="address" value="Colombo Sri lanka" class="input-medium search-query" />
                                            <input type="submit" value="Search!" class="btn btn-primary" />
                                        </form>


                                        <table  bgcolor="#999999" width="600">
                                            <tr>
                                                <td><b><center>Latitude</center></b></td>
                                                <td><b><center>Longitude</center></b></td>
                                            </tr>
                                            <tr>
                                                <td><center><div id="lat"></div></center></td>
                                                <td><center><div id="lng"></div></center></td>
                                            </tr>
                                        </table>

                                        <div align="center" id="map" style="width: auto; height: 400px"><br/></div>
                                        <p>Please use the above control to extract the exact Longitude and the Latitude of the location where this is actually located.</p>
                                    </div>
                                </div>

                            </div>
                        </div>


                        <!-- -->

                        <script type="text/javascript">
                      //<![CDATA[
                            if (typeof _gstat != "undefined")
                                _gstat.audience('', 'pagesperso-orange.fr');
                      //]]>
                        </script>
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

