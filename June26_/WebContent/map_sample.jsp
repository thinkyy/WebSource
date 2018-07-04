<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.1.0/jquery.mobile-1.1.0.min.css" />
<script src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
<script src="http://code.jquery.com/mobile/1.1.0/jquery.mobile-1.1.0.min.js"></script>
<script src="ui/min/jquery.ui.map.full.min.js"></script>
<script src="ui/jquery.ui.map.extension.js"></script>
<script src="http://maps.google.com/maps/api/js?sensor=true&key=AIzaSyAM6aB3OkplvDTVT6QRL40OtoSBqritKNk" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var StartLatLng = new google.maps.LatLng(37.571619, 126.97643600000004);
		$("#map_canvas").gmap({"center":StartLatLng,"zoom":16});
		
		$("#current_location").click(function(){
			if(navigator.geolocation){
			navigator.geolocation.getCurrentPosition(
				function(position){
	 				var latlng = new google.maps.LatLng(
	 						position.coords.latitude, 
	 						position.coords.longitude);
	 				var markerBlue = 
		"http://www.google.com/intl/en_us/mapfiles/ms/icons/blue-dot.png";
		$("#map_canvas").gmap("get","map").panTo(latlng);
		$("#map_canvas").gmap("addMarker",
				{"position":latlng,"icon":markerBlue});
					}
				);
			}else{
				alert("현재 위치를 찾을 수 없습니다.");
			}
		});
		
		$("#put_pin").click(function(){
			var StartLatLng = new google.maps.LatLng(
					37.571619, 126.97643600000004);
			var markerRed = 
				"http://www.google.com/intl/en_us/mapfiles/ms/icons/red-dot.png";
			$("#map_canvas").gmap("get","map").panTo(
					StartLatLng);
			$("#map_canvas").gmap("addMarker",
				{"position":StartLatLng,"icon":markerRed}		
			).click(function(){
				$("#map_canvas").gmap("openInfoWindow",
					{"content":"우리집 Beer"},this		
				);
			});
		});
		
	});
</script>
<style type="text/css">
	.map_style {
		padding: 0px;
		height: 100%;
		width: 100%;
	}
</style>
</head>
<body>

	<div data-role="page" id="page" class="map_style">
		<div data-role="header" data-position="fixed" data-fullscreen="false" data-theme="b">
			<a href="index.jsp" rel="external" data-icon="home">HOME</a>
			<h1>매장 지도</h1>
		</div>
		<div data-role="content" class="map_style">
			<div id="map_canvas" class="map_style"></div>
		</div>
		<div data-role="header">
			<div data-role="navbar">
				<ul>
					<li><a href="#" data-icon="search" id="current_location">현위치 찾기</a></li>
					<li><a href="#" data-icon="grid" id="put_pin">핀 놓기</a></li>
				</ul>
			</div>
		</div>
	</div>

</body>
</html>