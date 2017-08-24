<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=10,chrome=1">
<meta name="title" content="장바구니 > 핸디엄 공식 홈페이지" />
<meta name="publisher" content="핸디엄 공식 홈페이지" />
<meta name="author" content="핸디엄 공식 홈페이지" />
<meta name="robots" content="index,follow" />
<meta name="keywords" content="핸디엄 공식 홈페이지" />
<meta name="description" content="장바구니 > 핸디엄 공식 홈페이지" />
<meta property="og:title" content="장바구니 > 핸디엄 공식 홈페이지" />
<meta property="og:site_name" content="핸디엄 공식 홈페이지" />
<meta property="og:author" content="핸디엄 공식 홈페이지" />
<meta property="og:type" content="" />
<meta property="og:description" content="장바구니 > 핸디엄 공식 홈페이지" />
<meta property="og:url" content="http://www.handium.co.kr/handium/shop/cart.php" />
<link rel="canonical" href="http://www.handium.co.kr/handium/shop/cart.php" />
<title>장바구니 > 핸디엄 공식 홈페이지</title>
<link rel="stylesheet" href="http://www.handium.co.kr/handium/css/default_shop.css?ver=161101">
<link rel="stylesheet" href="http://www.handium.co.kr/handium/css/apms.css?ver=161101">

<link rel="stylesheet" href="http://www.handium.co.kr/handium/thema/Miso-Basic4/assets/bs3/css/bootstrap.min.css" type="text/css" class="thema-mode">
<link rel="stylesheet" href="http://www.handium.co.kr/handium/thema/Miso-Basic4/colorset/Basic-Box/colorset.css" type="text/css" class="thema-colorset">
<link rel="stylesheet" href="http://www.handium.co.kr/handium/thema/Miso-Basic4/widget/miso-keyword/widget.css" >
<link rel="stylesheet" href="http://www.handium.co.kr/handium/skin/apms/order/basic/style.css" >
<link rel="stylesheet" href="http://www.handium.co.kr/handium/thema/Miso-Basic4/widget/miso-sidebar/widget.css" >
<link rel="stylesheet" href="http://www.handium.co.kr/handium/css/font-awesome/css/font-awesome.min.css?ver=161101">
<link rel="stylesheet" href="http://www.handium.co.kr/handium/css/level/basic.css?ver=161101">
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
var g5_purl = "http://www.handium.co.kr/handium/shop/cart.php";
</script>
<script src="http://www.handium.co.kr/handium/js/jquery-1.11.3.min.js"></script>
<script src="http://www.handium.co.kr/handium/js/jquery-migrate-1.2.1.min.js"></script>
<script src="http://www.handium.co.kr/handium/lang/korean/lang.js?ver=161101"></script>
<script src="http://www.handium.co.kr/handium/js/common.js?ver=161101"></script>
<script src="http://www.handium.co.kr/handium/js/wrest.js?ver=161101"></script>
<script src="http://www.handium.co.kr/handium/js/apms.js?ver=161101"></script>
<script src="http://www.handium.co.kr/handium/plugin/apms/js/jquery.mobile.swipe.min.js"></script>
</head>
<body class="responsive is-pc">
<style>
		.at-container {max-width:1025px;}
	.no-responsive .wrapper, .no-responsive .at-container-wide { min-width:1025px; }
	.no-responsive .boxed.wrapper, .no-responsive .at-container { width:1025px; }
	.at-menu .nav-height { height:44px; line-height:44px !important; }
	.pc-menu, .pc-menu .nav-full-back, .pc-menu .nav-full-height { height:44px; }
	.pc-menu .nav-top.nav-float .menu-a, .pc-menu .nav-mega .menu-a { padding:0px 25px; }
	.pc-menu .nav-top.nav-float .sub-1div::before { left: 25px; }
	.pc-menu .nav-full-first, .pc-menu .nav-full-last, .pc-menu .nav-full.on .sub-1div { height: 400px; }
	.pc-menu .nav-full.on, .pc-menu .nav-full.on .at-container { height:444px; }
	.pc-menu .subm-w { width:170px; }
	.pc-menu .nav-content, .pc-menu .nav-cw { width:170px; }
	.pc-menu .nav-content-height { height:400px; }
	.pc-menu .nav-content .sub-content { width:860px; left:170px; }
	@media all and (min-width:1200px) {
		.responsive .boxed.wrapper { max-width:1025px; }
	}
