<%-- 
    Document   : inc_head.jsp
    Created on : Jul 7, 2013, 8:57:22 AM
    Author     : Shehan Tis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<title>TRS Sri Lanka - Traveller Recommender System for Sri Lanka</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="google-translate-customization" content="2ee3eb3ade2cd6d0-8572950c2c56234d-g38afd74e05cdfcf0-13"></meta>
<meta name="keywords" content="travel sri lanka,sri lanka,Lanka,Ceylon,shrilanka,sri lanka tourism,sri lanka tour,travel to sri lanka,visit sri lanka,visit sri lanka holidays,trip to srilanka,tourist in sri lanka,sri lanka travel and tours,lanka holidays,tours in sri lanka,travel and tours,about sri lanka,travel websites,srilankan,srilanka,sri lanka tourist board,Hotelsflights,Resorts,Locations,cheap flights,low cost holidays,online booking,luxury hotels,beach hotels,air tickets,resort and spa,5 star hotels,zoo,سري لانكا السياحة,斯里兰卡旅游,Sri Lanka Tourism,श्रीलंका पर्यटन,sri lanka turismo,Sri Lanka turismo,Шри-Ланка туризма,Srí Lanka cestovního ruchu,Шры-Ланка турызму,Sri Lanka matkailu,Σρι Λάνκα τουρισμού,스리랑카 관광,スリランカ観光,luxury holidays, luxury holidays in asia, holiday cottages, luxury beach holidays,holiday location,holiday plans,holiday planning, holiday plans asia, holiday plans sri lanka, Asian Holiday destinations, Best Destinations, wonderful destinations, popular destinations,sri lanka vacation,sri lanka tourism,sri lanka honeymoon,Sri Lanka Hotels,sri lanka resorts,sri lanka tourist attractions,sri lankan airlines,srilanka tour packages,Colombo,Kandy,Negambo,Galle,Unawatuna,Hikkaduwa,NuweraEliya,Tangalle,Bentota,Arugambay,Kalpitiya,Mirissa,Passikudah,travel agents,cheap hotels in sri lanka,flights to sri lanka,sri lanka beach,cheap tickets to sri lanka,hotels in Colombo,last minute holidays,asia vacation packages,asia tour packages,tour of asia,asia travel deals,trips to asia,cheap asia flights,travel in asia" />
<meta name="description" content="Find travel ideas for planning your holiday to Sri Lanka. Discover things to see and do, places to stay and more.. This is the official site of Sri Lanka Tourism.." />
<link rel="shortcut icon" href="icon.ico">
<link href="http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,300italic,700" rel="stylesheet" media="all">
<link rel="stylesheet" href="css/buttons/social-icons.css">
<link rel="stylesheet" href="css/buttons/animation.css"><!--[if IE 7]>
<link rel="stylesheet" href="css/buttons/social-icons-ie7.css"><![endif]-->
<!-- Bootstrap -->
<link href="css/bootstrap.css" rel="stylesheet" media="screen">
<link href="css/style.css" rel="stylesheet">
<link href="css/media.css" rel="stylesheet">
<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<![endif]-->
<!--[if (gte IE 6)&(lte IE 8)]>
    <script type="text/javascript" src="js/selectivizr-min.js"></script>
<![endif]-->
<script type="text/javascript">
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
    function fill(thisValue) {
        $('#inputString').val(thisValue);
        setTimeout("$('#suggestions').hide();", 200);
    }

    function search(val) {
        $('#inputString').val(val);
        document.searchForm.submit();
    }
</script>
<style type="text/css">

    .suggestionsBox {
        position: relative;
        left: 16px;
        top: 55px;
        margin: 0px 0px 0px 0px;
        width: 914px;
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
        background-color: #F7FE2E;
    }
</style>