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
				<img src="/image/restaurant/onepage/menupan_title_tabMenu.gif" alt="�޴�" />
			</h3>
			<!-- �޴�����Ʈ : Start -->
			<div class="listmenupan">
				<div class="wrap">

					<p class="menu_t">
						<span class="t01"><img
							src="../img/menupan/menupan_index2.gif" alt="�з�" /></span><span
							class="t02"><img
							src="../img/menupan/menupan_menu.gif" alt="�޴�" /></span><span
							class="t03"><img
							src="../img/menupan/menupan_price.gif" alt="����" /></span><span
							class="t04"><img
							src="../img/menupan/menupan_pay2.gif" alt="����" /></span>
					</p>
					<div class="list_wrap">
						<ul class="listL_wrap">

							<li class="listL"><a id="menu_class1_0" class=" on "
								href="javascript:;" onclick="open_menulayer(0)">�޴�</a><span
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
											src="/image/restaurant/onepage/ic_good.gif" alt="��õ">
									</a>
									</span>6
								</p> -->
								</c:forEach>
							</li>

						</ul>

						
					</div>
					<!-- .list_wrap -->
					<p class="payNotice">���� ������ ��ü�� ������ ���� ������ ���� �� �ֽ��ϴ�.</p>
				</div>
				<!-- .wrap -->
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
						�ֽ��ϴ�.</div>
					<ul class="" id="menuselect">
					</ul>
					<dl class="payPer">
						<dt>�ο��� �� �ݾ� :</dt>
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
							<span>��</span> �� �� <span>�� <span id="memPrice">0</span>��
							</span> �� ����
						</dd>
						<dd class="t_price">
							���հ� : <span id="totalprice">0</span>��
						</dd>
					</dl>
				</div>
				<!-- .calculator -->
			</div>
	
		</div>
	</form>

</body>
</html>