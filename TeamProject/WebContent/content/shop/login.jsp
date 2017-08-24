<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=10,chrome=1">
<meta name="title" content="로그인 > 핸디엄 공식 홈페이지" />
<meta name="publisher" content="핸디엄 공식 홈페이지" />
<meta name="author" content="핸디엄 공식 홈페이지" />
<meta name="robots" content="index,follow" />
<meta name="keywords" content="핸디엄 공식 홈페이지" />
<meta name="description" content="로그인 > 핸디엄 공식 홈페이지" />
<meta property="og:title" content="로그인 > 핸디엄 공식 홈페이지" />
<meta property="og:site_name" content="핸디엄 공식 홈페이지" />
<meta property="og:author" content="핸디엄 공식 홈페이지" />
<meta property="og:type" content="" />
<meta property="og:description" content="로그인 > 핸디엄 공식 홈페이지" />
<meta property="og:url"
	content="http://www.handium.co.kr/handium/bbs/login.php" />
<link rel="canonical"
	href="http://www.handium.co.kr/handium/bbs/login.php" />
<title>로그인 > 핸디엄 공식 홈페이지</title>
<link rel="stylesheet"
	href="http://www.handium.co.kr/handium/css/default.css?ver=161101">
<link rel="stylesheet"
	href="http://www.handium.co.kr/handium/css/apms.css?ver=161101">

<link rel="stylesheet"
	href="http://www.handium.co.kr/handium/thema/Miso-Basic4/assets/bs3/css/bootstrap.min.css"
	type="text/css" class="thema-mode">
<link rel="stylesheet"
	href="http://www.handium.co.kr/handium/thema/Miso-Basic4/colorset/Basic-Box/colorset.css"
	type="text/css" class="thema-colorset">
<link rel="stylesheet"
	href="http://www.handium.co.kr/handium/thema/Miso-Basic4/widget/miso-keyword/widget.css">
<link rel="stylesheet"
	href="http://www.handium.co.kr/handium/skin/member/basic/style.css">
<link rel="stylesheet"
	href="http://www.handium.co.kr/handium/thema/Miso-Basic4/widget/miso-sidebar/widget.css">
<link rel="stylesheet"
	href="http://www.handium.co.kr/handium/css/font-awesome/css/font-awesome.min.css?ver=161101">
<link rel="stylesheet"
	href="http://www.handium.co.kr/handium/css/level/basic.css?ver=161101">
<meta property="og:image" content="/handium/img/up_share-img.png">
<link rel="shortcut icon" href="/handium/favicon.ico">
<link rel="stylesheet" href="../css/login.css">
<!--[if lte IE 8]>
<script src="http://www.handium.co.kr/handium/js/html5.js"></script>
<![endif]-->
<script>
	// 자바스크립트에서 사용하는 전역변수 선언
	var g5_url = "http://www.handium.co.kr/handium";
	var g5_bbs_url = "http://www.handium.co.kr/handium/bbs";
	var g5_is_member = "";
	var g5_is_admin = "";
	var g5_is_mobile = "";
	var g5_bo_table = "";
	var g5_sca = "";
	var g5_pim = "";
	var g5_editor = "";
	var g5_responsive = "1";
	var g5_cookie_domain = "";
	var g5_purl = "http://www.handium.co.kr/handium/bbs/login.php";
</script>
<script src="http://www.handium.co.kr/handium/js/jquery-1.11.3.min.js"></script>
<script
	src="http://www.handium.co.kr/handium/js/jquery-migrate-1.2.1.min.js"></script>
<script
	src="http://www.handium.co.kr/handium/lang/korean/lang.js?ver=161101"></script>
<script src="http://www.handium.co.kr/handium/js/common.js?ver=161101"></script>
<script src="http://www.handium.co.kr/handium/js/wrest.js?ver=161101"></script>
<script src="http://www.handium.co.kr/handium/js/apms.js?ver=161101"></script>
<script
	src="http://www.handium.co.kr/handium/plugin/apms/js/jquery.mobile.swipe.min.js"></script>
