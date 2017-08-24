<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<aside id="sidebar-box" class="ko">
    <div class="m_at_lnb">
        <ul>
            
            <li style="padding-left:10px">
                <a href="cart.jsp" title="CART" >CART</a>
            </li>
            <li style="padding-left:10px">
                |
            </li>
                        <li>
                <a href="../bbs/login.jsp" title="회원가입" >LOG IN</a>
            </li>
            <li>
                <a href="../bbs/register.jsp" title="로그인" >JOIN</a>
            </li>
            
                        <li>
                <p class="korea">
                    <a href="#none" title="한국"><img  class="ko_img" src="/handium/img/south-korea.png" alt="한국"/>&nbsp;<img src="/handium/thema/Miso-Basic4/widget/miso-sidebar/img/a.png" alt=""/></a>
                </p>
                <p class="usa">
                    <a href="#" title="미국"><img  class="usa_img" src="/handium/thema/img/usa.jpg" alt="미국"/></a>
                </p>
                <p class="china">
                    <a href="#" title="중국"><img class="ch_img"  src="/handium/thema/img/ch.jpg" alt="중국"/></a>
                </p>
            </li>
        </ul>
    </div>
        <div class="sidebar-wing-close sidebar-close en" title="닫기">
			<i class="fa fa-times"></i>
		</div>
	<!-- Head Line -->
<!--	<div class="sidebar-head bg-navy"></div>-->
    

	<!-- sidebar Content -->
	<div id="sidebar-content" class="sidebar-content">


		<!-- Menu -->
		<div id="sidebar-menu" class="sidebar-item">
			

<div class="sidebar-menu panel-group" id="sidebar_menu" role="tablist" aria-multiselectable="true">
						<div class="panel">
				<div class="ca-head" role="tab">
					<a href="shop.jsp" class="no-sub">
						SHOP											</a>
				</div>
			</div>
								<div class="panel">
				<div class="ca-head" role="tab">
					<a href="/handium/bbs/page.php?hid=M02_01" class="no-sub">
						COLD BREW											</a>
				</div>
			</div>
								<div class="panel">
				<div class="ca-head" role="tab">
					<a href="/handium/bbs/page.php?hid=M03_01" class="no-sub">
						ROASTING											</a>
				</div>
			</div>
								<div class="panel">
				<div class="ca-head" role="tab">
					<a href="/handium/bbs/page.php?hid=M04_01" class="no-sub">
						BUSINESS											</a>
				</div>
			</div>
								<div class="panel">
				<div class="ca-head" role="tab">
					<a href="/handium/bbs/page.php?hid=M05_01" class="no-sub">
						CAFE											</a>
				</div>
			</div>
			</div>
		</div>

		<!-- Search -->
		<div id="sidebar-search" class="sidebar-item">
			
<!-- Search -->
<div class="div-title-underline-thin en">
	<b>SEARCH</b>
</div>
<div class="sidebar-search">
	<form id="ctrlSearch" name="ctrlSearch" method="get" onsubmit="return sidebar_search(this);" role="form" class="form">
		<div class="row">
			<div class="col-xs-6">
				<select name="url" class="form-control input-sm">
					<option value="http://www.handium.co.kr/handium/bbs/search.php">게시물</option>
											<option value="http://www.handium.co.kr/handium/shop/search.php">상품</option>
						<option value="http://www.handium.co.kr/handium/shop/itemuselist.php">후기</option>
						<option value="http://www.handium.co.kr/handium/shop/itemqalist.php">문의</option>
										<option value="http://www.handium.co.kr/handium/bbs/tag.php">태그</option>
				</select>
			</div>
			<div class="col-xs-6">
				<select name="sop" id="sop" class="form-control input-sm">
					<option value="or">또는</option>
					<option value="and">그리고</option>
				</select>	
			</div>
		</div>
		<div class="input-group input-group-sm" style="margin-top:8px;">
			<input type="text" name="stx" class="form-control input-sm" value="" placeholder="검색어는 두글자 이상">
			<span class="input-group-btn">
				<button type="submit" class="btn btn-navy btn-sm"><i class="fa fa-search"></i></button>
			</span>
		</div>
	</form>				
</div>
		</div>

		<!-- User -->
		<div id="sidebar-user" class="sidebar-item">
			<div class="sidebar-login">
	
		<form id="sidebar_login_form" name="sidebar_login_form" method="post" action="http://www.handium.co.kr/handium/bbs/login_check.php" autocomplete="off" role="form" class="form" onsubmit="return sidebar_login(this);">
		<input type="hidden" name="url" value="%2Fhandium%2Fshop%2Flist.php%3Fca_id%3D10">
			<div class="form-group">	
				<div class="input-group">
					<span class="input-group-addon"><i class="fa fa-user gray"></i></span>
					<input type="text" name="mb_id" id="mb_id" class="form-control input-sm" placeholder="아이디" tabindex="91">
				</div>
			</div>
			<div class="form-group">	
				<div class="input-group">
					<span class="input-group-addon"><i class="fa fa-lock gray"></i></span>
					<input type="password" name="mb_password" id="mb_password" class="form-control input-sm" placeholder="비밀번호" tabindex="92">
				</div>
			</div>
			<div class="form-group">
				<button type="submit" class="btn btn-navy btn-block" tabindex="93">Login</button>    
			</div>	

			<label class="text-muted" style="letter-spacing:-1px;">
				<input type="checkbox" name="auto_login" value="1" id="remember_me" class="remember-me" tabindex="94">
				자동로그인 및 로그인 상태 유지
			</label>
		</form>

		<div class="h10"></div>

		
		<!-- Member -->
		<div class="div-title-underline-thin en">
			<b>MEMBER</b>
		</div>
		<ul class="sidebar-list list-links">
			<li><a href="http://www.handium.co.kr/handium/bbs/register.php">회원가입</a></li>
			<li><a href="http://www.handium.co.kr/handium/bbs/password_lost.php" class="win_password_lost">아이디/비밀번호 찾기</a></li>
		</ul>
		
	</div>

<div class="h20"></div>

<!-- Service -->
<div class="div-title-underline-thin en">
	<b>SERVICE</b>
</div>

<ul class="sidebar-list list-links">
			<li><a href="http://www.handium.co.kr/handium/shop/cart.php">장바구니</a></li>
		<li><a href="http://www.handium.co.kr/handium/shop/personalpay.php">개인결제</a></li>
		<li><a href="http://www.handium.co.kr/handium/shop/orderinquiry.php">주문 및 배송조회</a></li>
		<li><a href="http://www.handium.co.kr/handium/bbs/faq.php">자주하시는 질문(FAQ)</a></li>
	<li><a href="http://www.handium.co.kr/handium/bbs/qalist.php">1:1 문의</a></li>
</ul>
		</div>

		<!-- Response -->
		<div id="sidebar-response" class="sidebar-item">
			<div id="sidebar-response-list"></div>
		</div>

				<!-- Cart -->
		<div id="sidebar-cart" class="sidebar-item">
			<div id="sidebar-cart-list"></div>
		</div>
			</div>

</aside>
</body>
</html>