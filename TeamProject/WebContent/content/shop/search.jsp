<%@ page language="java" contentType="text/html; charset=utf-8" 
pageEncoding="EUC-KR" import="com.sist.dao.*, java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="dao" class="com.sist.dao.CafeManagerDAO"/>
<%
	//CafeManagerDAO dao = new CafeManagerDAO();
	List<CafeVO> list = dao.CallAllCafeInfo();
	request.setAttribute("cList",list);
%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
  <meta name="format-detection" content="telephone=no" />
  <!-- <meta name="subject" content="ȫ�� ���� �α� �˻����� | ���� ��õ, �����÷���Ʈ">
  <meta name="description" content="ȫ���� ���� �˻������ 2,000�� �Դϴ�. ȫ���� ���� ����, �޴�, ����, Ư��, �ּ�, ��ȭ��ȣ, �����ð� ���� ������ �����÷���Ʈ���� Ȯ���غ�����.">
  <meta name='keywords' content='����Ƽ ����Ƽ, �Һ�, ���� ��, ��ī�ٺ���, ������ ��ġ�� ��ġ, ���� ����, �ۺ�ũ, �����, ��߻���̸�, ȫ�� ���θ�'> -->
  <meta name='image' content="https://s3-ap-northeast-1.amazonaws.com/img.prod.mp/14081_1418659345985"/>

  <title>�𺣵��� | ī�� �˻� ����</title>

  <link rel="stylesheet" media="screen" href="../css/search.css" />

  <link rel="shortcut icon" href="/assets/favicon.ico" />

  <!--  Representative URL Setting
  <link rel="canonical" href="https://www.mangoplate.com/search/%ED%99%8D%EB%8C%80" />
  <link rel="alternate" href="https://www.mangoplate.com/search/%ED%99%8D%EB%8C%80" hreflang="ko">
  <link rel="alternate" href="https://www.mangoplate.com/en/search/%ED%99%8D%EB%8C%80" hreflang="en"> -->

</head>

