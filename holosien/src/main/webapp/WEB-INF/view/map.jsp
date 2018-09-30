<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<% response.addHeader("Access-Control-Allow-Origin", "*"); %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Holosien - Map</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/map.css" />

<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0465833cd0a7a33e459cd71b363bc38e&libraries=services"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript">


$(document).ready(function() {

	var lat,lon;
	
	var overlay;
	//console.log(places);
	//주소-좌표간 변환 서비스 객체 
	var geocoder = new daum.maps.services.Geocoder();
	
    //지도 생성 및 현재 위치 인식
	var container = document.getElementById('map');
	var options = {
		center : new daum.maps.LatLng(37.5673, 127.0057),
		level : 5
	};

      
	//지도 생성
	var map = new daum.maps.Map(container, options);
	//현재 위치 인식
	if(navigator.geolocation){ 
		navigator.geolocation.getCurrentPosition(function(position){
			lat=position.coords.latitude;
			lon=position.coords.longitude;
			console.log(lat);
			console.log(lon);
			var locPosition=new daum.maps.LatLng(lat,lon);
			nowMarker(locPosition); 
		});
	}
	else{
		var locPosition=new daum.maps.LatLng(33.450701, 126.570667),
		message='일시적으로 내 위치를 확인할 수 없습니다.'
		
		displayMarker(locPosition, message);
	}
	
	var places = [];
	var infowindow = new daum.maps.InfoWindow({zIndex:1},
			contentNode = document.createElement('div'));
	
	// 커스텀 오버레이의 컨텐츠 노드에 css class를 추가합니다 
	contentNode.className = 'placeinfo_wrap';

	/* // 커스텀 오버레이의 컨텐츠 노드에 mousedown, touchstart 이벤트가 발생했을때
	// 지도 객체에 이벤트가 전달되지 않도록 이벤트 핸들러로 daum.maps.event.preventMap 메소드를 등록합니다 
	addEventHandle(contentNode, 'mousedown', daum.maps.event.preventMap);
	addEventHandle(contentNode, 'touchstart', daum.maps.event.preventMap); */

	// 커스텀 오버레이 컨텐츠를 설정합니다
	infowindow.setContent(contentNode);
	<c:forEach var="boardlist" items="${boardlist}">
	var board = new Object();
	
	board.bno = "${boardlist.bno}";
	board.subject = "${boardlist.subject}"
	board.category = "${boardlist.category}";
	board.location = "${boardlist.location}"; 
	board.point_y = "${boardlist.point_y}";
	board.point_x = "${boardlist.point_x}";

	displayPlaces(board, infowindow);

	</c:forEach>

	//마커와 인포윈도우 표시하는 함수
	function displayMarker(locPosition, message){
		var marker=new daum.maps.Marker({
			map:map,
			position:locPosition
			
		});
		
		var iwContent=message, //인포윈도우에 표시할 내용
		iwRemoveable=true;
		
		//인포윈도우 생성
		var infowindow=new daum.maps.InfoWindow({
			content:iwContent,
			removeable:iwRemoveable
		});
		
		//인포윈도우를 마커 위에 표시
		infowindow.open(map,marker);
		
		//지도 중심좌표를 해당위치로 변경
		map.setCenter(locPosition);
	}

	function nowMarker(locPosition){

		var imageSrc = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";
		   // 마커 이미지의 이미지 크기 입니다
	    var imageSize = new daum.maps.Size(24, 35); 
	    
	    // 마커 이미지를 생성합니다    
	    var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize); 
		var markerPosition=locPosition;
		var marker=new daum.maps.Marker({
			map:map,
			position:markerPosition,
			image:markerImage
		});
	
		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);
		map.setCenter(locPosition);
	}

	// 지도에 마커를 표출하는 함수입니다
	function displayPlaces(places) {
            // 마커를 생성하고 지도에 표시합니다
            var marker = addMarker(new daum.maps.LatLng(places.point_y, places.point_x),places.category);
         // 마커와 검색결과 항목을 클릭 했을 때
            // 장소정보를 표출하도록 클릭 이벤트를 등록합니다
            daum.maps.event.addListener(marker, 'mouseover', function() {
                displayInfowindow(marker,places);
            });
           /*  daum.maps.event.addListener(marker, 'mouseout', function() {
                infowindow.close();
            }); */
            
			
		
	}
	function displayInfowindow(marker, place) {
	    var content = '<div class="placeinfo">' +
        '   <a class="title" href="${pageContext.request.contextPath}/detailBoard?boardNo=' + place.bno + '" target="_blank" title="' + place.subject + '">' + place.subject + '</a>';   
        
        content += '    <span title="' + place.location + '">' + place.location + '</span>';

        infowindow.setContent(content);
	    infowindow.open(map, marker);
	}
	
	// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
	function addMarker(position, category) {
	    var imageSrc = '${pageContext.request.contextPath}/resources/images/'+category+'.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
	        imageSize = new daum.maps.Size(45, 45),  // 마커 이미지의 크기
	        markerImage = new daum.maps.MarkerImage(imageSrc, imageSize),
	            marker = new daum.maps.Marker({
	            position: position, // 마커의 위치
	            image: markerImage 
	        });
	    marker.setMap(map); // 지도 위에 마커를 표출합니다

	    return marker;
	}
});
</script>
</head>
<body>

<div id="header">
            <jsp:include page="header.jsp" />
        
      <div >
         <h2 class="nino-sectionHeading">
            <span class="nino-subHeading">Map.</span>
            지도로 한 눈에 보기.
         </h2>
         </div>
       
         <br>
         <div class="map_wrap">
        <div id="map" style="width:100%;height:500px;position:relative;overflow:hidden;"></div>
        <ul id="category">
        <li id="BK9" data-order="0"> 
            <span class="category_bg bank"></span>
            친구찾기
        </li>       
        <li id="MT1" data-order="1"> 
            <span class="category_bg mart"></span>
            룸메이트
        </li>  
        <li id="PM9" data-order="2"> 
            <span class="category_bg pharmacy"></span>
            반려동물
        </li>  
        <li id="OL7" data-order="3"> 
            <span class="category_bg oil"></span>
            배달음식
        </li>      
    </ul>
</div>

</div>
</body>
</html>