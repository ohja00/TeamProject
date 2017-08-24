<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=10,chrome=1">
<meta name="title" content="회원 가입 > 핸디엄 공식 홈페이지" />
<meta name="publisher" content="핸디엄 공식 홈페이지" />
<meta name="author" content="핸디엄 공식 홈페이지" />
<meta name="robots" content="index,follow" />
<meta name="keywords" content="핸디엄 공식 홈페이지" />
<meta name="description" content="회원 가입 > 핸디엄 공식 홈페이지" />
<meta property="og:title" content="회원 가입 > 핸디엄 공식 홈페이지" />
<meta property="og:site_name" content="핸디엄 공식 홈페이지" />
<meta property="og:author" content="핸디엄 공식 홈페이지" />
<meta property="og:type" content="" />
<meta property="og:description" content="회원 가입 > 핸디엄 공식 홈페이지" />
<meta property="og:url"
	content="http://www.handium.co.kr/handium/bbs/register_form.php" />
<link rel="canonical"
	href="http://www.handium.co.kr/handium/bbs/register_form.php" />
<title>회원 가입 > 핸디엄 공식 홈페이지</title>
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
<link rel="stylesheet" href="../css/register.css">
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
	var g5_purl = "http://www.handium.co.kr/handium/bbs/register_form.php";
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

	<div id="thema_wrapper" class="wrapper  ko"></div>

	<div class="at-wrapper">
		<!-- Menu -->

		<!-- .at-menu -->

		<div class="clearfix"></div>

		<div class="at-title">
			<div class="at-container" style="margin-top: 130px;">
				<div class="page-title en">
					<strong> 회원가입 </strong>
				</div>
				<div class="page-desc hidden-xs">정보 입력</div>
				<div class="clearfix"></div>
			</div>
		</div>


		<div class="at-body">
			<div class="at-container">
				<div class="at-content">
					<script
						src="http://www.handium.co.kr/handium/js/jquery.register_form.js"></script>

					<form class="form-horizontal register-form" role="form"
						id="fregisterform" name="fregisterform"
						action="http://www.handium.co.kr/handium/bbs/register_form_update.php"
						onsubmit="return fregisterform_submit(this);" method="post"
						enctype="multipart/form-data" autocomplete="off">
						<input type="hidden" name="w" value=""> <input
							type="hidden" name="url"
							value="%2Fhandium%2Fbbs%2Fregister_form.php"> <input
							type="hidden" name="pim" value=""> <input type="hidden"
							name="agree" value="1"> <input type="hidden"
							name="agree2" value="1"> <input type="hidden"
							name="cert_type" value=""> <input type="hidden"
							name="cert_no" value=""> <input type="hidden"
							name="mb_sex" value="">
							<div class="panel panel-default">
							<div class="panel-heading">
								<strong>회원 구분</strong>
							</div>
							<div class="panel-body">

								<p>
							    <input type="checkbox" name=mb_mm value="개인회원" checked>개인회원
							    <input type="checkbox" name=mb_md value="Administrator">Administrator
							    </p>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
								<strong>사이트 이용정보 입력</strong>
							</div>
							<div class="panel-body">

								<div class="form-group has-feedback text-gap">
									<label class="col-sm-2 control-label" for="reg_mb_id"><b>아이디</b><strong
										class="sound_only">필수</strong></label>
									<div class="col-sm-3">
										<input type="text" name="mb_id" value="" id="reg_mb_id"
											required class="form-control input-sm" minlength="3"
											maxlength="20"> <span
											class="fa fa-check form-control-feedback"></span> 
										
									</div>
									<div class="col-sm-3" vertical-align=center>
										<input
											type=button value="중복체크" id="checkBtn" >
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-2 col-sm-8 text-muted">
										<div id="msg_mb_id"></div>
										영문자, 숫자, _ 만 입력 가능. 최소 3자이상 입력하세요.
									</div>
								</div>

								<div class="form-group has-feedback">
									<label class="col-sm-2 control-label" for="reg_mb_pwd"><b>비밀번호</b><strong
										class="sound_only">필수</strong></label>
									<div class="col-sm-3">
										<input type="password" name="mb_pwd" id="reg_mb_pwd" required
											class="form-control input-sm" minlength="3" maxlength="20">
										<span class="fa fa-lock form-control-feedback"></span>
									</div>
									<label class="col-sm-2 control-label" for="reg_mb_pwd_re">
									<b>비밀번호  확인</b><strong class="sound_only">필수</strong></label>
									<div class="col-sm-3">
										<input type="password" name="mb_pwd_re" id="reg_mb_pwd_re"
											required class="form-control input-sm" minlength="3"
											maxlength="20"> <span
											class="fa fa-check form-control-feedback"></span>
									</div>
								</div>
							</div>
						</div>

						<div class="panel panel-default">
							<div class="panel-heading">
								<strong>개인정보 입력</strong>
							</div>
							<div class="panel-body">

								<div class="form-group has-feedback">
									<label class="col-sm-2 control-label" for="reg_mb_name"><b>이름</b><strong
										class="sound_only">필수</strong></label>
									<div class="col-sm-3">
										<input type="text" id="reg_mb_name" name="mb_name" value=""
											required class="form-control input-sm" size="10"> <span
											class="fa fa-check form-control-feedback"></span>
									</div>
								</div>

								<div class="form-group has-feedback text-gap">
									<label class="col-sm-2 control-label" for="reg_mb_birth"><b>생년월일</b><strong
										class="sound_only">필수</strong></label>
									<div class="col-sm-3">
										<input type="hidden" name="mb_birth_default" value="">
										<input type="text" name="mb_birth" value="" id="reg_mb_birth"
											required class="form-control input-sm nospace" size="10"
											maxlength="20"> <span
											class="fa fa-user form-control-feedback"></span>
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-2 col-sm-8 text-muted"></div>
								</div>
								<div class="form-group has-feedback text-gap">
									<label class="col-sm-2 control-label" for="reg_mb_phone"><b>휴대폰</b><strong
										class="sound_only">필수</strong></label>
									<div class="col-sm-3">
										<input type="hidden" name="mb_phone_default" value="">
										<input type="text" name="mb_phone" value="" id="reg_mb_phone"
											required class="form-control input-sm nospace" size="10"
											maxlength="20"> <span
											class="fa fa-user form-control-feedback"></span>
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-2 col-sm-8 text-muted"></div>
								</div>
								<div class="form-group has-feedback">
									<label class="col-sm-2 control-label" for="reg_mb_email"><b>E-mail</b><strong
										class="sound_only">필수</strong></label>
									<div class="col-sm-5">
										<input type="hidden" name="old_email" value=""> <input
											type="text" name="mb_email" value="" id="reg_mb_email"
											required class="form-control input-sm email" size="70"
											maxlength="100"> <span
											class="fa fa-envelope form-control-feedback"></span>
									</div>
								</div>





							</div>
						</div>

						<div class="panel panel-default">
							<div class="panel-heading">
								<strong>기타 개인설정</strong>
							</div>
							<div class="panel-body">




								<div class="form-group">
									<label class="col-sm-2 control-label" for="reg_mb_mailling"><b>메일링서비스</b></label>
									<div class="col-sm-8">
										<label class="control-label"> <input type="checkbox"
											name="mb_mailling" value="1" id="reg_mb_mailling" checked>
											정보 메일을 받겠습니다.
										</label>
									</div>
								</div>


								<div class="form-group">
									<label class="col-sm-2 control-label" for="reg_mb_open"><b>정보공개</b></label>
									<div class="col-sm-8">
										<label class="control-label"> <input type="hidden"
											name="mb_open_default" value=""> <input
											type="checkbox" name="mb_open" value="1" checked
											id="reg_mb_open"> 다른분들이 나의 정보를 볼 수 있도록 합니다.
										</label>
									</div>
								</div>
							</div>
						</div>

						<div class="text-center"
							style="margin-top: 60px; margin-bottom: 80px;">
							<a href="http://www.handium.co.kr/handium" class="btn btn-black"
								role="button"
								style="background: none; color: #333 !important; font-weight: 700; border: 1px solid #333;">돌아가기</a>
							<button type="submit" id="btn_submit" class="btn btn-color"
								accesskey="s"
								style="background-color: #bfa078; border: 1px solid #bfa078; font-weight: 700;">가입하기</button>

						</div>

					</form>

					<script>
						$(function() {
							$("#reg_zip_find").css("display", "inline-block");

						});

						// submit 최종 폼체크
						function fregisterform_submit(f) {
							// 회원아이디 검사
							if (f.w.value == "") {
								var msg = reg_mb_id_check();
								if (msg) {
									alert(msg);
									f.mb_id.select();
									return false;
								}
							}

							if (f.w.value == "") {
								if (f.mb_password.value.length < 3) {
									alert("비밀번호를 3글자 이상 입력하십시오.");
									f.mb_password.focus();
									return false;
								}
							}

							if (f.mb_password.value != f.mb_password_re.value) {
								alert("비밀번호가 같지 않습니다.");
								f.mb_password_re.focus();
								return false;
							}

							if (f.mb_password.value.length > 0) {
								if (f.mb_password_re.value.length < 3) {
									alert("비밀번호를 3글자 이상 입력하십시오.");
									f.mb_password_re.focus();
									return false;
								}
							}

							// 이름 검사
							if (f.w.value == "") {
								if (f.mb_name.value.length < 1) {
									alert("이름을 입력하십시오.");
									f.mb_name.focus();
									return false;
								}

								/*
								var pattern = /([^가-힣\x20])/i;
								if (pattern.test(f.mb_name.value)) {
									alert("이름은 한글로 입력하십시오.");
									f.mb_name.select();
									return false;
								}
								 */
							}

							// 닉네임 검사
							if ((f.w.value == "")
									|| (f.w.value == "u" && f.mb_nick.defaultValue != f.mb_nick.value)) {
								var msg = reg_mb_nick_check();
								if (msg) {
									alert(msg);
									f.reg_mb_nick.select();
									return false;
								}
							}

							// E-mail 검사
							if ((f.w.value == "")
									|| (f.w.value == "u" && f.mb_email.defaultValue != f.mb_email.value)) {
								var msg = reg_mb_email_check();
								if (msg) {
									alert(msg);
									f.reg_mb_email.select();
									return false;
								}
							}

							if (typeof f.mb_icon != "undefined") {
								if (f.mb_icon.value) {
									if (!f.mb_icon.value.toLowerCase().match(
											/.(gif)$/i)) {
										alert("회원아이콘이 gif 파일이 아닙니다.");
										f.mb_icon.focus();
										return false;
									}
								}
							}

							if (typeof (f.mb_recommend) != "undefined"
									&& f.mb_recommend.value) {
								if (f.mb_id.value == f.mb_recommend.value) {
									alert("본인을 추천할 수 없습니다.");
									f.mb_recommend.focus();
									return false;
								}

								var msg = reg_mb_recommend_check();
								if (msg) {
									alert(msg);
									f.mb_recommend.select();
									return false;
								}
							}

							if (!chk_captcha())
								return false;

							document.getElementById("btn_submit").disabled = "disabled";

							return true;
						}
					</script>
					<script type="text/javascript" src="http://wcs.naver.net/wcslog.js"></script>
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
		<!-- .at-body -->

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
			<div id="sidebar-search" class="sidebar-item">

				<!-- Search -->
				<div class="div-title-underline-thin en">
					<b>SEARCH</b>
				</div>
				<div class="sidebar-search">
					<form id="ctrlSearch" name="ctrlSearch" method="get"
						onsubmit="return sidebar_search(this);" role="form" class="form">
						<div class="row">
							<div class="col-xs-6">
								<select name="url" class="form-control input-sm">
									<option value="http://www.handium.co.kr/handium/bbs/search.php">게시물</option>
									<option
										value="http://www.handium.co.kr/handium/shop/search.php">상품</option>
									<option
										value="http://www.handium.co.kr/handium/shop/itemuselist.php">후기</option>
									<option
										value="http://www.handium.co.kr/handium/shop/itemqalist.php">문의</option>
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
						<div class="input-group input-group-sm" style="margin-top: 8px;">
							<input type="text" name="stx" class="form-control input-sm"
								value="" placeholder="검색어는 두글자 이상"> <span
								class="input-group-btn">
								<button type="submit" class="btn btn-navy btn-sm">
									<i class="fa fa-search"></i>
								</button>
							</span>
						</div>
					</form>
				</div>
			</div>

			<!-- User -->
			<div id="sidebar-user" class="sidebar-item">
				<div class="sidebar-login">

					<form id="sidebar_login_form" name="sidebar_login_form"
						method="post"
						action="http://www.handium.co.kr/handium/bbs/login_check.php"
						autocomplete="off" role="form" class="form"
						onsubmit="return sidebar_login(this);">
						<input type="hidden" name="url"
							value="%2Fhandium%2Fbbs%2Fregister_form.php">
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
