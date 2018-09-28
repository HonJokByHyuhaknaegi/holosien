<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
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
	
	// ��Ŀ�� ǥ�õ� ��ġ�Դϴ� 
	var markerPosition  = new daum.maps.LatLng(point_y, point_x); 

	// ��Ŀ�� �����մϴ�
	var marker = new daum.maps.Marker({
	    position: markerPosition
	});

	// ��Ŀ�� ���� ���� ǥ�õǵ��� �����մϴ�
	marker.setMap(map);
	
	// �ּ�-��ǥ ��ȯ ��ü�� �����մϴ�
	var geocoder = new daum.maps.services.Geocoder();
	
	geocoder.coord2Address(point_x, point_y, function(result, status) {
		console.log(result);
		console.log(status);
        if (status === daum.maps.services.Status.OK) {
            var detailAddr = !!result[0].road_address ? '���θ��ּ� : ' + result[0].road_address.address_name +'<br>': '';
            detailAddr += '���� �ּ� : ' + result[0].address.address_name;
                        
            var infoDiv = document.getElementById('centerAddr');
            
            infoDiv.innerHTML = detailAddr;
      
        }   
    });
	
	geocoder.coord2RegionCode(point_x, point_y, displayCenterInfo);

	function displayCenterInfo(result, status) {
	    if (status === daum.maps.services.Status.OK) {
	        var infoDiv = document.getElementById('centerAddr2');

	        for(var i = 0; i < result.length; i++) {
	            // �������� region_type ���� 'H' �̹Ƿ�
	            if (result[i].region_type === 'H') {
	                infoDiv.innerHTML = result[i].address_name;
	                break;
	            }
	        }
	    }    
	}
});
</script>

</head>
<body>
<div id="header">
<jsp:include page="header.jsp"/>
</div>


<div class="container">
         <h2 class="nino-sectionHeading">
            <span class="nino-subHeading">More.</span>
            �ڼ�������.
         </h2>
         </div>
 <div style="width:80%; margin:auto; margin-bottom:50px">
 
<div id="detailBoard" style="margin-bottom:50px">
<h2>${board.subject}</h2>
<h6>no. ${board.bno}</h6>
<h6>${board.category}</h6>
<h6>�ۼ��� : ${board.writer} </h6>
<h6>�ۼ��� : ${board.reg_date}</h6>
<h6>�ο� : ${board.number}</h6>
<h6>${board.content} </h6>
<h6 id="centerAddr"></h6>
<h6 id="centerAddr2"></h6>
<div id="boardMap" style="height: 0; overflow: hidden; padding-bottom:40%;"> ���� ����</div>

</div>

<div id="comment">
<span style="font-family: 'Kaushan Script', cursive; font-size: 20px; color:black;">Comment</span>
<button id="writeComment">write</button>
</div>
</div>
</body>
</html>