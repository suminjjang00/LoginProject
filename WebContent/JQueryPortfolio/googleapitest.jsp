<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <style type="text/css">
html, body{
height: 100%; margin: 0; padding: 0; 
font-style: italic;
}
#map{ 
width: 1024px;
height: 500px;
}
.title{
width: 100%;
height:56px;
background: black;
}
.title > h2{
margin: 0px auto;
color: white;
}
</style>
</head>
<body>
<div class="title"><h2>api테스트</h2></div>
<div id="map"></div>
<script type="text/javascript">
var map;
function initMap() {
  map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: -34.397, lng: 150.644},
    zoom: 8
  });
}

</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRKJqMuB41ozM7nk2gJUZU5StiCPqSxdg&callback=initMap">
</script>
</body>
</html>