</head>
<body class="responsive is-pc">

	<div id="thema_wrapper" class="wrapper  ko">

		<div class="at-wrapper">


			<div class="clearfix"></div>

			<div class="at-title">
				<div class="at-container" style="margin-top: 130px;">
					<div class="page-title en">
						<strong> LOG IN </strong>
					</div>
					<div class="page-desc hidden-xs">회원 로그인</div>
					<div class="clearfix"></div>
				</div>
			</div>


			<div class="at-body">
				<div class="at-container">
					<div class="at-content">

						<div class="row" style="padding-top: 80px;">
							<div class="fs_login_form">
								<div class="form-box">
									<div class="form-body">
										<form class="form" role="form" name="flogin"
											action="http://www.handium.co.kr/handium/bbs/login_check.php"
											onsubmit="return flogin_submit(this);" method="post">
											<input type="hidden" name="url"
												value='http%3A%2F%2Fwww.handium.co.kr%2Fhandium'>
											<div class="form-group has-feedback">
												<strong class="sound_only"> 필수</strong></label> <input type="text"
													name="mb_id" id="login_id" required
													class="form-control input-sm" size="20" maxLength="20"
													placeholder="아이디">
											</div>
											<div class="form-group has-feedback">
												<strong class="sound_only"> 필수</strong></label> <input
													type="password" name="mb_password" id="login_pw" required
													class="form-control input-sm" size="20" maxLength="20"
													placeholder="비밀번호">
											</div>
											<div class="row">
												<div class="col-xs-12" style="margin-bottom: 3px;">
													<button type="submit" class="btn btn-color pull-right">로그인</button>
												</div>
												<div class="col-xs-6">
													<label class="remember-me"> <input type="checkbox"
														name="auto_login" id="login_auto_login"><span
														style="font-size: 12px; vertical-align: middle; line-height: 26px;">
															자동로그인</span>
													</label>
												</div>
												<p class="col-xs-6" style="text-align: right;">
													<a href="register.jsp" class="fs_color">회원가입</a> <span
														style="font-size: 13px;"> | </span> <a
														href="http://www.handium.co.kr/handium/bbs/password_lost.php"
														class="fs_color" target="_blank" id="login_password_lost">정보찾기</a>
												</p>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>


						<!-- 주문하기, 신청하기 -->

						<script>
							$(function() {
								$("#login_auto_login")
										.click(
												function() {
													if (this.checked) {
														this.checked = confirm("자동로그인을 사용하시면 다음부터 회원아이디와 비밀번호를 입력하실 필요가 없습니다.\n\n공공장소에서는 개인정보가 유출될 수 있으니 사용을 자제하여 주십시오.\n\n자동로그인을 사용하시겠습니까?");
													}
												});
							});

							function flogin_submit(f) {
								return true;
							}
						</script>
						<!-- } 로그인 끝 -->
						<script type="text/javascript"
							src="http://wcs.naver.net/wcslog.js"></script>
						<script type="text/javascript">
							if (!wcs_add)
								var wcs_add = {};
							wcs_add["wa"] = "s_bf38c5ad14b";
							wcs.inflow("handium.co.kr");
						</script>

						<script type="text/javascript">
							wcs_do();
						</script>
					</div>
					<!-- .at-content -->
				</div>
				<!-- .at-container -->
			</div>
	
		</div>
		<!-- .at-wrapper -->
	</div>
	<!-- .wrapper -->
	</div>
	<!-- .at-html -->

	<div class="at-go">
		<div id="go-btn" class="go-btn">
			<span class="go-top cursor"><img
				src="/handium/thema/img/ad_arrow.png" alt="화살표" /></i></span>
			<!--4차 수정-->
			<span class="go-bottom cursor"><i class="fa fa-chevron-down"></i></span>
		</div>
	</div>

	<!--[if lt IE 9]>
