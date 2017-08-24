<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=10,chrome=1">
<!-- <meta name="title" content="" />
<meta name="publisher" content="" />
<meta name="author" content="" />
<meta name="robots" content="index,follow" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta property="og:title" content="" />
<meta property="og:site_name" content="" />
<meta property="og:author" content="" />
<meta property="og:type" content="" />
<meta property="og:description" content="주문서 작성 > 핸디엄 공식 홈페이지" />
<meta property="og:url" content="/shop/orderform.php?sw_direct=1&sw_guest=1" /> 
<link rel="canonical" href="http://www.handium.co.kr/handium/shop/orderform.php?sw_direct=1&sw_guest=1" />-->
<title>주문서 작성 </title>
<link rel="stylesheet" href="../css/default_shop.css?ver=161101">
<link rel="stylesheet" href="../css/apms.css?ver=161101">

<link rel="stylesheet" href="../thema/Miso-Basic4/assets/bs3/css/bootstrap.min.css" type="text/css" class="thema-mode">
<link rel="stylesheet" href="../thema/Miso-Basic4/colorset/Basic-Box/colorset.css" type="text/css" class="thema-colorset">
<link rel="stylesheet" href="../thema/Miso-Basic4/widget/miso-keyword/widget.css" >
<link rel="stylesheet" href="../skin/apms/order/basic/style.css" type="text/css" >
<link rel="stylesheet" href="../thema/Miso-Basic4/widget/miso-sidebar/widget.css" >
<link rel="stylesheet" href="../css/font-awesome/css/font-awesome.min.css?ver=161101">
<link rel="stylesheet" href="../css/level/basic.css?ver=161101">
<link rel="stylesheet" href="../css/order.css">
<meta property="og:image" content="../img/up_share-img.png">
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
var g5_purl = "http://www.handium.co.kr/handium/shop/orderform.php?sw_direct=1&sw_guest=1";
</script>
<script src="../js/jquery-1.11.3.min.js"></script>
<script src="../js/jquery-migrate-1.2.1.min.js"></script>
<script src="../lang/korean/lang.js?ver=161101"></script>
<script src="../js/common.js?ver=161101"></script>
<script src="../js/wrest.js?ver=161101"></script>
<script src="../js/apms.js?ver=161101"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="../js/shop.order.js"></script>
<script src="../plugin/apms/js/jquery.mobile.swipe.min.js"></script>
</head>
<body class="responsive is-pc">
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
								Order Form							</strong>
						</div>
						<div class="page-desc hidden-xs">
								주문서 작성하기							
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			
			
			<div class="at-body">
			<div class="at-content">
			<script type="text/javascript">
/****************************************************************/
/* m_Completepayment  설명                                      */
/****************************************************************/
/* 인증완료시 재귀 함수                                         */
/* 해당 함수명은 절대 변경하면 안됩니다.                        */
/* 해당 함수의 위치는 payplus.js 보다먼저 선언되어여 합니다.    */
/* Web 방식의 경우 리턴 값이 form 으로 넘어옴                   */
/* EXE 방식의 경우 리턴 값이 json 으로 넘어옴                   */
/****************************************************************/
function m_Completepayment( FormOrJson, closeEvent )
{
    var frm = document.forderform;

    /********************************************************************/
    /* FormOrJson은 가맹점 임의 활용 금지                               */
    /* frm 값에 FormOrJson 값이 설정 됨 frm 값으로 활용 하셔야 됩니다.  */
    /* FormOrJson 값을 활용 하시려면 기술지원팀으로 문의바랍니다.       */
    /********************************************************************/
    GetField( frm, FormOrJson );

    if( frm.res_cd.value == "0000" )
    {
        document.getElementById("display_pay_button").style.display = "none" ;
        document.getElementById("display_pay_process").style.display = "" ;

        frm.submit();
    }
    else
    {
        alert( "[" + frm.res_cd.value + "] " + frm.res_msg.value );

        closeEvent();
    }
}
</script>

<script src="https://pay.kcp.co.kr/plugin/payplus_web.jsp"></script>
<script>
/* Payplus Plug-in 실행 */
function jsf__pay( form )
{
    try
    {
        KCP_Pay_Execute( form );
    }
    catch (e)
    {
        /* IE 에서 결제 정상종료시 throw로 스크립트 종료 */
    }
}
</script>

<form name="forderform" id="forderform" method="post" action="http://www.handium.co.kr/handium/shop/orderformupdate.php" autocomplete="off" role="form" class="form-horizontal">

<div class="well well-sm">
	<i class="fa fa-shopping-cart fa-lg"></i> 주문하실 상품을 확인해 주세요.
</div>

<div class="table-responsive order-item">
	<table id="sod_list" class="div-table table bg-white bsk-tbl">
	<tbody>
	<tr class="tr-head border-black">
		<th scope="col"><span>이미지</span></th>
		<th scope="col"><span>상품명</span></th>
		<th scope="col"><span>총수량</span></th>
		<th scope="col"><span>판매가</span></th>
		<th scope="col" colspan="2"><span>주문시간</span></th>
		<!-- <th scope="col"><span></span></th> -->
		<th scope="col"><span class="last">수령시간</span></th>
		<th scope="col"><span>소계</span></th>

	</tr>
	<tr class="tr-line">
		<td class="text-center">
			<div class="item-img">
				<img src="http://www.handium.co.kr/handium/data/item/1490142602/thumb-H_PC_02_Products_Thumbnail7_70x70.png" width="70" height="70" alt="">					<div class="item-type">일반</div>
			</div>
		</td>
		<td>
			<input type="hidden" name="it_id[0]"    value="1490142602">
			<input type="hidden" name="it_name[0]"  value="콜드브루 커피 원액 1L">
			<input type="hidden" name="it_price[0]" value="19800">
			<input type="hidden" name="cp_id[0]" value="">
			<input type="hidden" name="cp_price[0]" value="0">
			<b>콜드브루 커피 원액 1L</b>
			<div class="well well-sm">
			<ul style="line-height:20px;">
				<li>맛:케냐 / 패키지:미포함 1개 (+0원)</li>
			</ul>
			</div>
		</td>
		<td class="text-center">1</td>
		<td class="text-right">19,800</td>
		<td class="text-center">
						</td>
		<td class="text-right"><b>19,800</b></td>
		<td class="text-right">190</td>
		<td class="text-center">선불</td>
	</tr>
	</tbody>
	</table>
	<table id="sod_list" class="div-table table bg-white bsk-tbl">
		<tbody>
			<tr class="tr-head border-black">
				<th>주문장소</th>
				<th>주문위치</th>
			</tr>
			<tr>
			</tr>
		</tbody>
	</table>
