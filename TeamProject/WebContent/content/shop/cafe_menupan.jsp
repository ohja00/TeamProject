<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
	function selmenu(obj) {

		var id = $(obj).attr("id");
		var index = 0;
		var clicktitle = 0;

		if (id.indexOf("s_mcode") < 0) { // 메뉴선택
			index = id.substring("menu_".length);
			clicktitle = 1;
		} else { // 체크박스 선택
			index = id.substring("s_mcode_".length);
		}
		var bchecked = $("#s_mcode_" + index).is(":checked");
		if (clicktitle == 0) { // 체크박스 선택시 처리
			bchecked = !bchecked;
		}
		if (bchecked == false) { // 체크박스에 체크가 되어있지 않았을때
			if (clicktitle == 1) { // 메뉴를 클릭했을때 체크박스 표시를 체크한다
				$("#s_mcode_" + index).prop("checked", true);
			}

			var pdname = $("#menu_" + index).text();
			pdname = pdname.trim();
			var pdprice = $("#menu_price_" + index).val();
			var pdcnt = $("#cnt_" + index).val();
			var totalprice = pdprice * pdcnt;
			var pdno= $("#menu_pno_"+index).val();
			$('.c_default').hide();

			var add = "<li id='selItem_"+index+"'>" + "<span class='p1'>"
			+"<input type='hidden' name='selpdno' value="+pdno+">"
			+ pdname + "</span>" + "<span class='p2'>" + pdprice					
			+ "</span>" + "<span class='p3'>" + pdcnt  
			+"<input type='hidden' name='selpdcnt' value="+pdcnt+">"
			+ "</span>"
			+ "<span class='p4'>" + totalprice  
			+"</span> </li>";
/*  			
			var add = "<li id='selItem_"+index+"'>" + "<span class='p1'>"
					+ pdname + "</span>" + "<span class='p2'>" + pdprice
					+ "</span>" + "<span class='p3'>" + pdcnt + "</span>"
					+ "<span class='p4'>" + totalprice + "</span> </li>";
 */
			$('#menuselect').append(add);
		} else {
			if (clicktitle == 1) { // 메뉴를 선택했을때 체크박스 체크를 해제
				$("#s_mcode_" + index).prop("checked", false);
			}

			$("#selItem_" + index).remove(); // 선택메뉴를 삭제
		}

		var childrens = $("li").children(".p4");
		var sum = 0;
		for (var i = 0; i < childrens.length; i++) {
			sum += parseInt(childrens.eq(i).text());
		}
		$('#totalprice').text(sum);

	}
	function fn_menuCnt(index, sel) {
		var cnt = $("#cnt_" + index).val();

		if (sel == 'u') {
			$("#cnt_" + index).val(parseInt(cnt) + 1);
		} else {
			if (cnt > 1)
				$("#cnt_" + index).val(parseInt(cnt) - 1);
		}
		$("#selItem_" + index).remove();

		var bchecked = $("#s_mcode_" + index).is(":checked");
		if (bchecked) {
			var pdname = $("#menu_" + index).text();
			pdname = pdname.trim();
			var pdprice = $("#menu_price_" + index).val();
			var pdcnt = $("#cnt_" + index).val();
			var totalprice = pdprice * pdcnt;
			var pdno= $("#menu_pno_"+index).val();
				
			$('.c_default').hide();
		
	 		var add = "<li id='selItem_"+index+"'>" + "<span class='p1'>"
					+"<input type='hidden' name='selpdno' value="+pdno+">"
					+ pdname + "</span>" + "<span class='p2'>" + pdprice					
					+ "</span>" + "<span class='p3'>" + pdcnt  
					+"<input type='hidden' name='selpdcnt' value="+pdcnt+">"
					+ "</span>"
					+ "<span class='p4'>" + totalprice  
					+"</span> </li>"; 

/* 			var add = "<li id='selItem_"+index+"'>" + "<span class='p1'>"
			+ pdname + "</span>" + "<span class='p2'>" + pdprice
			+ "</span>" + "<span class='p3'>" + pdcnt + "</span>"
			+ "<span class='p4'>" + totalprice + "</span> </li>";					
			$('#menuselect').append(add);
 */
			var childrens = $("li").children(".p4");
			var sum = 0;
			for (var i = 0; i < childrens.length; i++) {
				sum += parseInt(childrens.eq(i).text());
			}
			$('#totalprice').text(sum);

		}

	}
	function ordernow(or){
	 	if (or == "1"){ // 바로구매
		 	$('#total_order').attr("action","shop.jsp");
			$('#total_order').attr("method","post"); 
		
		}
		else if (or == "2"){	//장바구니
		 	$('#total_order').attr("action","cart.jsp");
			$('#total_order').attr("method","post");	 		
		}
		$('#total_order').submit(); 
		
	}
