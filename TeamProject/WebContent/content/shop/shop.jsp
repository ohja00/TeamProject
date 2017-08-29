<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="cn" class="com.sist.controller.CafeController" />
<%
	cn.controller(request);
	
%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=10,chrome=1">
<meta name="title" content="ALL PRODUCTS 리스트 > 핸디엄 공식 홈페이지" />
<meta name="publisher" content="핸디엄 공식 홈페이지" />
<meta name="author" content="핸디엄 공식 홈페이지" />
<meta name="robots" content="index,follow" />
<meta name="keywords" content="핸디엄 공식 홈페이지" />
<meta name="description" content="ALL PRODUCTS 리스트 > 핸디엄 공식 홈페이지" />
<meta property="og:title" content="ALL PRODUCTS 리스트 > 핸디엄 공식 홈페이지" />
<meta property="og:site_name" content="핸디엄 공식 홈페이지" />
<meta property="og:author" content="핸디엄 공식 홈페이지" />
<meta property="og:type" content="" />
<meta property="og:description" content="ALL PRODUCTS 리스트 > 핸디엄 공식 홈페이지" />
<meta property="og:url"
	content="http://www.handium.co.kr/handium/shop/list.php?ca_id=10" />
<link rel="canonical"
	href="http://www.handium.co.kr/handium/shop/list.php?ca_id=10" />
<title>ALL PRODUCTS 리스트 > 핸디엄 공식 홈페이지</title>
<link rel="stylesheet" href="../css/default_shop.css?ver=161101">
<link rel="stylesheet" href="../css/apms.css?ver=161101">

<link rel="stylesheet"
	href="../thema/Miso-Basic4/assets/bs3/css/bootstrap.min.css"
	type="text/css" class="thema-mode">
<link rel="stylesheet"
	href="../thema/Miso-Basic4/colorset/Basic-Box/colorset.css"
	type="text/css" class="thema-colorset">
<link rel="stylesheet"
	href="../thema/Miso-Basic4/widget/miso-keyword/widget.css">
<link rel="stylesheet" href="../skin/apms/list/Miso-Basic4/style.css">
<link rel="stylesheet"
	href="../thema/Miso-Basic4/widget/miso-sidebar/widget.css">
<link rel="stylesheet"
	href="../css/font-awesome/css/font-awesome.min.css?ver=161101">
<link rel="stylesheet" href="../css/level/basic.css?ver=161101">
<link rel="stylesheet" href="../css/shop.css">
<meta property="og:image" content="/handium/img/up_share-img.png">
<link rel="shortcut icon" href="/handium/favicon.ico">
<!--[if lte IE 8]>
<script src="http://www.handium.co.kr/handium/js/html5.js"></script>
<![endif]-->
<script>
// 자바스크립트에서 사용하는 전역변수 선언
var g5_url       = "http://www.handium.co.kr/handium";
var g5_bbs_url   = "http://www.handium.co.kr/handium/bbs";
var g5_is_member = "";
var g5_is_admin  = "";
var g5_is_mobile = "";
var g5_bo_table  = "";
var g5_sca       = "";
var g5_pim       = "";
var g5_editor    = "";
var g5_responsive    = "1";
var g5_cookie_domain = "";
var g5_purl = "http://www.handium.co.kr/handium/shop/list.php?ca_id=10";
</script>
<script src="../js/jquery-1.11.3.min.js"></script>
<script src="../js/jquery-migrate-1.2.1.min.js"></script>
<script src="../lang/korean/lang.js?ver=161101"></script>
<script src="../js/common.js?ver=161101"></script>
<script src="../js/wrest.js?ver=161101"></script>
<script src="../js/apms.js?ver=161101"></script>
<script src="../plugin/apms/js/jquery.mobile.swipe.min.js"></script>
<script src="../plugin/apms/js/imagesloaded.pkgd.min.js"></script>
<script src="../plugin/apms/js/masonry.pkgd.min.js"></script>
<script src="../plugin/apms/js/jquery.infinitescroll.min.js"></script>
</head>
<body class="responsive is-pc">
  
	<div id="thema_wrapper" class="wrapper  ko">
		<%
			pageContext.include("header.jsp"); 
		%>
		<div class="at-wrapper">
			<!-- Menu -->
			<%
			 	pageContext.include("nav.jsp"); 
			%>

			<!-- .at-menu -->

			<div class="clearfix"></div>
			<div class="main_center">
				<jsp:include page="${main_jsp }"></jsp:include>
			</div>

			
			<!-- .at-body -->
	<%
		pageContext.include("footer.jsp");
	%>

		</div>
		<!-- .at-wrapper -->
	</div>
	<!-- .wrapper -->


</body>
</html>

<!-- Miso-Basic4 -->