<!-- <body onunload="" ng-app="mp20App"> -->
<body> 
<!-- ���� ���� -->
<!-- <main class="pg-search" ng-controller="mp20_search_result_controller" data-keyword="ȫ��"> -->
<main class="pg-search">
  <article class="contents">
	  <div class="black_screen"></div>

    <!-- ����ũž ������ ���� -->
    <div class="column-wrapper">
	    <div class="column-contents flex-contents"> <!-- �˻���� �Ĵ� ����Ʈ flex�� ���� -->
	      <div class="inner">
				<!-- �˻� �Ĵ� ��� -->
				<section class="module search-results short-bottom">
					<div class="search_info">
						<section class="region_by_keywords_wrap">
						<div class="region_by_keywords">
							<a class="region_by_keyword" href="manggo.jsp">������</a> 
							<a class="region_by_keyword" href="manggo.jsp">�Ÿ���</a>
	
						</div>
							 </section>
					</div>
	
					<div class="search-list-restaurants-inner-wrap">
						<!--<div class="search_loading_gray_layer" ng-show="ajaxing" ng-cloak>
								<img src="https://mp-seoul-image-production-s3.mangoplate.com/web/resources/ldcyd5lxlvtlppe3.gif?fit=around|:&crop=:;*,*&output-format=gif&output-quality=80"alt="ajax loading image" />
							</div>
						-->
	
						<ul class="list-restaurants">
							<c:forEach var="vo" items="${cList }">
								<li class="list-restaurant server_render_search_result_item">
									<div class="list-restaurant-item">
										<!-- 		<div class="list-restaurant-item" data-subcusine_code="26"> -->
										<figure class="restaurant-item">
											<a class="only-desktop_not" href="item.jsp?mno=${vo.cafe_nm} ">
											<!-- onclick="common_ga('PG_SEARCH_RESULT', 'CLICK_RESTAURANT')"> -->
												<div class="thumb">
													<img class="center-croping lazy" alt=" ${vo.cafe_nm} : ${vo.cafe_addr} "
																src="${vo.cafe_img}" />
												</div>
											</a>
	
											<figcaption>
												<div class="info">
													<a href="item.jsp">
														<h2 class="title">${vo.cafe_nm}</h2>
													</a> <strong class="point search_point">��ü ����</strong>
													<p class="etc">
														<span>${vo.cafe_addr}</span>
													</p>
													<p class="etc_info">
														<span>${vo.cafe_tel}</span>
													</p>
												</div>
											</figcaption>
										</figure>
									</div>
									
									<div class="list-restaurant-item">
										<!-- <div class="list-restaurant-item" data-subcusine_code="26"> -->
										<figure class="restaurant-item">
											<a class="only-desktop_not" href="item.jsp?mno=${cafe_nm} ">
											<!-- onclick="common_ga('PG_SEARCH_RESULT', 'CLICK_RESTAURANT')"> -->
												<div class="thumb">
													<img class="center-croping lazy" alt="${vo.cafe_nm} : ${vo.cafe_addr} " src="${vo.cafe_img}" />
												</div>
											</a>
	
											<figcaption>
												<div class="info">
													<a href="item.jsp">
														<h2 class="title">${vo.cafe_nm}</h2>
													</a> 
													<strong class="point search_point">��ü ����</strong>
													<p class="etc">
														<span>${vo.cafe_addr}</span>
													</p>
													<p class="etc_info">
														<span>${vo.cafe_tel}</span>
													</p>
												</div>
											</figcaption>
										</figure>
									</div>
									
									<div class="list-restaurant-item">
										<!-- 		<div class="list-restaurant-item" data-subcusine_code="26"> -->
										<figure class="restaurant-item">
											<a class="only-desktop_not" href="item.jsp?mno=${vo.cafe_nm} ">
											<!-- onclick="common_ga('PG_SEARCH_RESULT', 'CLICK_RESTAURANT')"> -->
												<div class="thumb">
													<img class="center-croping lazy" alt=" ${vo.cafe_nm} : ${vo.cafe_addr} "
																src="${vo.cafe_img}" />
												</div>
											</a>
	
											<figcaption>
												<div class="info">
													<a href="item.jsp">
														<h2 class="title">${vo.cafe_nm}</h2>
													</a> <strong class="point search_point">��ü ����</strong>
													<p class="etc">
														<span>${vo.cafe_addr}</span>
													</p>
													<p class="etc_info">
														<span>${vo.cafe_tel}</span>
													</p>
												</div>
											</figcaption>
										</figure>
									</div>
									
								</li> 
							</c:forEach>
							<search-item ng-repeat="restaurant_pair in search_result_list" picture-lebel="${vo.cafe_img}">�����̳�..</search-item>
						</ul>
					</div>
	
					<div class="paging-container">
	            		<p class="paging">
	              			<!-- ���� ������ 
	              			<a href="#" onclick="">1</a> 
	              			<a href="#" onclick="">2</a> 
	              			<a href="#" onclick="">3</a> 
	              			<a href="#" onclick="">4</a> 
	              			<a href="#" onclick="">5</a> 
	              			
	              			���� ������ -->
	              			<a href="search.jsp?page=${curpage>1?curpage-1:curpage }">����</a>&nbsp;
							<a href="search.jsp?page=${curpage<totalpage?curpage+1:curpage }">����</a>&nbsp;&nbsp;
							${curpage } page / ${totalpage } pages
	            		</p>
	          		</div>
	
				<!-- <div class="search_result_empty_message" ng-show="!search_result_list.length && !ajaxing" ng-cloak>
						<p class="search_result_empty_message_title" ng-show="!move_search">
							<span class="mango_text">'ȫ��'</span>�� ���� �˻� ����� �����ϴ�.
						</p>
	
						<p class="search_result_empty_message_title" ng-show="move_search">���� �� �˻��� ���� �˻� ����� �����ϴ�.</p>
	
						<div class="search_result_empty_message_content">
							<p class="mango_text search_result_empty_message_content_sub_title">
								�˻��� �Ĵ��� �����÷���Ʈ�� ������ ���� ��??
							</p>
							<ul class="search_result_empty_message_content_list">
								<li>1. �����÷���Ʈ ����� ���� ��ġ�Ѵ�</li>
								<li>2. ��+����ư�� ���� �Ĵ� ����ϱ⸦ ��ġ!</li>
								<li>3. ����� �Ĵ��� ������ �Է��� �� ��� �Ϸ�!</li>
							</ul>
						 </div>
					   </div> -->
					<div class="dfp_ad_paging_bottom"></div> 
				</section>
			</div>
	    </div>	<!-- class="column-contents" -->
    </div>

    <div class="column-back only-desktop"></div>
    <!-- ����ũž ���̵� ���� -->
    <div class="column-side">
      <!-- ���� -->
	    <div class="map-container_wrap"> 
        	<!--<div class="map-container daum_map_wrap">
        			<img class="static_map" src="../img/map.jpg" alt="��������">
        		</div> -->
        	<div class="map-container daum_map_wrap" id="map" style="position: relative; overflow: hidden"></div>
        		<%-- ���� ���� �ڸ�--%>
        		<!-- <div id="map"></div> -->
        		<script>
			      function initMap() {
			        var uluru = {lat: 37.513385, lng: 127.102547};
			      //  var uluru2 = {lat: 37.513385, lng: 127.102549};
			        var map = new google.maps.Map(document.getElementById('map'), {
			          zoom: 15,
			          center: uluru,
			          mapTypeId : google.maps.MapTypeId.ROADMAP
			        });
			        var marker = new google.maps.Marker({
			          position: uluru,
			          map: map
			        });
			        
			        /* var marker2 = new google.maps.Marker({
			            position: uluru2,
			            map: map
			          }); */
			      }
    			</script>
    			<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCrBWFhxQhVGgTXa-D4xMxkhHEDUJQ50M8&callback=initMap">
    			</script>
        <!-- </div>-->	        
        <!-- <button class="btn-map" ng-click="change_map_mode()" ng-show="search_result_list.length > 0" ng-cloak>{{map_size_btn_message}}</button>
	 	      <div class="map_black_screen" ng-show="!search_result_list.length && !ajaxing"></div>
		     <button class="btn-type-round reset" ng-class="{show_reset_btn: move_map}" ng-click="move_map_search()">�� �������� �ٽ� �˻�</button>������������ ���� �ȵǹǷ� ���� �ø�
	        <p class="reset no_result" ng-class="{show_no_result: (!search_result_list.length && !ajaxing)}">�˻� ����� �����</p> -->
	    </div>
		<div class="search_cafe">
					<fieldset class="search-all " data-is_home="">
							<!-- <legend>��ü �˻�</legend> -->

						<label for="search" class="search-word"> 
							<span>�˻� :</span> 
							<input id="search" type="text" autocomplete="off" tabindex="-1" name="search" 
									onclick="" placeholder="�˻��� ���ϴ� ������ �Է��ϼ���"  />
								<!-- <button class="btn-clear" onclick="cart.jsp">�˻�</button>  -->
						</label>
							
										<!-- <button class="btn-search-start"
											ng-click="close_search_list()"
											onclick="common_ga(get_now_page_code(), 'CLICK_SEARCH_CLOSE')">
											�˻� ���
										</button> -->
					</fieldset>
				</div>	

     	<div class="inner">

        <div class="column-module">
          <!-- ����Ʈ -->
          <section class="module related-list">
            <span class="title">���� ž����Ʈ</span>
			<%
			for(int j = 0; j < 6; j++){
			%>
            <ul class="list-type-ls">
              <li>
                <a href="/top_lists/1235_hongdae" onclick="common_ga(get_now_page_code(), 'CLICK_RELATED_LIST')">
                  <figure class="ls-item">
                    <div class="thumb">
                      <!-- <img class="center-croping lazy"
                           alt="ȫ�� ���� ����Ʈ 50�� ����"
                           src="../img/food.jpg"
                           data-original="https://mp-seoul-image-production-s3.mangoplate.com/keyword_search/meta/pictures/y_bm2ztrqsuhc8fp.jpg?fit=around|738:738&amp;crop=738:738;*,*&amp;output-format=jpg&amp;output-quality=80"
                           data-error="https://mp-seoul-image-production-s3.mangoplate.com/web/resources/kssf5eveeva_xlmy.jpg?fit=around|*:*&amp;crop=*:*;*,*&amp;output-format=jpg&amp;output-quality=80"     
                           /> -->
                    </div>
                    <figcaption class="info">
                      <div class="info_inner_wrap">
	                      <span class="title small">ȫ�� ���� ����Ʈ 50��</span>
	                      <p class="desc small">"����� �˼��� ������ ���� ȫ�� ����"</p>
	                      <p class="hash">
	                        <span>#ȫ�� ���� Top50</span>
	                      </p>
	                    </div>
                    </figcaption>
                  </figure>
                </a>
              </li>   
            </ul> <!--  6�� �ݺ� -->
            <%
			}
            %>
          </section>
        </div>	<!-- class="column-module" -->
      </div>
    </div>	<!-- class="column-side" -->
  </article>
</main>


</html>