</script>
</head>
<body>

	<!-- <form id="menuform" name="menuform" method="post" > -->
		<div class="tabMenu">
			<div id="tab2"></div>
			<h3>
				<img src="/image/restaurant/onepage/menupan_title_tabMenu.gif"
					alt="메뉴" />
			</h3>
			<!-- 메뉴리스트 : Start -->
			<div class="listmenupan">
				<div class="wrap">

					<p class="menu_t">
						<span class="t01"><img
							src="../img/menupan/menupan_index2.gif" alt="분류" /></span><span
							class="t02"><img src="../img/menupan/menupan_menu.gif"
							alt="메뉴" /></span><span class="t03"><img
							src="../img/menupan/menupan_price.gif" alt="가격" /></span><span
							class="t04"><img src="../img/menupan/menupan_pay2.gif"
							alt="예산" /></span>
					</p>
					<div class="list_wrap">
						<ul class="listL_wrap">

							<li class="listL"><a id="menu_class1_0" class=" on "
								href="javascript:;">메뉴</a><span id="menu_class2_0"
								class=" checked "></span></li>
						</ul>
						<!-- .listL_wrap -->

						<ul class="listR_wrap" id="listR_wrap_0">
							<c:forEach var="vo" items="${plist }" varStatus="s">
								<li class="listR" id="listR_${s.index }" style="z-index: 21">

									<!-- 	<p class="photoView none" id="menu_photo_4">
									<img src="/restaurant/restimg/007/menuimg/h4922774.jpg" />
								</p>
							 -->
									<p class="menu" id="menu_${s.index }" onclick="selmenu(this);">

										<span class="mTitle"> <!-- 	 <span class="photo"
										onmouseover="$('#menu_photo').show();"
										onmouseout="$('#menu_photo').hide();"> </span> -->
										</span> ${vo.pd_nm } <input type="hidden"
											name="menu_mname_${s.index}" id="menu_mname_${s.index}"
											value="${vo.pd_nm }">
											<input type="hidden" id="menu_pno_${s.index}" value="${vo.pd_no }">

									</p>
									<p class="price">
										${vo.pd_price }<input type="hidden"
											name="menu_price_${s.index}" id="menu_price_${s.index}"
											value="${vo.pd_price }">
									</p>

									<p class="pay">

										<input type="checkbox" class="s_mcode" id="s_mcode_${s.index}"
											name="s_mcode_${s.index}" onchange="selmenu(this);">

									</p>

									</p>
									<p class="quantity">
										<input id="cnt_${s.index}" name="cnt_${s.index}" type="text"
											value="1" readonly> <span class="up"> <a
											onclick="fn_menuCnt('${s.index}','u');"> <img
												src="../img/menupan/btn_up.gif"></a>
										</span> <span class="down"> <a href="javascript:;"
											onclick="fn_menuCnt('${s.index}','d');"> <img
												src="../img/menupan/btn_down.gif"></a>
										</span>

										<!-- <p class="good">
									<span class="ic"> <a href="javascript:;"
										onclick="recommand('4')"> <img
											src="/image/restaurant/onepage/ic_good.gif" alt="추천">
									</a>
									</span>6
								</p> -->
								</li>
							</c:forEach>
						</ul>


					</div>
					<!-- .list_wrap -->
					<p class="payNotice">가격 정보는 업체의 사정에 의해 변동이 있을 수 있습니다.</p>
				</div>
				<!-- .wrap -->
				<form id="total_order" >
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
						있습니다.
						<input type='hidden' name='mode' value='7'>
					</div>
					<ul class="" id="menuselect">

					</ul>
					<dl class="payPer">
						<!-- <dt>인원수 별 금액 :</dt>
						<dd class="quantity">
							<input type="text" id="memCnt" name="memCnt" value="1"> <span
								class="up"> <a href="javascript:;"
								onclick="fn_menuCnt2('u');"> <img
									src="../img/menupan/btn_up.gif"></a>
							</span> <span class="down"> <a href="javascript:;"
								onclick="fn_menuCnt2('d');"><img
									src="../img/menupan/btn_down.gif"></a></span>
						</dd>
						<dd class="result">
							<span>명</span> 일 때 <span>약 <span id="memPrice">0</span>원
							</span> 씩 지불
						</dd> -->
						<dd class="t_price">
							총합계 : <span id="totalprice">0</span>원
						</dd>
					</dl> 
				<div id="buy_form" class="text">
					<div class="item-form-footer text-center">
					<div class="item_cart">
						
						<input type="button"
							onclick="ordernow('1');" value="바로구매"
							class="btn-block fs_btn fs_btn0" id="order">					
					
					</div>
					<div class="item_cart">
						<input type="button"
							onclick="ordernow('2');" value="장바구니"
							class="btn-block fs_btn fs_btn1">
					</div>
					<div class="item_cart">
					<input type="submit"
							onclick="apms_wishlist('1490142602'); return false;" value="WISH"
							class="btn-block fs_btn fs_btn2">
					</div>
					<!-- <ul class="item-form-btn">
						<li><input type="submit"
							onclick="document.pressed=this.value;" value="바로구매"
							class="btn-block fs_btn fs_btn0"></li>
						<li><input type="submit"
							onclick="document.pressed=this.value;" value="장바구니"
							class="btn-block fs_btn fs_btn1"></li>
						
						<li><input type="submit"
							onclick="apms_wishlist('1490142602'); return false;" value="WISH"
							class="btn-block fs_btn fs_btn2"></li>
					</ul>
 -->
					<div class="clearfix"></div>
				</div>					
				</div>
				<!-- .calculator -->
			
			</div>
			</form>
			</div>
			
		</div>
	<!-- </form>
 -->
</body>
</html>