</style>
<style>
     /*폰트패밀리*/
    .pc-menu .menu-a{font-weight: 400; }
    .pc-menu .nav-top .menu-a{font-weight: normal;font-size:16px;}
    /*폰트패밀리*/
   .at-lnb{background-color:#151515;border-bottom:1px solid #2C2C2C;border-top:1px solid #2C2C2C;line-height: 28px;}
    .at-lnb .topBanner a{color:#fff;font-size:11px;}
    .at-lnb ul > li{padding:0;padding-left:20px;}
    .topBanner >ul >li:after{content: "";}
    .m-header div#m_icon{display: inline-block;font-size:20px;}
    .m-header{position: fixed;left:0;top:0;widows: 100%;background:#151515;transition: all .4s;z-index:100;
        box-Shadow:0 2px 10px rgba(0,0,0,0.3);-webkit-box-Shadow:0 2px 10px rgba(0,0,0,0.3);-moz-box-Shadow:0 2px 10px rgba(0,0,0,0.3);}
    .responsive .m-header{width: 100%;}
    .m-header div#m_icon{display: inline-block;font-size:30px;position: absolute;right:30px;top:30px;}
    .m-header .header-icon, .m-header .header-logo{padding:20px 20px;}
    .m-header a img{width:120px;}
    @media (max-width:1020px){
        
    }
</style>
	<div id="thema_wrapper" class="wrapper  ko"></div>
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
			
							<div class="at-title">
					<div class="at-container" style="margin-top:130px;">
						<div class="page-title en">
							<strong>
								Cart							</strong>
						</div>
													<div class="page-desc hidden-xs">
								장바구니							</div>
												<div class="clearfix"></div>
					</div>
				</div>
			
			
			<div class="at-body">
									<div class="at-container">
											<div class="at-content">
									
<script src="http://www.handium.co.kr/handium/skin/apms/order/basic/shop.js"></script>

<!-- Modal -->
<div class="modal fade" id="cartModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-body">
		<div id="mod_option_box"></div>
	  </div>
    </div>
  </div>
</div>

<form name="frmcartlist" id="sod_bsk_list" method="post" action="http://www.handium.co.kr/handium/shop/cartupdate.php" class="form" role="form">
    <div class="table-responsive">
		<table class="div-table table bsk-tbl bg-white">
        <tbody>
        <tr class="tr-head border-black">
            <th scope="col">
                <label for="ct_all" class="sound_only">상품 전체</label>
                <span><input type="checkbox" name="ct_all" value="1" id="ct_all" checked="checked"></span>
            </th>
			<th scope="col"><span>이미지</span></th>
            <th scope="col"><span>상품명</span></th>
            <th scope="col"><span>총수량</span></th>
            <th scope="col"><span>판매가</span></th>
            <th scope="col"><span>소계</span></th>
            <th scope="col"><span>포인트</span></th>
            <th scope="col"><span class="last">배송비</span></th>
		</tr>
		                    <tr><td colspan="8" class="text-center text-muted"><p style="padding:50px 0;">장바구니가 비어 있습니다.</p></td></tr>
		        </tbody>
        </table>
    </div>

    
    <div style="margin-bottom:15px; text-align:center;">
        	        <a href="http://www.handium.co.kr/handium/shop/" class="btn btn-color btn-sm">계속하기</a>
            </div>

</form>


<script>
	$(function() {
		var close_btn_idx;

		// 선택사항수정
		$(".mod_options").click(function() {
			var it_id = $(this).closest("tr").find("input[name^=it_id]").val();
			var $this = $(this);
			close_btn_idx = $(".mod_options").index($(this));
			$('#cartModal').modal('show');
			$.post(
				"./cartoption.php",
				{ it_id: it_id },
				function(data) {
					$("#mod_option_form").remove();
					//$this.after("<div id=\"mod_option_frm\"></div>");
					$("#mod_option_box").html(data);
					price_calculate();
				}
			);
		});

		// 모두선택
		$("input[name=ct_all]").click(function() {
			if($(this).is(":checked"))
				$("input[name^=ct_chk]").attr("checked", true);
			else
				$("input[name^=ct_chk]").attr("checked", false);
		});

		// 옵션수정 닫기
	    $(document).on("click", "#mod_option_close", function() {
			$('#cartModal').modal('hide');
			//$("#mod_option_frm").remove();
			$("#mod_option_form").remove();
			$(".mod_options").eq(close_btn_idx).focus();
		});
		$("#win_mask").click(function () {
			$('#cartModal').modal('hide');
			//$("#mod_option_frm").remove();
			$("#mod_option_form").remove();
			$(".mod_options").eq(close_btn_idx).focus();
		});

	});

	function fsubmit_check(f) {
		if($("input[name^=ct_chk]:checked").size() < 1) {
			alert("구매하실 상품을 하나이상 선택해 주십시오.");
			return false;
		}

		return true;
	}

	function form_check(act) {
		var f = document.frmcartlist;
		var cnt = f.records.value;

		if (act == "buy")
		{
			if($("input[name^=ct_chk]:checked").size() < 1) {
				alert("주문하실 상품을 하나이상 선택해 주십시오.");
				return false;
			}

			f.act.value = act;
			f.submit();
		}
		else if (act == "alldelete")
		{
			f.act.value = act;
			f.submit();
		}
		else if (act == "seldelete")
		{
			if($("input[name^=ct_chk]:checked").size() < 1) {
				alert("삭제하실 상품을 하나이상 선택해 주십시오.");
				return false;
			}

			f.act.value = act;
			f.submit();
		}

		return true;
	}
</script>
<script type="text/javascript" src="http://wcs.naver.net/wcslog.js"></script>
<script type="text/javascript">
if(!wcs_add) var wcs_add = {};
wcs_add["wa"] = "s_bf38c5ad14b";
wcs.inflow("handium.co.kr");
</script>

<script type="text/javascript">
wcs_do();
</script><script src="http://www.handium.co.kr/handium/js/sns.js"></script>
<style>
    
    li{list-style: none;}
    .at-footer .at-links{background-color:#151515;}
    .at-infos{background-color:#151515;}
    .at-footer .at-about > li{color:#A0A0A0;float: none;font-size:12px;line-height:20px;}
    #infoWrap ul{float: left;font-family: 'SpoqaHanSans-Regular';}
    #infoWrap:after{content:"";display: block;clear: both;}
    #infoinfo{width:78%;}
    #infoWrap ul.policy{padding-right:45px;}
    .policy,.contact{padding:0;color:#A0A0A0;line-height:20px;font-size:12px;}
    .policy .title,.contact .title{font-family:'latoR',sans-serif;font-size:13px;color:#fff;}
    .policy li:frist-child{}
    .policy a,.contact a{color:#A0A0A0;font-family: 'SpoqaHanSans-Regular';}
    .m_block{display:none;}
    
    
    .at-footer .at-infos .media{padding:50px 0;}
    .at-footer .at-infos #m_top img{width:68px;margin-top:15px;}
    .at-go .go-btn span img{margin-top:-8px;}/*4차 수정*/
    @media (max-width: 767px){
        .responsive .at-footer .at-infos .media{text-align: left;}
        
    }
    @media (max-width:545px){
        .m_none{display: none;}
        img.m_block{display: block;margin-top:30px;margin-left:20px;margin-bottom:30px;}
        #m_top{width: 100%;}
        #m_top img{width: 68px;}
        
        #infoWrap{width:100%;}
        #infoinfo{width: 100%;}
        .policy{padding-left:20px;}
        .policy,.contact{width:auto;margin-top:25px;margin-bottom:60px;}
        .policy li,.contact li{display: inline-block;}
        .policy li:first-child,.contact li:first-child{display:block;}
        .m_block{display:block;}
        
        .at-footer .at-about > li{padding-left:20px;}
    }
</style>
															</div><!-- .at-content -->
										</div><!-- .at-container -->
							</div><!-- .at-body -->
				<%
					pageContext.include("footer.jsp");
				%>		
					</div><!-- .at-wrapper -->
	</div><!-- .wrapper -->
</div><!-- .at-html -->

<div class="at-go">
	<div id="go-btn" class="go-btn">
		<span class="go-top cursor"><img src="/handium/thema/img/ad_arrow.png" alt="화살표"/></i></span><!--4차 수정-->
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
<script type="text/javascript" src="http://www.handium.co.kr/handium/thema/Miso-Basic4/assets/bs3/js/bootstrap.min.js"></script>
<script type="text/javascript" src="http://www.handium.co.kr/handium/thema/Miso-Basic4/assets/js/sly.min.js"></script>
<script type="text/javascript" src="http://www.handium.co.kr/handium/thema/Miso-Basic4/assets/js/custom.js"></script>

<style>
    /* 사이드바 메뉴 중 불필요 요소 삭제 */
    .sidebar-item{display:none;}
    
    /*위젯 사이드바 menu + wiget css 수정*/
    #sidebar-box{height:auto;background-color:rgb(21,21,21);box-shadow: rgba(50, 50, 50, 0.2) 4px 4px 15px 2px;}
    #sidebar-menu{margin:50px 0;}
    #sidebar-box:after{display: block;content: "";clear: both;}
    #sidebar-box .sidebar-menu .ca-head > a{border:none;color:#fff;text-align: center;font-size:18px;    padding-bottom:10px;}
    #sidebar-box .sidebar-menu .ca-head > a:hover{color:#B49771;}
    #sidebar-box .sidebar-menu .ca-head.active > a{color:#B49771 !important;font-weight: 400 !important;}
    #sidebar-box .sidebar-menu .ca-head > a.no-sub:after{content: "";}
    #sidebar-box .sidebar-menu .panel{border:none;}
    #sidebar-box .sidebar-menu .ca-head{border:none;}
    #sidebar-box .sidebar-menu{border-top:none;}
    #sidebar-box .sidebar-wing-close{position: absolute;right:20px;top:26px;z-index: 9999;background-color: transparent;
    border:none;font-size:30px;font-weight: 100;color:#fff;text-align: right;}
    #sidebar-box .sidebar-wing-close:after{clear: both;display: block;content: "";}
    #sidebar-box .sidebar-content{overflow: visible;}
    
    .m_at_lnb{color:#fff;position: relative;top:30px;z-index:999;}
    
    .m_at_lnb ul{width: 100%;padding-right:50px;padding-top:10px;margin:0;position: relative;}
    
    .m_at_lnb ul:after{display: block;content: ""; clear: both;}
    
    .m_at_lnb ul li{display: inline-block;float: right;line-height: 25px;padding-left:20px;}
    
    .m_at_lnb ul li:last-child{position: absolute;width:70px;height:21px;left:20px;top:9px;}
    .m_at_lnb ul li:first-child{margin-right:12px;}
    
    .m_at_lnb ul li p{position: absolute;left:0;top:0;width:50px;height:21px;line-height:21px;margin:0;}
    .m_at_lnb ul li p .usa_img{width:25px;}
    .m_at_lnb ul li p .ko_img{width:25px;}
    .m_at_lnb ul li p .ch_img{width:25px;}
    .m_at_lnb ul li p a{display: block;width:100%;height:100%;}
    .m_at_lnb ul li p.usa{position: absolute;left:0;top:23px;width:50px;height:21px;display:none;}
    .m_at_lnb ul li p.china{position: absolute;left:0;top:43px;width:50px;height:21px;display:none;}
    
    .m_at_lnb a{color:#fff;}
</style>
<script>
var sidebar_url = "http://www.handium.co.kr/handium/thema/Miso-Basic4/widget/miso-sidebar";
var sidebar_time = "30";
    
    $(function(){
        $(".m_at_lnb ul li p.korea").click(function(){
            $(".m_at_lnb ul li p.china,.m_at_lnb ul li p.usa").toggle();
            
            
        });
    });
    
</script>
<script src="http://www.handium.co.kr/handium/thema/Miso-Basic4/widget/miso-sidebar/sidebar.js"></script>

<!-- sidebar Box -->
<%
	pageContext.include("sidebar_Box.jsp");
%>
<div id="sidebar-box-mask" class="sidebar-close"></div>




<!-- 아미나빌더 1.7.5 / 그누보드 5.2.4 / 영카트 5.2.4.1 -->
<!-- ie6,7에서 사이드뷰가 게시판 목록에서 아래 사이드뷰에 가려지는 현상 수정 -->
<!--[if lte IE 7]>
<script>
$(function() {
    var $sv_use = $(".sv_use");
    var count = $sv_use.length;

    $sv_use.each(function() {
        $(this).css("z-index", count);
        $(this).css("position", "relative");
        count = count - 1;
    });
});
</script>
<![endif]-->

</body>
</html>
