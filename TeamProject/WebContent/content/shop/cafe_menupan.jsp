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

		if (id.indexOf("s_mcode") < 0) { // �޴�����
			index = id.substring("menu_".length);
			clicktitle = 1;
		} else { // üũ�ڽ� ����
			index = id.substring("s_mcode_".length);
		}
		var bchecked = $("#s_mcode_" + index).is(":checked");
		if (clicktitle == 0) { // üũ�ڽ� ���ý� ó��
			bchecked = !bchecked;
		}
		if (bchecked == false) { // üũ�ڽ��� üũ�� �Ǿ����� �ʾ�����
			if (clicktitle == 1) { // �޴��� Ŭ�������� üũ�ڽ� ǥ�ø� üũ�Ѵ�
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
			if (clicktitle == 1) { // �޴��� ���������� üũ�ڽ� üũ�� ����
				$("#s_mcode_" + index).prop("checked", false);
			}

			$("#selItem_" + index).remove(); // ���ø޴��� ����
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
	 	if (or == "1"){ // �ٷα���
		 	$('#total_order').attr("action","shop.jsp");
			$('#total_order').attr("method","post"); 
		
		}
		else if (or == "2"){	//��ٱ���
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
					alt="�޴�" />
			</h3>
			<!-- �޴�����Ʈ : Start -->
			<div class="listmenupan">
				<div class="wrap">

					<p class="menu_t">
						<span class="t01"><img
							src="../img/menupan/menupan_index2.gif" alt="�з�" /></span><span
							class="t02"><img src="../img/menupan/menupan_menu.gif"
							alt="�޴�" /></span><span class="t03"><img
							src="../img/menupan/menupan_price.gif" alt="����" /></span><span
							class="t04"><img src="../img/menupan/menupan_pay2.gif"
							alt="����" /></span>
					</p>
					<div class="list_wrap">
						<ul class="listL_wrap">

							<li class="listL"><a id="menu_class1_0" class=" on "
								href="javascript:;">�޴�</a><span id="menu_class2_0"
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
											src="/image/restaurant/onepage/ic_good.gif" alt="��õ">
									</a>
									</span>6
								</p> -->
								</li>
							</c:forEach>
						</ul>


					</div>
					<!-- .list_wrap -->
					<p class="payNotice">���� ������ ��ü�� ������ ���� ������ ���� �� �ֽ��ϴ�.</p>
				</div>
				<!-- .wrap -->
				<form id="total_order" >
				<div class="calculator">
					<a href="javascript:;" onclick="reflash_menu();"
						class="calculatorBtn on"></a>
					<p class="title">
						<span class="calculator_ic"></span><span class="txt">����¥��</span>
					</p>
					<p class="tab">
						<span class="t1">�޴���</span><span class="t2">����</span><span
							class="t3">����</span><span class="t4">��</span>
					</p>
					<div class="c_default">�� �޴��ǿ��� �޴��� ������ �����ϸ� ���ϰ� ������ ¥�� ��
						�ֽ��ϴ�.
						<input type='hidden' name='mode' value='7'>
					</div>
					<ul class="" id="menuselect">

					</ul>
					<dl class="payPer">
						<!-- <dt>�ο��� �� �ݾ� :</dt>
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
							<span>��</span> �� �� <span>�� <span id="memPrice">0</span>��
							</span> �� ����
						</dd> -->
						<dd class="t_price">
							���հ� : <span id="totalprice">0</span>��
						</dd>
					</dl> 
				<div id="buy_form" class="text">
					<div class="item-form-footer text-center">
					<div class="item_cart">
						
						<input type="button"
							onclick="ordernow('1');" value="�ٷα���"
							class="btn-block fs_btn fs_btn0" id="order">					
					
					</div>
					<div class="item_cart">
						<input type="button"
							onclick="ordernow('2');" value="��ٱ���"
							class="btn-block fs_btn fs_btn1">
					</div>
					<div class="item_cart">
					<input type="submit"
							onclick="apms_wishlist('1490142602'); return false;" value="WISH"
							class="btn-block fs_btn fs_btn2">
					</div>
					<!-- <ul class="item-form-btn">
						<li><input type="submit"
							onclick="document.pressed=this.value;" value="�ٷα���"
							class="btn-block fs_btn fs_btn0"></li>
						<li><input type="submit"
							onclick="document.pressed=this.value;" value="��ٱ���"
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