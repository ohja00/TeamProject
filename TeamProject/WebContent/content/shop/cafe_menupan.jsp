<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<jsp:useBean id="cn" class="com.sist.controller.CafeController"></jsp:useBean>	
<%
	cn.controller(request);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>	
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/cafe_menupan.css">
</head>
<body>

	<form id="menuform" name="menuform" method="post">
		<div class="tabMenu">
			<div id="tab2"></div>
			<h3>
				<img src="/image/restaurant/onepage/menupan_title_tabMenu.gif" alt="메뉴" />
			</h3>
			<!-- 메뉴리스트 : Start -->
			<div class="listmenupan">
				<div class="wrap">

					<p class="menu_t">
						<span class="t01"><img
							src="../img/menupan/menupan_index2.gif" alt="분류" /></span><span
							class="t02"><img
							src="../img/menupan/menupan_menu.gif" alt="메뉴" /></span><span
							class="t03"><img
							src="../img/menupan/menupan_price.gif" alt="가격" /></span><span
							class="t04"><img
							src="../img/menupan/menupan_pay2.gif" alt="예산" /></span>
					</p>
					<div class="list_wrap">
						<ul class="listL_wrap">

							<li class="listL"><a id="menu_class1_0" class=" on "
								href="javascript:;" onclick="open_menulayer(0)">메뉴</a><span
								id="menu_class2_0" class=" checked "></span></li>
						</ul>
						<!-- .listL_wrap -->

						<ul class="listR_wrap " id="listR_wrap_0">

							<li class="listR" style="z-index: 21">

								<p class="photoView none" id="menu_photo_4">
									<img src="/restaurant/restimg/007/menuimg/h4922774.jpg" />
								</p>
								<c:forEach var="vo" items="${plist }">
								<p class="menu">
								
									<span class="mTitle">
									 <span class="photo"
										onmouseover="$('#menu_photo_4').show();"
										onmouseout="$('#menu_photo_4').hide();"> </span>
									</span> 
									${vo.pd_name }
									<input
										type="hidden" name="menu_mname_4" id="menu_mname_4"
										value="${vo.pd_name }"> 

								</p>
								<p class="price">
									${vo.pd_price }<input type="hidden" name="menu_price_4"
										id="menu_price_4" value="${vo.pd_price }">
								</p>
								<p class="pay">
									<input type="checkbox" id="s_mcode_4" name="s_mcode_4"
										value="4" onclick="inputprice(4);">
								</p>
								<p class="quantity">
									<input id="cnt_4" name="cnt_4" type="text" value="1" readonly>
									<span class="up"><a href="javascript:;"
										onclick="fn_menuCnt('4','u');">
										<img
											src="../img/menupan/btn_up.gif"></a>
									</span> 
									<span
										class="down"><a href="javascript:;"
										onclick="fn_menuCnt('4','d');">
										<img
											src="../img/menupan/btn_down.gif"></a></span>
								</p>

								<!-- <p class="good">
									<span class="ic"> <a href="javascript:;"
										onclick="recommand('4')"> <img
											src="/image/restaurant/onepage/ic_good.gif" alt="추천">
									</a>
									</span>6
								</p> -->
								</c:forEach>
							</li>

						</ul>

						
					</div>
					<!-- .list_wrap -->
					<p class="payNotice">가격 정보는 업체의 사정에 의해 변동이 있을 수 있습니다.</p>
				</div>
				<!-- .wrap -->
				<div class="calculator">
					<a href="javascript:;" onclick="reflash_menu();"
						class="calculatorBtn on"></a>
					<p class="title">
						<span class="calculator_ic"></span><span class="txt">예산짜기</span>
					</p>
					<p class="tab">
						<span class="t1">메뉴명</span><span class="t2">가격</span><span
							class="t3">수량</span><span class="t4">계</span>
					</p>
					<div class="c_default">위 메뉴판에서 메뉴와 수량을 선택하면 편리하게 예산을 짜실 수
						있습니다.</div>
					<ul class="" id="menuselect">
					</ul>
					<dl class="payPer">
						<dt>인원수 별 금액 :</dt>
						<dd class="quantity">
							<input type="text" id="memCnt" name="memCnt" value="1"
								readonly=""> <span class="up"><a
								href="javascript:;" onclick="fn_menuCnt2('u');"><img
									src="/image/restaurant/onepage/btn_up.gif"></a></span> <span
								class="down"><a href="javascript:;"
								onclick="fn_menuCnt2('d');"><img
									src="/image/restaurant/onepage/btn_down.gif"></a></span>
						</dd>
						<dd class="result">
							<span>명</span> 일 때 <span>약 <span id="memPrice">0</span>원
							</span> 씩 지불
						</dd>
						<dd class="t_price">
							총합계 : <span id="totalprice">0</span>원
						</dd>
					</dl>
				</div>
				<!-- .calculator -->
			</div>
	
		</div>
	</form>

</body>
</html>