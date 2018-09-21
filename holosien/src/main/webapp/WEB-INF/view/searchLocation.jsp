<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0465833cd0a7a33e459cd71b363bc38e&libraries=services"></script>

    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${pageContext.request.contextPath}/resources/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="${pageContext.request.contextPath}/resources/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="${pageContext.request.contextPath}/resources/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/resources/images/ico/apple-touch-icon-57-precomposed.png">
	
	<!-- css -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/materialdesignicons.min.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/jquery.mCustomScrollbar.min.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/prettyPhoto.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/unslider.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/template.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/map.css" />
	
<title>���� Ű���� �˻�</title>
</head>
<body>
<div class="map_wrap">
    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
    <div id="menu_wrap" class="bg_white">
        <div class="option">
            <div>
            <form onsubmit="searchPlaces(); return false;">
                    Ű���� : <input type="text"  id="keyword" size="15"> 
                    <button type ="submit" class ="btn btn-default btn-sm" id="searchKeyword">�˻��ϱ�</button> 
               </form>
            </div>
        </div>
        <hr>
        <ul id="placesList"></ul>
        <div id="pagination"></div>
    </div>
</div>
					
        	<script type="text/javascript"	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0465833cd0a7a33e459cd71b363bc38e"></script>
	
			<script type="text/javascript">
			// ��Ŀ�� Ŭ���ϸ� ��Ҹ��� ǥ���� ���������� �Դϴ�
			var infowindow = new daum.maps.InfoWindow({zIndex:1},
					contentNode = document.createElement('div'));
			    
			var markers = [];//��Ŀ�� ���� �迭 
			// ��� �˻� ��ü�� �����մϴ�
			var ps = new daum.maps.services.Places();  
			
            //���� ���� �� ���� ��ġ �ν�
			var container = document.getElementById('map');
			var options = {
				center : new daum.maps.LatLng(37.5673, 127.0057),
				level : 3
			};

			//���� ����
			var map = new daum.maps.Map(container, options);

			// Ŀ���� ���������� ������ ��忡 css class�� �߰��մϴ� 
			contentNode.className = 'placeinfo_wrap';

			// Ŀ���� ���������� ������ ��忡 mousedown, touchstart �̺�Ʈ�� �߻�������
			// ���� ��ü�� �̺�Ʈ�� ���޵��� �ʵ��� �̺�Ʈ �ڵ鷯�� daum.maps.event.preventMap �޼ҵ带 ����մϴ� 
			addEventHandle(contentNode, 'mousedown', daum.maps.event.preventMap);
			addEventHandle(contentNode, 'touchstart', daum.maps.event.preventMap);

			// Ŀ���� �������� �������� �����մϴ�
			infowindow.setContent(contentNode);  

			
			// Ű����� ��Ҹ� �˻��մϴ�
			//searchPlaces();

			// Ű���� �˻��� ��û�ϴ� �Լ��Դϴ�
			function searchPlaces() {

			    var keyword = document.getElementById('keyword').value;

			    if (!keyword.replace(/^\s+|\s+$/g, '')) {
			        alert('Ű���带 �Է����ּ���!');
			        return false;
			    }

			    // ��Ұ˻� ��ü�� ���� Ű����� ��Ұ˻��� ��û�մϴ�
			    ps.keywordSearch( keyword, placesSearchCB); 
			}
		
			// ��Ұ˻��� �Ϸ���� �� ȣ��Ǵ� �ݹ��Լ� �Դϴ�
			function placesSearchCB(data, status, pagination) {
			    if (status === daum.maps.services.Status.OK) {

			        // ���������� �˻��� �Ϸ������
			        // �˻� ��ϰ� ��Ŀ�� ǥ���մϴ�
			        displayPlaces(data);

			        // ������ ��ȣ�� ǥ���մϴ�
			        displayPagination(pagination);

			    } else if (status === daum.maps.services.Status.ZERO_RESULT) {

			        alert('�˻� ����� �������� �ʽ��ϴ�.');
			        return;

			    } else if (status === daum.maps.services.Status.ERROR) {

			        alert('�˻� ��� �� ������ �߻��߽��ϴ�.');
			        return;

			    }
			}

			// �˻� ��� ��ϰ� ��Ŀ�� ǥ���ϴ� �Լ��Դϴ�
			function displayPlaces(places) {

			    var listEl = document.getElementById('placesList'), 
			    menuEl = document.getElementById('menu_wrap'),
			    fragment = document.createDocumentFragment(), 
			    bounds = new daum.maps.LatLngBounds(), 
			    listStr = '';
			    
			    // �˻� ��� ��Ͽ� �߰��� �׸���� �����մϴ�
			    removeAllChildNods(listEl);

			    // ������ ǥ�õǰ� �ִ� ��Ŀ�� �����մϴ�
			    removeMarker();
			    
			    for ( var i=0; i<places.length; i++ ) {

			        // ��Ŀ�� �����ϰ� ������ ǥ���մϴ�
			        var placePosition = new daum.maps.LatLng(places[i].y, places[i].x),
			            marker = addMarker(placePosition, i), 
			            itemEl = getListItem(i, places[i]); // �˻� ��� �׸� Element�� �����մϴ�

			        // �˻��� ��� ��ġ�� �������� ���� ������ �缳���ϱ�����
			        // LatLngBounds ��ü�� ��ǥ�� �߰��մϴ�
			        bounds.extend(placePosition);

			        // ��Ŀ�� �˻���� �׸� mouseover ������
			        // �ش� ��ҿ� ���������쿡 ��Ҹ��� ǥ���մϴ�
			        // mouseout ���� ���� ���������츦 �ݽ��ϴ�
			        (function(marker, place) {
						var inputPlace = place.place_name+" ("+place.address_name+")";
			            daum.maps.event.addListener(marker, 'mouseover', function() {
			                displayInfowindow(marker, place.place_name);
			            });

			            daum.maps.event.addListener(marker, 'mouseout', function() {
			                infowindow.close();
			            });
						
			            daum.maps.event.addListener(marker, 'click', function() {
			            	$(opener.document).find("input[name=location_result]").val(inputPlace);
			            	self.close();
		                });
			            
			            itemEl.onmouseover =  function () {
			                displayInfowindow(marker, place.place_name);
			            };

			            itemEl.onmouseout =  function () {
			                infowindow.close();
			            };
			            itemEl.onclick = function() {
			            	$(opener.document).find("input[name=location_result]").val(inputPlace);
			            	self.close();
			            };
			        })(marker, places[i]);

			        fragment.appendChild(itemEl);
			    }

			    // �˻���� �׸���� �˻���� ��� Elemnet�� �߰��մϴ�
			    listEl.appendChild(fragment);
			    menuEl.scrollTop = 0;

			    // �˻��� ��� ��ġ�� �������� ���� ������ �缳���մϴ�
			    map.setBounds(bounds);
			}

			// �˻���� �׸��� Element�� ��ȯ�ϴ� �Լ��Դϴ�
			function getListItem(index, places) {

			    var el = document.createElement('li'),
			    itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
			                '<div class="info">' +
			                '   <h5>' + places.place_name + '</h5>';

			    if (places.road_address_name) {
			        itemStr += '    <span>' + places.road_address_name + '</span>' +
			                    '   <span class="jibun gray">' +  places.address_name  + '</span>';
			    } else {
			        itemStr += '    <span>' +  places.address_name  + '</span>'; 
			    }
			                 
			      itemStr += '  <span class="tel">' + places.phone  + '</span>' +
			                '</div>';           

			    el.innerHTML = itemStr;
			    el.className = 'item';

			    return el;
			}

			// ��Ŀ�� �����ϰ� ���� ���� ��Ŀ�� ǥ���ϴ� �Լ��Դϴ�
			function addMarker(position, idx, title) {
			    var imageSrc = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // ��Ŀ �̹��� url, ��������Ʈ �̹����� ���ϴ�
			        imageSize = new daum.maps.Size(36, 37),  // ��Ŀ �̹����� ũ��
			        imgOptions =  {
			            spriteSize : new daum.maps.Size(36, 691), // ��������Ʈ �̹����� ũ��
			            spriteOrigin : new daum.maps.Point(0, (idx*46)+10), // ��������Ʈ �̹��� �� ����� ������ �»�� ��ǥ
			            offset: new daum.maps.Point(13, 37) // ��Ŀ ��ǥ�� ��ġ��ų �̹��� �������� ��ǥ
			        },
			        markerImage = new daum.maps.MarkerImage(imageSrc, imageSize, imgOptions),
			            marker = new daum.maps.Marker({
			            position: position, // ��Ŀ�� ��ġ
			            image: markerImage 
			        });

			    marker.setMap(map); // ���� ���� ��Ŀ�� ǥ���մϴ�
			    markers.push(marker);  // �迭�� ������ ��Ŀ�� �߰��մϴ�

			    return marker;
			}

			// ���� ���� ǥ�õǰ� �ִ� ��Ŀ�� ��� �����մϴ�
			function removeMarker() {
			    for ( var i = 0; i < markers.length; i++ ) {
			        markers[i].setMap(null);
			    }   
			    markers = [];
			}

			// �˻���� ��� �ϴܿ� ��������ȣ�� ǥ�ô� �Լ��Դϴ�
			function displayPagination(pagination) {
			    var paginationEl = document.getElementById('pagination'),
			        fragment = document.createDocumentFragment(),
			        i; 

			    // ������ �߰��� ��������ȣ�� �����մϴ�
			    while (paginationEl.hasChildNodes()) {
			        paginationEl.removeChild (paginationEl.lastChild);
			    }

			    for (i=1; i<=pagination.last; i++) {
			        var el = document.createElement('a');
			        el.href = "#";
			        el.innerHTML = i;

			        if (i===pagination.current) {
			            el.className = 'on';
			        } else {
			            el.onclick = (function(i) {
			                return function() {
			                    pagination.gotoPage(i);
			                }
			            })(i);
			        }

			        fragment.appendChild(el);
			    }
			    paginationEl.appendChild(fragment);
			}

			// �˻���� ��� �Ǵ� ��Ŀ�� Ŭ������ �� ȣ��Ǵ� �Լ��Դϴ�
			// ���������쿡 ��Ҹ��� ǥ���մϴ�
			function displayInfowindow(marker, title) {
			    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

			    infowindow.setContent(content);
			    infowindow.open(map, marker);
			}

			 // �˻���� ����� �ڽ� Element�� �����ϴ� �Լ��Դϴ�
			function removeAllChildNods(el) {   
			    while (el.hasChildNodes()) {
			        el.removeChild (el.lastChild);
			    }
			}
			// Ŭ���� ��Ŀ�� ���� ��� �������� Ŀ���� �������̷� ǥ���ϴ� �Լ��Դϴ�
			function displayPlaceInfo (place) {
			    var content = '<div class="placeinfo">' +
			                    '   <a class="title" href="' + place.place_url + '" target="_blank" title="' + place.place_name + '">' + place.place_name + '</a>';   

			    if (place.road_address_name) {
			        content += '    <span title="' + place.road_address_name + '">' + place.road_address_name + '</span>' +
			                    '  <span class="jibun" title="' + place.address_name + '">(���� : ' + place.address_name + ')</span>';
			    }  else {
			        content += '    <span title="' + place.address_name + '">' + place.address_name + '</span>';
			    }                
			   
			    content += '    <span class="tel">' + place.phone + '</span>' + 
			                '</div>' + 
			                '<div class="after"></div>';

			    contentNode.innerHTML = content;
			    infowindow.setPosition(new daum.maps.LatLng(place.y, place.x));//��� �ּ� ��ǥ�� ����!
			    infowindow.setMap(map);  
			}
			
			// ������Ʈ�� �̺�Ʈ �ڵ鷯�� ����ϴ� �Լ��Դϴ�
			function addEventHandle(target, type, callback) {
			    if (target.addEventListener) {
			        target.addEventListener(type, callback);
			    } else {
			        target.attachEvent('on' + type, callback);
			    }
			}

			</script>
</body>
</html>