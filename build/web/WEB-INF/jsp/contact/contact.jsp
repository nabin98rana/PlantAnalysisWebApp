<%@include file="../header.jsp" %>
<br/>
<br/>
<br/>
<br/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://unpkg.com/leaflet@1.0.0-rc.2/dist/leaflet.css" />
        <script src="https://unpkg.com/leaflet@1.0.0-rc.2/dist/leaflet.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Page</title>
        <style>
            #mapid { height: 180px; }
        </style>
    </head>
    <body>


        <h1 style="margin-left: 900px;">Site Map</h1>
        <div id="mapid" style=" width: 500px; margin-right: 100px;" class="pull-right" >
           
            <script>
                var mymap = L.map('mapid').setView([27.700769, 85.300140], 13);

                L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token=pk.eyJ1IjoibWFwYm94IiwiYSI6ImNpandmbXliNDBjZWd2M2x6bDk3c2ZtOTkifQ._QA7i5Mpkd_m30IGElHziw', {
                    maxZoom: 18,
                    attribution: 'Map data  <a href="http://openstreetmap.org"></a> contributors, ' +
                            '<a href="http://creativecommons.org/licenses/by-sa/2.0/"></a>, ' +
                            'Imagery © <a href="http://mapbox.com"></a>',
                    id: 'mapbox.streets'
                }).addTo(mymap);



            </script>
        </div>
    </body>
</html>
<br/>
<br/>
<br/>
<br/>
<br/>
<%@include file="../footer.jsp" %>