<script type="text/javascript" src="http://www.handium.co.kr/handium/thema/Miso-Basic4/assets/js/respond.js"></script>
<![endif]-->

	<!-- JavaScript -->
	<script>
		var sub_show = "slide";
		var sub_hide = "";
		var menu_startAt = "0";
		var menu_sub = "";
		var menu_subAt = "0";
	</script>
	<script type="text/javascript"
		src="http://www.handium.co.kr/handium/thema/Miso-Basic4/assets/bs3/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="http://www.handium.co.kr/handium/thema/Miso-Basic4/assets/js/sly.min.js"></script>
	<script type="text/javascript"
		src="http://www.handium.co.kr/handium/thema/Miso-Basic4/assets/js/custom.js"></script>

	<script>
		var sidebar_url = "http://www.handium.co.kr/handium/thema/Miso-Basic4/widget/miso-sidebar";
		var sidebar_time = "30";

		$(function() {
			$(".m_at_lnb ul li p.korea").click(function() {
				$(".m_at_lnb ul li p.china,.m_at_lnb ul li p.usa").toggle();

			});
		});
	</script>
	<script
		src="http://www.handium.co.kr/handium/thema/Miso-Basic4/widget/miso-sidebar/sidebar.js"></script>

	<!-- sidebar Box -->
	<aside id="sidebar-box" class="ko">
		<div class="m_at_lnb">
			<ul>

				<li style="padding-left: 10px"><a href="/handium/shop/cart.php"
					title="CART">CART</a></li>
				<li style="padding-left: 10px">|</li>
				<li><a href="/handium/bbs/login.php" title="회원가입">LOG IN</a></li>
				<li><a href="/handium/bbs/register.php" title="로그인">JOIN</a></li>

				<li>
					<p class="korea">
						<a href="#none" title="한국"><img class="ko_img"
							src="/handium/img/south-korea.png" alt="한국" />&nbsp;<img
							src="/handium/thema/Miso-Basic4/widget/miso-sidebar/img/a.png"
							alt="" /></a>
					</p>
					<p class="usa">
						<a href="/handium-en/" title="미국"><img class="usa_img"
							src="/handium/thema/img/usa.jpg" alt="미국" /></a>
					</p>
					<p class="china">
						<a href="/handium-ch/" title="중국"><img class="ch_img"
							src="/handium/thema/img/ch.jpg" alt="중국" /></a>
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


				<div class="sidebar-menu panel-group" id="sidebar_menu"
					role="tablist" aria-multiselectable="true">
					<div class="panel">
						<div class="ca-head" role="tab">
							<a href="/handium/shop/list.php?ca_id=10" class="no-sub">
								SHOP </a>
						</div>
					</div>
					<div class="panel">
						<div class="ca-head" role="tab">
							<a href="/handium/bbs/page.php?hid=M02_01" class="no-sub">
								COLD BREW </a>
						</div>
					</div>
					<div class="panel">
						<div class="ca-head" role="tab">
							<a href="/handium/bbs/page.php?hid=M03_01" class="no-sub">
								ROASTING </a>
						</div>
					</div>
					<div class="panel">
						<div class="ca-head" role="tab">
							<a href="/handium/bbs/page.php?hid=M04_01" class="no-sub">
								BUSINESS </a>
						</div>
					</div>
					<div class="panel">
						<div class="ca-head" role="tab">
							<a href="/handium/bbs/page.php?hid=M05_01" class="no-sub">
								CAFE </a>
						</div>
					</div>
				</div>
			</div>

			<!-- Search -->
			<div id="sidebar-search" class="sidebar-item"></div>

			<!-- User -->
			<div id="sidebar-user" class="sidebar-item">
				<div class="sidebar-login">

					<form id="sidebar_login_form" name="sidebar_login_form"
						method="post"
						action="http://www.handium.co.kr/handium/bbs/login_check.php"
						autocomplete="off" role="form" class="form"
						onsubmit="return sidebar_login(this);">
						<input type="hidden" name="url"
							value="%2Fhandium%2Fbbs%2Flogin.php">
						<div class="form-group">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="fa fa-user gray"></i></span> <input type="text" name="mb_id"
									id="mb_id" class="form-control input-sm" placeholder="아이디"
									tabindex="91">
							</div>
						</div>
						<div class="form-group">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="fa fa-lock gray"></i></span> <input type="password"
									name="mb_password" id="mb_password"
									class="form-control input-sm" placeholder="비밀번호" tabindex="92">
							</div>
						</div>
						<div class="form-group">
							<button type="submit" class="btn btn-navy btn-block"
								tabindex="93">Login</button>
						</div>

						<label class="text-muted" style="letter-spacing: -1px;"> <input
							type="checkbox" name="auto_login" value="1" id="remember_me"
							class="remember-me" tabindex="94"> 자동로그인 및 로그인 상태 유지
						</label>
					</form>

					<div class="h10"></div>


					<!-- Member -->
					<div class="div-title-underline-thin en">
						<b>MEMBER</b>
					</div>
					<ul class="sidebar-list list-links">
						<li><a
							href="http://www.handium.co.kr/handium/bbs/register.php">회원가입</a></li>
						<li><a
							href="http://www.handium.co.kr/handium/bbs/password_lost.php"
							class="win_password_lost">아이디/비밀번호 찾기</a></li>
					</ul>

				</div>

				<div class="h20"></div>

				<!-- Service -->
				<div class="div-title-underline-thin en">
					<b>SERVICE</b>
				</div>

				<ul class="sidebar-list list-links">
					<li><a href="http://www.handium.co.kr/handium/shop/cart.php">장바구니</a></li>
					<li><a
						href="http://www.handium.co.kr/handium/shop/personalpay.php">개인결제</a></li>
					<li><a
						href="http://www.handium.co.kr/handium/shop/orderinquiry.php">주문
							및 배송조회</a></li>
					<li><a href="http://www.handium.co.kr/handium/bbs/faq.php">자주하시는
							질문(FAQ)</a></li>
					<li><a href="http://www.handium.co.kr/handium/bbs/qalist.php">1:1
							문의</a></li>
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

	<div id="sidebar-box-mask" class="sidebar-close"></div>



</body>
</html>