</div>


<!-- 주문상품 합계 시작 { -->
<div class="well">
	<div class="row">
		<div class="col-xs-6">주문금액</div>
		<div class="col-xs-6 text-right">
			<strong>19,800 원</strong>
		</div>
				<div class="col-xs-6">배송비</div>
		<div class="col-xs-6 text-right">
			<strong>3,000 원</strong>
		</div>
	</div>

	<div class="row">
				<div class="col-xs-6 red"> <b>합계금액</b></div>
		<div class="col-xs-6 text-right red">
			<strong id="ct_tot_price">22,800 원</strong>
		</div>
	</div>

	<div class="row">	
		<div class="col-xs-6"> 포인트</div>
		<div class="col-xs-6 text-right">
			<strong>190 점</strong>
		</div>
	</div>
</div>
	<input type="hidden" name="od_price"    value="19800">
	<input type="hidden" name="org_od_price"    value="19800">
	<input type="hidden" name="od_send_cost" value="3000">
	<input type="hidden" name="od_send_cost2" value="0">
	<input type="hidden" name="item_coupon" value="0">
	<input type="hidden" name="od_coupon" value="0">
	<input type="hidden" name="od_send_coupon" value="0">

    <input type="hidden" name="req_tx"          value="pay">
    <input type="hidden" name="site_cd"         value="SR5LB">
    <input type="hidden" name="site_name"       value="(주)핸디엄">
    <input type="hidden" name="def_site_cd"     value="SR5LB">

    <input type="hidden" name="pay_method"  value="">
    <input type="hidden" name="ordr_idxx"   value="2017081117222142">
    <input type="hidden" name="good_name"   value="콜드브루 커피 원액 1L">
    <input type="hidden" name="good_mny"    value="22800">
    <input type="hidden" name="buyr_name"   value="">
    <input type="hidden" name="buyr_mail"   value="">
    <input type="hidden" name="buyr_tel1"   value="">
    <input type="hidden" name="buyr_tel2"   value="">

    <input type="hidden" name="rcvr_name"     value="">
    <input type="hidden" name="rcvr_tel1"     value="">
    <input type="hidden" name="rcvr_tel2"     value="">
    <input type="hidden" name="rcvr_mail"     value="">
    <input type="hidden" name="rcvr_zipx"     value="">
    <input type="hidden" name="rcvr_add1"     value="">
    <input type="hidden" name="rcvr_add2"     value="">

    <input type="hidden" name="payco_direct"   value="">      <!-- PAYCO 결제창 호출 -->

    <input type="hidden" name="quotaopt"    value="12">

    <!-- 필수 항목 : 결제 금액/화폐단위 -->
    <input type="hidden" name="currency"    value="WON">


    <!-- PLUGIN 설정 정보입니다(변경 불가) -->
    <input type="hidden" name="module_type"     value="01">
    <!-- 복합 포인트 결제시 넘어오는 포인트사 코드 : OK캐쉬백(SCSK), 베네피아 복지포인트(SCWB) -->
    <input type="hidden" name="epnt_issu"       value="">
<!--
      ※ 필 수
          필수 항목 : Payplus Plugin에서 값을 설정하는 부분으로 반드시 포함되어야 합니다
          값을 설정하지 마십시오
-->
    <input type="hidden" name="res_cd"          value="">
    <input type="hidden" name="res_msg"         value="">
    <input type="hidden" name="tno"             value="">
    <input type="hidden" name="trace_no"        value="">
    <input type="hidden" name="enc_info"        value="">
    <input type="hidden" name="enc_data"        value="">
    <input type="hidden" name="ret_pay_method"  value="">
    <input type="hidden" name="tran_cd"         value="">
    <input type="hidden" name="bank_name"       value="">
    <input type="hidden" name="bank_issu"       value="">
    <input type="hidden" name="use_pay_method"  value="">

    <!--  현금영수증 관련 정보 : Payplus Plugin 에서 설정하는 정보입니다 -->
    <input type="hidden" name="cash_tsdtime"    value="">
    <input type="hidden" name="cash_yn"         value="">
    <input type="hidden" name="cash_authno"     value="">
    <input type="hidden" name="cash_tr_code"    value="">
    <input type="hidden" name="cash_id_info"    value="">

    <!-- 2012년 8월 18일 정자상거래법 개정 관련 설정 부분 -->
    <!-- 제공 기간 설정 0:일회성 1:기간설정(ex 1:2012010120120131)  -->
    <!--
        2012.08.18 부터 개정 시행되는 '전자상거래 등에서의 소비자보호에 관한 법률'에 따른 코드 변경
        이용기간이 제한되는 컨텐츠 상품이나 정기 과금 상품 등에 한하여 '용역의 제공기간'을
        표기/적용하여야 하며 이와 무관한 실물 배송상품 등의 결제에는 해당되지 않습니다.
        0 : 일반결제
        good_expr의 나머지 적용 방식에 대해서는 KCP에서 제공하는 매뉴얼을 참고해 주세요.
    -->
    <input type="hidden" name="good_expr" value="0">

    <!-- 가맹점에서 관리하는 고객 아이디 설정을 해야 합니다.(필수 설정) -->
	<input type="hidden" name="shop_user_id"    value=""/>
	<!-- 복지포인트 결제시 가맹점에 할당되어진 코드 값을 입력해야합니다.(필수 설정) -->
    <input type="hidden" name="pt_memcorp_cd"   value=""/>

    <!-- 에스크로 항목 -->

    <!-- 에스크로 사용 여부 : 반드시 Y 로 세팅 -->
    <input type="hidden" name="escw_used" value="Y">

    <!-- 에스크로 결제처리 모드 : 에스크로: Y, 일반: N, KCP 설정 조건: O -->
    <input type="hidden" name="pay_mod" value="O">

    <!-- 배송 소요일 : 예상 배송 소요일을 입력 -->
    <input type="hidden" name="deli_term" value="03">

    <!-- 장바구니 상품 개수 : 장바구니에 담겨있는 상품의 개수를 입력 -->
    <input type="hidden" name="bask_cntx" value="1">

    <!-- 장바구니 상품 상세 정보 (자바 스크립트 샘플(create_goodInfo()) 참고) -->
    <input type="hidden" name="good_info" value="seq=1ordr_numb=2017081117222142_0000good_name=콜드브루 커피 원액 1Lgood_cntx=1good_amtx=19800">



<input type="hidden" name="kcp_noint"       value="N">

    <input type="hidden" name="wish_vbank_list" value="">
    <input type="hidden" name="disp_tax_yn"     value="N">
    <input type="hidden" name="site_logo"       value="">

    <input type="hidden" name="skin_indx"      value="1">



			<!-- 주문하시는 분 입력 시작 { -->
		<section id="sod_frm_agree" style="margin-bottom:0px;">
			<div class="panel panel-default">
				
			</div>
			<div class="row row-15">
				<div class="col-sm-4 col-sm-offset-2 col-15">
					<!-- <div data-toggle="buttons">
						<label class="btn btn-green btn-sm btn-block">
							<input type="checkbox" name="agree" value="1" id="agree" autocomplete="off">
							<i class="fa fa-check"></i>
							개인정보처리방침안내에 동의합니다.
						</label>
					</div> -->
					<div class="h10"></div>
				</div>
				<div class="col-sm-4 col-15">
					<!-- <a href="http://www.handium.co.kr/handium/bbs/login.php?url=http%3A%2F%2Fwww.handium.co.kr%2Fhandium%2Fshop%2Forderform.php%3Fsw_direct%3D1" class="btn btn-lightgray btn-sm btn-block">
						<i class="fa fa-sign-in"></i>
						로그인 후 주문합니다.
					</a>
					<div class="h10"></div> -->
				</div>
			</div>
			<div class="h10"></div>
		</section>
	
	<!-- 주문하시는 분 입력 시작 { -->
	<section id="sod_frm_orderer" style="margin-bottom:0px;">
		<div class="panel panel-default">
			<div class="panel-heading"><strong><i class="fa fa-user fa-lg"></i> 주문하시는 분</strong></div>
			<div class="panel-body">
				<div class="form-group has-feedback">
					<label class="col-sm-2 control-label" for="od_name"><b>이름</b><strong class="sound_only">필수</strong></label>
					<div class="col-sm-3">
						<input type="text" name="od_name" value="" id="od_name" required class="form-control input-sm" maxlength="20">
						<span class="fa fa-check form-control-feedback"></span>
					</div>
				</div>
									<div class="form-group has-feedback">
						<label class="col-sm-2 control-label" for="od_pwd"><b>비밀번호</b><strong class="sound_only">필수</strong></label>
						<div class="col-sm-3">
							<input type="password" name="od_pwd" id="od_pwd" required class="form-control input-sm" maxlength="20">
							<span class="fa fa-lock form-control-feedback"></span>
						</div>
						<div class="col-sm-7">
							<span class="help-block">영,숫자 3~20자 (주문서 조회시 필요)</span>
						</div>
					</div>			
							
				<div class="form-group has-feedback">
					<label class="col-sm-2 control-label" for="od_tel"><b>전화번호</b><strong class="sound_only">필수</strong></label>
					<div class="col-sm-3">
						<input type="text" name="od_tel" value="" id="od_tel" required class="form-control input-sm" maxlength="20">
						<span class="fa fa-phone form-control-feedback"></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label class="col-sm-2 control-label" for="od_hp"><b>핸드폰</b></label>
					<div class="col-sm-3">
						<input type="text" name="od_hp" value="" id="od_hp" class="form-control input-sm" maxlength="20">
						<span class="fa fa-mobile form-control-feedback"></span>
					</div>
				</div>

				<div class="form-group has-feedback">
					<label class="col-sm-2 control-label"><b>주소</b><strong class="sound_only">필수</strong></label>
					<div class="col-sm-8">
						<label for="od_zip" class="sound_only">우편번호<strong class="sound_only"> 필수</strong></label>
						<label>
							<input type="text" name="od_zip" value="" id="od_zip" required class="form-control input-sm" size="6" maxlength="6">
						</label>
						<label>
		                    <button type="button" class="btn btn-black btn-sm" style="margin-top:0px;" onclick="win_zip('forderform', 'od_zip', 'od_addr1', 'od_addr2', 'od_addr3', 'od_addr_jibeon');">주소 검색</button>
						</label>

						<div class="addr-line">
							<label class="sound_only" for="od_addr1">기본주소<strong class="sound_only"> 필수</strong></label>
							<input type="text" name="od_addr1" value="" id="od_addr1" required class="form-control input-sm" size="60" placeholder="기본주소">
						</div>

						<div class="addr-line">
							<label class="sound_only" for="od_addr2">상세주소</label>
							<input type="text" name="od_addr2" value="" id="od_addr2" class="form-control input-sm" size="50" placeholder="상세주소">
						</div>

						<label class="sound_only" for="od_addr3">참고항목</label>
						<input type="text" name="od_addr3" value="" id="od_addr3" class="form-control input-sm" size="50" readonly="readonly" placeholder="참고항목">
						<input type="hidden" name="od_addr_jibeon" value="">
					</div>
				</div>

				<div class="form-group has-feedback">
					<label class="col-sm-2 control-label" for="od_email"><b>E-mail</b><strong class="sound_only"> 필수</strong></label>
					<div class="col-sm-5">
						<input type="text" name="od_email" value="" id="od_email" required class="form-control input-sm email" size="35" maxlength="100">
						<span class="fa fa-envelope form-control-feedback"></span>
					</div>
				</div>

							</div>
		</div>
	</section>
	<!-- } 주문하시는 분 입력 끝 -->

	<!-- 받으시는 분 입력 시작 { -->
	<section id="sod_frm_taker">
		<div class="panel panel-default">
			<div class="panel-heading"><strong><i class="fa fa-truck fa-lg"></i> 받으시는 분</strong></div>
			<div class="panel-body">

				<div class="form-group">
					<label class="col-sm-2 control-label"><b>배송지선택</b></label>
					<div class="col-sm-10 radio-line">
													<label>
								<input type="checkbox" name="ad_sel_addr" value="same" id="ad_sel_addr_same">
								주문자와 동일
							</label>
											</div>
				</div>
				
				<div class="form-group has-feedback">
					<label class="col-sm-2 control-label" for="od_b_name"><b>이름</b><strong class="sound_only">필수</strong></label>
					<div class="col-sm-3">
						<input type="text" name="od_b_name" id="od_b_name" required class="form-control input-sm" maxlength="20">
						<span class="fa fa-check form-control-feedback"></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label class="col-sm-2 control-label" for="od_b_tel"><b>전화번호</b><strong class="sound_only">필수</strong></label>
					<div class="col-sm-3">
						<input type="text" name="od_b_tel" id="od_b_tel" required class="form-control input-sm" maxlength="20">
						<span class="fa fa-phone form-control-feedback"></span>
					</div>
				</div>
				<div class="form-group has-feedback">
					<label class="col-sm-2 control-label" for="od_b_hp"><b>핸드폰</b></label>
					<div class="col-sm-3">
						<input type="text" name="od_b_hp" id="od_b_hp" class="form-control input-sm" maxlength="20">
						<span class="fa fa-mobile form-control-feedback"></span>
					</div>
				</div>

				<div class="form-group has-feedback">
					<label class="col-sm-2 control-label"><b>주소</b><strong class="sound_only">필수</strong></label>
					<div class="col-sm-8">
						<label for="od_b_zip" class="sound_only">우편번호<strong class="sound_only"> 필수</strong></label>
						<label>
							<input type="text" name="od_b_zip" id="od_b_zip" required class="form-control input-sm" size="6" maxlength="6">
						</label>
						<label>
							<button type="button" class="btn btn-black btn-sm" style="margin-top:0px;" onclick="win_zip('forderform', 'od_b_zip', 'od_b_addr1', 'od_b_addr2', 'od_b_addr3', 'od_b_addr_jibeon');">주소 검색</button>
						</label>

						<div class="addr-line">
							<label class="sound_only" for="od_b_addr1">기본주소<strong class="sound_only"> 필수</strong></label>
							<input type="text" name="od_b_addr1" id="od_b_addr1" required class="form-control input-sm" size="60" placeholder="기본주소">
						</div>

						<div class="addr-line">
							<label class="sound_only" for="od_b_addr2">상세주소</label>
							<input type="text" name="od_b_addr2" id="od_b_addr2" class="form-control input-sm" size="50" placeholder="상세주소">
						</div>

						<label class="sound_only" for="od_b_addr3">참고항목</label>
						<input type="text" name="od_b_addr3" id="od_b_addr3" class="form-control input-sm" size="50" readonly="readonly" placeholder="참고항목">
						<input type="hidden" name="od_b_addr_jibeon" value="">
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-2 control-label" for="od_memo"><b>전하실말씀</b></label>
					<div class="col-sm-8">
						<textarea name="od_memo" rows=3 id="od_memo" class="form-control input-sm"></textarea>
					</div>
				</div>

			</div>
		</div>
	</section>
	<!-- } 받으시는 분 입력 끝 -->


<section id="sod_frm_pay" class="order-payment">
	<div class="panel panel-default">
		<div class="panel-heading"><strong><i class="fa fa-check fa-lg"></i> 결제정보</strong></div>
		<div class="panel-body">
									<div class="form-group">
				<label class="col-sm-2 control-label"><b>총주문금액</b></label>
				<label class="col-sm-2 control-label">
					<b><span id="od_tot_price">22,800</span></b>원
				</label>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label"><b>추가배송비</b></label>
				<label class="col-sm-2 control-label">
					<span id="od_send_cost2">0</span>원
				</label>
				<div class="col-sm-7">
					<label class="control-label text-muted font-12">지역에 따라 추가되는 도선료 등의 배송비입니다.</label>
				</div>
			</div>

							<div class="form-group">
					<label class="col-sm-2 control-label"><b>결제방법</b></label>
					<div class="col-sm-10 radio-line">
						
													<label><input type="radio" id="od_settle_bank" name="od_settle_case" value="무통장"> 무통장입금</label>
						
						
						
						
													<label><input type="radio" id="od_settle_card" name="od_settle_case" value="신용카드"> 신용카드</label>
						
						
						
						
					</div>
				</div>

				
									<div id="settle_bank" style="display:none">
						<div class="form-group">
							<label class="col-sm-2 control-label" for="od_bank_account"><b>입금할 계좌</b></label>
							<div class="col-sm-4">
								<select name="od_bank_account" id="od_bank_account" class="form-control input-sm">
									<option value="">선택하십시오.</option>
									<option value="우리은행 1005-502-270847 (주)핸디엄">우리은행 1005-502-270847 (주)핸디엄</option>
								</select>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label" for="od_deposit_name"><b>입금자명</b></label>
							<div class="col-sm-2">
								<input type="text" name="od_deposit_name" id="od_deposit_name" class="form-control input-sm" size="10" maxlength="20">
							</div>
						</div>
					</div>
				
					</div>
	</div>
</section>

<div id="display_pay_button" class="btn_confirm">
    <input type="button" value="주문하기" onclick="forderform_check(this.form);" class="btn_submit">
    <a href="javascript:history.go(-1);" class="btn01">취소</a>
</div>
<div id="display_pay_process" style="display:none">
    <img src="http://www.handium.co.kr/handium/shop/img/loading.gif" alt="">
    <span>주문완료 중입니다. 잠시만 기다려 주십시오.</span>
</div>
</form>
<br>

	<div class="well">
	</div>

<!-- Modal -->
<div class="modal fade" id="couponModal" tabindex="-1" role="dialog" aria-labelledby="couponModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-body">
		<div id="couponBox"></div>
	  </div>
    </div>
  </div>
</div>


<script>
var zipcode = "";

$(function() {
	// BS3
	$("#display_pay_button input").removeClass("btn_submit");
	$("#display_pay_button input").addClass("btn btn-color btn-lg");
	$("#display_pay_button a").removeClass("btn01");
	$("#display_pay_button a").removeClass("btn_cancel");
	$("#display_pay_button a").addClass("btn btn-black btn-lg");

	var $cp_btn_el;
    var $cp_row_el;

    $(".cp_btn").click(function() {
        $cp_btn_el = $(this);
        $cp_row_el = $(this).closest("tr");
        //$("#cp_frm").remove();
		$('#couponModal').modal('show');
        var it_id = $cp_btn_el.closest("tr").find("input[name^=it_id]").val();

        $.post(
            "./orderitemcoupon.php",
            { it_id: it_id,  sw_direct: "1" },
            function(data) {
                //$cp_btn_el.after(data);
				$("#couponBox").html(data);
            }
        );
    });

    $(document).on("click", ".cp_apply", function() {
		var $el = $(this).closest("tr");
        var cp_id = $el.find("input[name='f_cp_id[]']").val();
        var price = $el.find("input[name='f_cp_prc[]']").val();
        var subj = $el.find("input[name='f_cp_subj[]']").val();
        var sell_price;

        if(parseInt(price) == 0) {
            if(!confirm(subj+"쿠폰의 할인 금액은 "+price+"원입니다.\n쿠폰을 적용하시겠습니까?")) {
                return false;
            }
        }

        // 이미 사용한 쿠폰이 있는지
        var cp_dup = false;
        var cp_dup_idx;
        var $cp_dup_el;
        $("input[name^=cp_id]").each(function(index) {
            var id = $(this).val();

            if(id == cp_id) {
                cp_dup_idx = index;
                cp_dup = true;
                $cp_dup_el = $(this).closest("tr");;

                return false;
            }
        });

        if(cp_dup) {
            var it_name = $("input[name='it_name["+cp_dup_idx+"]']").val();
            if(!confirm(subj+ "쿠폰은 "+it_name+"에 사용되었습니다.\n"+it_name+"의 쿠폰을 취소한 후 적용하시겠습니까?")) {
                return false;
            } else {
                coupon_cancel($cp_dup_el);
                //$("#cp_frm").remove();
                $cp_dup_el.find(".cp_btn").text("적용").focus();
                $cp_dup_el.find(".cp_cancel").remove();
            }
        }

        var $s_el = $cp_row_el.find(".total_price");;
        sell_price = parseInt($cp_row_el.find("input[name^=it_price]").val());
        sell_price = sell_price - parseInt(price);
        if(sell_price < 0) {
            alert("쿠폰할인금액이 주문금액보다 크므로 쿠폰을 적용할 수 없습니다.");
            return false;
        }
        $s_el.text(number_format(String(sell_price)));
        $cp_row_el.find("input[name^=cp_id]").val(cp_id);
        $cp_row_el.find("input[name^=cp_price]").val(price);

        calculate_total_price();
        //$("#cp_frm").remove();
		$('#couponModal').modal('hide');
        $cp_btn_el.text("변경").focus();
        if(!$cp_row_el.find(".cp_cancel").size())
            $cp_btn_el.after("<button type=\"button\" class=\"cp_cancel btn btn-black btn-xs\">취소</button>");
    });

    $(document).on("click", "#cp_close", function() {
		$('#couponModal').modal('hide');
		//$("#cp_frm").remove();
        $cp_btn_el.focus();
    });

    $(document).on("click", ".cp_cancel", function() {
		coupon_cancel($(this).closest("tr"));
        calculate_total_price();
        //$("#cp_frm").remove();
        $(this).closest("tr").find(".cp_btn").text("적용").focus();
        $(this).remove();
    });

    $("#od_coupon_btn").click(function() {
        //$("#od_coupon_frm").remove();
		$('#couponModal').modal('show');
        var $this = $(this);
        var price = parseInt($("input[name=org_od_price]").val()) - parseInt($("input[name=item_coupon]").val());
        if(price <= 0) {
            alert('금액이 0원이므로 쿠폰을 사용할 수 없습니다.');
            return false;
        }
        $.post(
            "./ordercoupon.php",
            { price: price },
            function(data) {
                //$this.after(data);
				$("#couponBox").html(data);
            }
        );
    });

    $(document).on("click", ".od_cp_apply", function() {
		var $el = $(this).closest("tr");
        var cp_id = $el.find("input[name='o_cp_id[]']").val();
        var price = parseInt($el.find("input[name='o_cp_prc[]']").val());
        var subj = $el.find("input[name='o_cp_subj[]']").val();
        var send_cost = $("input[name=od_send_cost]").val();
        var item_coupon = parseInt($("input[name=item_coupon]").val());
        var od_price = parseInt($("input[name=org_od_price]").val()) - item_coupon;

        if(price == 0) {
            if(!confirm(subj+"쿠폰의 할인 금액은 "+price+"원입니다.\n쿠폰을 적용하시겠습니까?")) {
                return false;
            }
        }

        if(od_price - price <= 0) {
            alert("쿠폰할인금액이 주문금액보다 크므로 쿠폰을 적용할 수 없습니다.");
            return false;
        }

        $("input[name=sc_cp_id]").val("");
        $("#sc_coupon_btn").text("쿠폰적용");
        $("#sc_coupon_cancel").remove();

        $("input[name=od_price]").val(od_price - price);
        $("input[name=od_cp_id]").val(cp_id);
        $("input[name=od_coupon]").val(price);
        $("input[name=od_send_coupon]").val(0);
        $("#od_cp_price").text(number_format(String(price)));
        $("#sc_cp_price").text(0);
        calculate_order_price();
        //$("#od_coupon_frm").remove();
		$('#couponModal').modal('hide');
        $("#od_coupon_btn").text("쿠폰변경").focus();
        if(!$("#od_coupon_cancel").size())
            $("#od_coupon_btn").after("<button type=\"button\" id=\"od_coupon_cancel\" class=\"btn btn-black btn-sm\">쿠폰취소</button>");
    });

    $(document).on("click", "#od_coupon_close", function() {
		//$("#od_coupon_frm").remove();
		$('#couponModal').modal('hide');
        $("#od_coupon_btn").focus();
    });

    $(document).on("click", "#od_coupon_cancel", function() {
		var org_price = $("input[name=org_od_price]").val();
        var item_coupon = parseInt($("input[name=item_coupon]").val());
        $("input[name=od_price]").val(org_price - item_coupon);
        $("input[name=sc_cp_id]").val("");
        $("input[name=od_coupon]").val(0);
        $("input[name=od_send_coupon]").val(0);
        $("#od_cp_price").text(0);
        $("#sc_cp_price").text(0);
        calculate_order_price();
        //$("#od_coupon_frm").remove();
        $("#od_coupon_btn").text("쿠폰적용").focus();
        $(this).remove();
        $("#sc_coupon_btn").text("쿠폰적용");
        $("#sc_coupon_cancel").remove();
    });

    $("#sc_coupon_btn").click(function() {
        //$("#sc_coupon_frm").remove();
		$('#couponModal').modal('show');
        var $this = $(this);
        var price = parseInt($("input[name=od_price]").val());
        var send_cost = parseInt($("input[name=od_send_cost]").val());
        $.post(
            "./ordersendcostcoupon.php",
            { price: price, send_cost: send_cost },
            function(data) {
                //$this.after(data);
				$("#couponBox").html(data);
            }
        );
    });

    $(document).on("click", ".sc_cp_apply", function() {
		var $el = $(this).closest("tr");
        var cp_id = $el.find("input[name='s_cp_id[]']").val();
        var price = parseInt($el.find("input[name='s_cp_prc[]']").val());
        var subj = $el.find("input[name='s_cp_subj[]']").val();
        var send_cost = parseInt($("input[name=od_send_cost]").val());

        if(parseInt(price) == 0) {
            if(!confirm(subj+"쿠폰의 할인 금액은 "+price+"원입니다.\n쿠폰을 적용하시겠습니까?")) {
                return false;
            }
        }

        $("input[name=sc_cp_id]").val(cp_id);
        $("input[name=od_send_coupon]").val(price);
        $("#sc_cp_price").text(number_format(String(price)));
        calculate_order_price();
        //$("#sc_coupon_frm").remove();
		$('#couponModal').modal('hide');
        $("#sc_coupon_btn").text("쿠폰변경").focus();
        if(!$("#sc_coupon_cancel").size())
            $("#sc_coupon_btn").after("<button type=\"button\" id=\"sc_coupon_cancel\" class=\"btn btn-black btn-sm\">쿠폰취소</button>");
    });

    $(document).on("click", "#sc_coupon_close", function() {
		//$("#sc_coupon_frm").remove();
		$('#couponModal').modal('hide');
        $("#sc_coupon_btn").focus();
    });

    $(document).on("click", "#sc_coupon_cancel", function() {
		$("input[name=od_send_coupon]").val(0);
        $("#sc_cp_price").text(0);
        calculate_order_price();
        //$("#sc_coupon_frm").remove();
        $("#sc_coupon_btn").text("쿠폰적용").focus();
        $(this).remove();
    });

    $("#od_b_addr2").focus(function() {
        var zip = $("#od_b_zip").val().replace(/[^0-9]/g, "");
        if(zip == "")
            return false;

        var code = String(zip);

        if(zipcode == code)
            return false;

        zipcode = code;

        calculate_sendcost(code);
    });

    // 배송지선택
    $("input[name=ad_sel_addr]").on("click", function() {
        var addr = $(this).val().split(String.fromCharCode(30));

        if (addr[0] == "same") {
            gumae2baesong();
        } else {
            if(addr[0] == "new") {
                for(i=0; i<10; i++) {
                    addr[i] = "";
                }
            }

            var f = document.forderform;
            f.od_b_name.value        = addr[0];
            f.od_b_tel.value         = addr[1];
            f.od_b_hp.value          = addr[2];
            f.od_b_zip.value         = addr[3] + addr[4];
            f.od_b_addr1.value       = addr[5];
            f.od_b_addr2.value       = addr[6];
            f.od_b_addr3.value       = addr[7];
            f.od_b_addr_jibeon.value = addr[8];
            f.ad_subject.value       = addr[9];

            var zip1 = addr[3].replace(/[^0-9]/g, "");
            var zip2 = addr[4].replace(/[^0-9]/g, "");

            var code = String(zip1) + String(zip2);

            if(zipcode != code) {
                calculate_sendcost(code);
            }
        }
    });

    // 배송지목록
    $("#order_address").on("click", function() {
        var url = this.href;
        window.open(url, "win_address", "left=100,top=100,width=800,height=600,scrollbars=1");
        return false;
    });
});

function coupon_cancel($el) {
    var $dup_sell_el = $el.find(".total_price");
    var $dup_price_el = $el.find("input[name^=cp_price]");
    var org_sell_price = $el.find("input[name^=it_price]").val();

    $dup_sell_el.text(number_format(String(org_sell_price)));
    $dup_price_el.val(0);
    $el.find("input[name^=cp_id]").val("");
}

function calculate_total_price() {
    var $it_prc = $("input[name^=it_price]");
    var $cp_prc = $("input[name^=cp_price]");
    var tot_sell_price = sell_price = tot_cp_price = 0;
    var it_price, cp_price, it_notax;
    var tot_mny = comm_tax_mny = comm_vat_mny = comm_free_mny = tax_mny = vat_mny = 0;
    var send_cost = parseInt($("input[name=od_send_cost]").val());

    $it_prc.each(function(index) {
        it_price = parseInt($(this).val());
        cp_price = parseInt($cp_prc.eq(index).val());
        sell_price += it_price;
        tot_cp_price += cp_price;
    });

    tot_sell_price = sell_price - tot_cp_price + send_cost;

    $("#ct_tot_coupon").text(number_format(String(tot_cp_price))+" 원");
    $("#ct_tot_price").text(number_format(String(tot_sell_price))+" 원");

    $("input[name=good_mny]").val(tot_sell_price);
    $("input[name=od_price]").val(sell_price - tot_cp_price);
    $("input[name=item_coupon]").val(tot_cp_price);
    $("input[name=od_coupon]").val(0);
    $("input[name=od_send_coupon]").val(0);
            $("input[name=od_temp_point]").val(0);
        calculate_order_price();
}

function calculate_order_price() {
    var sell_price = parseInt($("input[name=od_price]").val());
    var send_cost = parseInt($("input[name=od_send_cost]").val());
    var send_cost2 = parseInt($("input[name=od_send_cost2]").val());
    var send_coupon = parseInt($("input[name=od_send_coupon]").val());
    var tot_price = sell_price + send_cost + send_cost2 - send_coupon;

    $("input[name=good_mny]").val(tot_price);
    $("#od_tot_price").text(number_format(String(tot_price)));
    }

function calculate_temp_point() {
    var sell_price = parseInt($("input[name=od_price]").val());
    var mb_point = parseInt();
    var max_point = parseInt(30000);
    var point_unit = parseInt(100);
    var temp_point = max_point;

    if(temp_point > sell_price)
        temp_point = sell_price;

    if(temp_point > mb_point)
        temp_point = mb_point;

    temp_point = parseInt(temp_point / point_unit) * point_unit;

    $("#use_max_point").text("최대 "+number_format(String(temp_point))+"점");
    $("input[name=max_temp_point]").val(temp_point);
}

function calculate_sendcost(code) {
    $.post(
        "./ordersendcost.php",
        { zipcode: code },
        function(data) {
            $("input[name=od_send_cost2]").val(data);
            $("#od_send_cost2").text(number_format(String(data)));

            zipcode = code;

            calculate_order_price();
        }
    );
}

function calculate_tax() {
    var $it_prc = $("input[name^=it_price]");
    var $cp_prc = $("input[name^=cp_price]");
    var sell_price = tot_cp_price = 0;
    var it_price, cp_price, it_notax;
    var tot_mny = comm_free_mny = tax_mny = vat_mny = 0;
    var send_cost = parseInt($("input[name=od_send_cost]").val());
    var send_cost2 = parseInt($("input[name=od_send_cost2]").val());
    var od_coupon = parseInt($("input[name=od_coupon]").val());
    var send_coupon = parseInt($("input[name=od_send_coupon]").val());
    var temp_point = 0;

    $it_prc.each(function(index) {
        it_price = parseInt($(this).val());
        cp_price = parseInt($cp_prc.eq(index).val());
        sell_price += it_price;
        tot_cp_price += cp_price;
        it_notax = $("input[name^=it_notax]").eq(index).val();
        if(it_notax == "1") {
            comm_free_mny += (it_price - cp_price);
        } else {
            tot_mny += (it_price - cp_price);
        }
    });

    if($("input[name=od_temp_point]").size())
        temp_point = parseInt($("input[name=od_temp_point]").val());

    tot_mny += (send_cost + send_cost2 - od_coupon - send_coupon - temp_point);
    if(tot_mny < 0) {
        comm_free_mny = comm_free_mny + tot_mny;
        tot_mny = 0;
    }

    tax_mny = Math.round(tot_mny / 1.1);
    vat_mny = tot_mny - tax_mny;
    $("input[name=comm_tax_mny]").val(tax_mny);
    $("input[name=comm_vat_mny]").val(vat_mny);
    $("input[name=comm_free_mny]").val(comm_free_mny);
}

// 구매자 정보와 동일합니다.
function gumae2baesong() {
    var f = document.forderform;

    f.od_b_name.value = f.od_name.value;
    f.od_b_tel.value  = f.od_tel.value;
    f.od_b_hp.value   = f.od_hp.value;
    f.od_b_zip.value  = f.od_zip.value;
    f.od_b_addr1.value = f.od_addr1.value;
    f.od_b_addr2.value = f.od_addr2.value;
    f.od_b_addr3.value = f.od_addr3.value;
    f.od_b_addr_jibeon.value = f.od_addr_jibeon.value;

    calculate_sendcost(String(f.od_b_zip.value));
}
</script><script>
	$(function() {
		$("#od_settle_bank").on("click", function() {
			$("[name=od_deposit_name]").val( $("[name=od_name]").val() );
			$("#settle_bank").show();
					});

		$("#od_settle_point").on("click", function() {
			$("#settle_bank").hide();
			$("#sod_frm_pt").hide();
		});

		$("#od_settle_iche,#od_settle_card,#od_settle_vbank,#od_settle_hp,#od_settle_easy_pay,#od_settle_kakaopay").bind("click", function() {
			$("#settle_bank").hide();
					});
	});

	function forderform_check(f) {

				if (!f.agree.checked) {
			alert("개인정보처리방침안내의 내용에 동의하셔야 주문하실 수 있습니다.");
			f.agree.focus();
			return false;
		}
		
		// 재고체크
		var stock_msg = order_stock_check();
		if(stock_msg != "") {
			alert(stock_msg);
			return false;
		}
		
		errmsg = "";
		errfld = "";
		var deffld = "";

		check_field(f.od_name, "주문하시는 분 이름을 입력하십시오.");
		check_field(f.od_tel, "주문하시는 분 전화번호를 입력하십시오.");
					if (typeof(f.od_pwd) != 'undefined')
			{
				clear_field(f.od_pwd);
				if( (f.od_pwd.value.length<3) || (f.od_pwd.value.search(/([^A-Za-z0-9]+)/)!=-1) )
					error_field(f.od_pwd, "회원이 아니신 경우 주문서 조회시 필요한 비밀번호를 3자리 이상 입력해 주십시오.");
			}
			check_field(f.od_addr1, "주소검색을 이용하여 주문하시는 분 주소를 입력하십시오.");
			//check_field(f.od_addr2, " 주문하시는 분의 상세주소를 입력하십시오.");
			check_field(f.od_zip, "");

			clear_field(f.od_email);
			if(f.od_email.value=='' || f.od_email.value.search(/(\S+)@(\S+)\.(\S+)/) == -1)
				error_field(f.od_email, "E-mail을 바르게 입력해 주십시오.");

			if (typeof(f.od_hope_date) != "undefined")
			{
				clear_field(f.od_hope_date);
				if (!f.od_hope_date.value)
					error_field(f.od_hope_date, "희망배송일을 선택하여 주십시오.");
			}

			check_field(f.od_b_name, "받으시는 분 이름을 입력하십시오.");
			check_field(f.od_b_tel, "받으시는 분 전화번호를 입력하십시오.");
			check_field(f.od_b_addr1, "주소검색을 이용하여 받으시는 분 주소를 입력하십시오.");
			//check_field(f.od_b_addr2, "받으시는 분의 상세주소를 입력하십시오.");
			check_field(f.od_b_zip, "");
				var od_settle_bank = document.getElementById("od_settle_bank");
		if (od_settle_bank) {
			if (od_settle_bank.checked) {
				check_field(f.od_bank_account, "계좌번호를 선택하세요.");
				check_field(f.od_deposit_name, "입금자명을 입력하세요.");
			}
		}

		// 배송비를 받지 않거나 더 받는 경우 아래식에 + 또는 - 로 대입
		f.od_send_cost.value = parseInt(f.od_send_cost.value);

		if (errmsg) {
			alert(errmsg);
			errfld.focus();
			return false;
		}

		var settle_case = document.getElementsByName("od_settle_case");
		var settle_check = false;
		var settle_method = "";
		for (i=0; i<settle_case.length; i++) {
			if (settle_case[i].checked) {
				settle_check = true;
				settle_method = settle_case[i].value;
				break;
			}
		}
		if (!settle_check) {
			alert("결제방식을 선택하십시오.");
			return false;
		}

		var od_price = parseInt(f.od_price.value);
		var send_cost = parseInt(f.od_send_cost.value);
		var send_cost2 = parseInt(f.od_send_cost2.value);
		var send_coupon = parseInt(f.od_send_coupon.value);

		var max_point = 0;
		if (typeof(f.max_temp_point) != "undefined")
			max_point  = parseInt(f.max_temp_point.value);

		var temp_point = 0;
		if (typeof(f.od_temp_point) != "undefined") {
			if (f.od_temp_point.value) {
				var point_unit = parseInt(100);
				temp_point = parseInt(f.od_temp_point.value);

				if (temp_point > 0) {
					alert("회원님의 포인트보다 많이 결제할 수 없습니다.");
					f.od_temp_point.select();
					return false;
				}

				if (settle_method == "포인트") {
					;
				} else {
					if (temp_point < 0) {
						alert("포인트를 0 이상 입력하세요.");
						f.od_temp_point.select();
						return false;
					}

					if (temp_point > od_price) {
						alert("상품 주문금액(배송비 제외) 보다 많이 포인트결제할 수 없습니다.");
						f.od_temp_point.select();
						return false;
					}

					if (temp_point > max_point) {
						alert(max_point + "점 이상 결제할 수 없습니다.");
						f.od_temp_point.select();
						return false;
					}

					if (parseInt(parseInt(temp_point / point_unit) * point_unit) != temp_point) {
						alert("포인트를 "+String(point_unit)+"점 단위로 입력하세요.");
						f.od_temp_point.select();
						return false;
					}
				}

				// pg 결제 금액에서 포인트 금액 차감
				if(settle_method != "무통장" && settle_method != "포인트") {
					f.good_mny.value = od_price + send_cost + send_cost2 - send_coupon - temp_point;
				}
			}
		}

		if (document.getElementById("od_settle_point")) {
			if (document.getElementById("od_settle_point").checked) {
				var tmp_point = parseInt(f.od_temp_point.value);

				if (tmp_point > 0) {
					;
				} else {
					alert("포인트를 입력해 주세요.");
					f.od_temp_point.select();
					return false;
				}

				var tot_point = od_price + send_cost + send_cost2 - send_coupon;

				if (tot_point != tmp_point) {
					alert("결제하실 금액과 포인트가 일치하지 않습니다.");
					f.od_temp_point.select();
					return false;
				}
			}

		}

		var tot_price = od_price + send_cost + send_cost2 - send_coupon - temp_point;

		if (document.getElementById("od_settle_iche")) {
			if (document.getElementById("od_settle_iche").checked) {
				if (tot_price < 150) {
					alert("계좌이체는 150원 이상 결제가 가능합니다.");
					return false;
				}
			}
		}

		if (document.getElementById("od_settle_card")) {
			if (document.getElementById("od_settle_card").checked) {
				if (tot_price < 1000) {
					alert("신용카드는 1000원 이상 결제가 가능합니다.");
					return false;
				}
			}
		}

		if (document.getElementById("od_settle_hp")) {
			if (document.getElementById("od_settle_hp").checked) {
				if (tot_price < 350) {
					alert("휴대폰은 350원 이상 결제가 가능합니다.");
					return false;
				}
			}
		}

		
		// 카카오페이 지불
		if(settle_method == "KAKAOPAY") {
						getTxnId(f);
			return false;
		}

		// pay_method 설정
				f.site_cd.value = f.def_site_cd.value;
		f.payco_direct.value = "";
		switch(settle_method) {
			case "계좌이체":
				f.pay_method.value = "010000000000";
				break;
			case "가상계좌":
				f.pay_method.value = "001000000000";
				break;
			case "휴대폰":
				f.pay_method.value = "000010000000";
				break;
			case "신용카드":
				f.pay_method.value = "100000000000";
				break;
			case "간편결제":
								f.pay_method.value   = "100000000000";
				f.payco_direct.value = "Y";
				break;
			case "포인트":
				f.pay_method.value = "포인트";
				break;
			default:
				f.pay_method.value = "무통장";
				break;
		}
		
		// 결제정보설정
				f.buyr_name.value = f.od_name.value;
		f.buyr_mail.value = f.od_email.value;
		f.buyr_tel1.value = f.od_tel.value;
		f.buyr_tel2.value = f.od_hp.value;
		f.rcvr_name.value = f.od_b_name.value;
		f.rcvr_tel1.value = f.od_b_tel.value;
		f.rcvr_tel2.value = f.od_b_hp.value;
		f.rcvr_mail.value = f.od_email.value;
		f.rcvr_zipx.value = f.od_b_zip.value;
		f.rcvr_add1.value = f.od_b_addr1.value;
		f.rcvr_add2.value = f.od_b_addr2.value;

		if(f.pay_method.value != "무통장" && f.pay_method.value != "포인트") {
	        jsf__pay( f );
		} else {
			f.submit();
		}
						
        
                 
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
</script><script src="../js/sns.js"></script>

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
		<span class="go-top cursor"><img src="../thema/img/ad_arrow.png" alt="화살표"/></i></span><!--4차 수정-->
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
<script type="text/javascript" src="../thema/Miso-Basic4/assets/bs3/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../thema/Miso-Basic4/assets/js/sly.min.js"></script>
<script type="text/javascript" src="../thema/Miso-Basic4/assets/js/custom.js"></script>


<script>
var sidebar_url = "../thema/Miso-Basic4/widget/miso-sidebar";
var sidebar_time = "30";
    
    $(function(){
        $(".m_at_lnb ul li p.korea").click(function(){
            $(".m_at_lnb ul li p.china,.m_at_lnb ul li p.usa").toggle();
            
            
        });
    });
    
</script>
<script src="../thema/Miso-Basic4/widget/miso-sidebar/sidebar.js"></script>

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
