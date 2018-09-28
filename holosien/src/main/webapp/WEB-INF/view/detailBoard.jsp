<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Holosien - Detail</title>

<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0465833cd0a7a33e459cd71b363bc38e&libraries=services"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#menubar li:nth-child(2)").addClass('active');
	
	var point_x = ${board.point_x};
	var point_y = ${board.point_y};

	var container = document.getElementById('boardMap');
	var options = {
		center: new daum.maps.LatLng(point_y, point_x),
		level: 3
	};
	var map = new daum.maps.Map(container, options);
	
	// 마커가 표시될 위치입니다 
	var markerPosition  = new daum.maps.LatLng(point_y, point_x); 

	// 마커를 생성합니다
	var marker = new daum.maps.Marker({
	    position: markerPosition
	});

	// 마커가 지도 위에 표시되도록 설정합니다
	marker.setMap(map);
	
	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new daum.maps.services.Geocoder();
	
	geocoder.coord2Address(point_x, point_y, function(result, status) {
		console.log(result);
		console.log(status);
        if (status === daum.maps.services.Status.OK) {
            var detailAddr = !!result[0].road_address ? '도로명주소 : ' + result[0].road_address.address_name +'<br>': '';
            detailAddr += '지번 주소 : ' + result[0].address.address_name;
                        
            var infoDiv = document.getElementById('centerAddr');
            
            infoDiv.innerHTML = detailAddr;
      
        }   
    });
});

function sendComment(){
	if(${sessionScope.userID==null}){
		alert("로그인 후 이용가능합니다.");
		return false;
	}
	else{
		return true;
	}
}



</script>

</head>
<body>
<div id="header">
<jsp:include page="header.jsp"/>
</div>


<div class="container">
         <h2 class="nino-sectionHeading">
            <span class="nino-subHeading">More.</span>
            자세히보기.
         </h2>
         </div>
 <div style="width:80%; margin:auto; margin-bottom:50px">
 
<div id="detailBoard" style="margin-bottom:50px">
<h2>${board.subject}</h2>
<h6>no. ${board.bno}</h6>
<h6>${board.category}</h6>
<h6>작성자 : ${board.writer} </h6>
<h6>작성일 : ${board.reg_date}</h6>
<h6>인원 : ${board.number}명</h6>
<h6>${board.content} </h6>
<h6 id="centerAddr"></h6>
<div id="boardMap" style="height: 0; overflow: hidden; padding-bottom:40%;"></div>
</div>

<div>
<span style="margin-bottom:50px; font-family: 'Kaushan Script', cursive; font-size: 20px; color:black;">Comment</span><br>
<div>
<form name="Comment" id="Comment" method="post" onsubmit="return sendComment();" action="writeComment?boardNo=${board.bno}">
<textarea id="Comment_content" name="Comment_content" class="form-control" rows="3" style="resize: none;"></textarea>
<input type="submit" class="custom-border-btn" style="margin-top:10px; padding:5px 20px; float:right; border:none;" value="Write"><!-- 
<button id="Sendcomment" class="custom-border-btn" style="margin-top:10px; padding:5px 20px; float:right; border:none;">Write</button> -->
</form>
</div>
</div>

</div>
</body>
</html>