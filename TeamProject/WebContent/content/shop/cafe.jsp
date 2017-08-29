<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="com.sist.dao.*,java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<jsp:useBean id="cn"  class="com.sist.controller.CafeController"/>
<%
	cn.controller(request);  
%>
<c:set var="imgs" value='${ cvo.cafe_img.split(",")}'></c:set>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=10,chrome=1">

<title>콜드브루 커피 원액 1L</title>
<link rel="stylesheet" href="../css/default_shop.css?ver=161101">
<link rel="stylesheet" href="../css/apms.css?ver=161101">
<!-- -->
<link rel="stylesheet"
	href="../thema/Miso-Basic4/assets/bs3/css/bootstrap.min.css"
	type="text/css" class="thema-mode">
<link rel="stylesheet"
	href="../thema/Miso-Basic4/colorset/Basic-Box/colorset.css"
	type="text/css" class="thema-colorset">
<link rel="stylesheet"
	href="../thema/Miso-Basic4/widget/miso-keyword/widget.css">
<link rel="stylesheet" href="../skin/apms/item/Miso-Basic4/style.css">
<link rel="stylesheet"
	href="../thema/Miso-Basic4/widget/miso-sidebar/widget.css">
<link rel="stylesheet"
	href="../css/font-awesome/css/font-awesome.min.css?ver=161101">
<link rel="stylesheet" href="../css/level/basic.css?ver=161101">
<link rel="stylesheet" href="../css/cafe.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script>
	var winObj=null;
	// BS3
	$(function() {	
		var no=$('#cafeno').attr("value");
	
		$.ajax({
			type:'GET',
			url:'cafe_review.jsp',
			data:{"cafeno":no,"page":1,"mode":6},
			
			success:function(response){		
				$('#cafe_review').html(response);
			},
			error:function(request,status,error){
		        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		       }
		});
		
		$('.alink').click(function() {
			var pageno = $(this).text();

			var no=$('#cafeno').attr("value");
			
			$.ajax({
				type:'GET',
				url:'cafe_review.jsp',
				data:{"cafeno":no,"page":pageno},
				success:function(response){
					$('#cafe_review').html(response);
				}
			});			
		});
		$("select.it_option").addClass("form-control input-sm");
		$("select.it_supply").addClass("form-control input-sm");
		if (winObj!=null){
			winObj.close();
			winObj=null;
		}
	});
	function review_write(){
		var cno=$('#cafeno').val();
		
		var link="review_write.jsp?cafeno="+cno;
		winObj= window.open(link,"리뷰쓰기", "width=500px, height:500px,menubar=no,scrollbar=no,resizable=yes,toolbar=no");
		//winObj.document.getElementById("cafeno").value=cno;
	}
	
	// 재입고SMS 알림
	function popup_stocksms(it_id, ca_id) {
		url = "./itemstocksms.php?it_id=" + it_id + "&ca_id=" + ca_id;
		opt = "scrollbars=yes,width=616,height=420,top=10,left=10";
		popup_window(url, "itemstocksms", opt);
		}

	// 바로구매, 장바구니 폼 전송
	function fitem_submit(f) {
		if (document.pressed == "장바구니") {
			f.sw_direct.value = 0;
		} else { // 바로구매
			f.sw_direct.value = 1;
		}

		// 판매가격이 0 보다 작다면
		if (document.getElementById("it_price").value < 0) {
			alert("전화로 문의해 주시면 감사하겠습니다.");
			return false;
		}

		if ($(".it_opt_list").size() < 1) {
			alert("선택옵션을 선택해 주십시오.");
			return false;
		}

		var val, io_type, result = true;
		var sum_qty = 0;
		var min_qty = parseInt(0);
		var max_qty = parseInt(0);
		var $el_type = $("input[name^=io_type]");

		$("input[name^=ct_qty]").each(function(index) {
			val = $(this).val();

			if (val.length < 1) {
				alert("수량을 입력해 주십시오.");
				result = false;
				return false;
			}

			if (val.replace(/[0-9]/g, "").length > 0) {
				alert("수량은 숫자로 입력해 주십시오.");
				result = false;
				return false;
			}

			if (parseInt(val.replace(/[^0-9]/g, "")) < 1) {
				alert("수량은 1이상 입력해 주십시오.");
				result = false;
				return false;
			}

			io_type = $el_type.eq(index).val();
			if (io_type == "0")
				sum_qty += parseInt(val);
		});

		if (!result) {
			return false;
		}

		if (min_qty > 0 && sum_qty < min_qty) {
			alert("선택옵션 개수 총합 " + number_format(String(min_qty))
					+ "개 이상 주문해 주십시오.");
			return false;
		}

		if (max_qty > 0 && sum_qty > max_qty) {
			alert("선택옵션 개수 총합 " + number_format(String(max_qty))
					+ "개 이하로 주문해 주십시오.");
			return false;
		}

		if (document.pressed == "장바구니") {
			$.post("./itemcart.php", $(f).serialize(), function(error) {
				if (error != "OK") {
					alert(error.replace(/\\n/g, "\n"));
					return false;
				} else {
					if (confirm("장바구니에 담겼습니다.\n\n바로 확인하시겠습니까?")) {
						document.location.href = "./cart.php";
					}
				}
			});
			return false;
		} else {
			return true;
		}
	}

	// Wishlist
	function apms_wishlist(it_id) {
		if (!it_id) {
			alert("코드가 올바르지 않습니다.");
			return false;
		}

		$.post("./itemwishlist.php", {
			it_id : it_id
		}, function(error) {
			if (error != "OK") {
				alert(error.replace(/\\n/g, "\n"));
				return false;
			} else {
				if (confirm("위시리스트에 담겼습니다.\n\n바로 확인하시겠습니까?")) {
					document.location.href = "./wishlist.php";
				}
			}
		});

		return false;
	}

	// Recommend
	function apms_recommend(it_id, ca_id) {
		if (!g5_is_member) {
			alert("회원만 추천하실 수 있습니다.");
		} else {
			url = "./itemrecommend.php?it_id=" + it_id + "&ca_id=" + ca_id;
			opt = "scrollbars=yes,width=616,height=420,top=10,left=10";
			popup_window(url, "itemrecommend", opt);
		}
	}
</script>
<!-- <script>
	$(function(){
		
	});
</script> -->
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
	var g5_purl = "http://www.handium.co.kr/handium/shop/item.php?it_id=1490142602";
</script>
<script src="../js/jquery-1.11.3.min.js"></script>
<script src="../js/jquery-migrate-1.2.1.min.js"></script>
<script src="../lang/korean/lang.js?ver=161101"></script>
<script src="../js/common.js?ver=161101"></script>
<script src="../js/wrest.js?ver=161101"></script>
<script src="../js/apms.js?ver=161101"></script>
<script src="../plugin/apms/js/jquery.mobile.swipe.min.js"></script>
</head>
<body class="responsive is-pc">
	<div class="at-body">
		<div class="at-container">
			<div class="at-content">
				<script src="../skin/apms/item/Miso-Basic4/shop.js"></script>

				<div class="item-wrap">
					<div class="item-head">
						<div class="row">
							<div class="col-sm-5 col img-container">
								<div id="sit_pvi">
									<div id="sit_pvi_big">
										<a href=${imgs[0] } target="_blank"
											class="popup_item_image visible"> <img src=${imgs[0] }
											style='width: 100%;'></a>
									</div>
								</div>
							</div>
							<div class="col-sm-7 col form-container" id="right_form">
								<div id="buy_form" class="text">
									<div class="fs_buy_name">
										<!-- 카테고리 값 넘겨오기 -->
										<span style="font-size: 14px;" class="fs_item_name">카페 소개
										</span> <input type="hidden" id="cafeno" value="${cvo.cafe_no }">
									</div>
									
									<div class="price font-16 en fs_price">
										<div class="pull-left">
											<b class="fs_price">${cvo.cafe_nm }</b>
										</div>
										<div class="clearfix"></div>
									</div>
									<h1>${cvo.cafe_tel }</h1>	
									<h1>${cvo.cafe_addr	 }</h1>	
									<h1>카페 평점 : ${star	 }</h1>	
									<div class="item_linner"></div>
									<!--2차 수정-->
									
									<div>
										
									</div>

									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>

					<div class="clearfix"></div>
					<div id="tspot"></div>

					<div class="item-tab">
						<div class="tabs">
							<!-- 제품 상세페이지 이미지 -->
							<div class="tab-content bg-white">
								<div class="tab-pane active" id="item_tab1">
									<div>
										<div>
											<p>
											<center>
												<h3>추천업체</h3>
											</center>
											</p>
										</div>
										<c:forEach var="vo" items="${recommand}" varStatus="0">
										<c:set var="images" value='${ vo.cafe_img.split(",")}'></c:set>
											<div class="recom_cafe">
												<a href="cafe.jsp?cafeno=${vo.cafe_no }">
												<img src=${images[0] } width=230px height=190px></a>
												<div class="clearfix"></div>
												<label>${vo.cafe_nm }</label>
												<div class="clearfix"></div>
												<label>${vo.cafe_star }</label>
												<div class="clearfix"></div>
												<label>${vo.cafe_addr }</label>
												<div class="clearfix"></div>
											</div>
										</c:forEach>
										<%-- <div class="recom_cafe">
											<img src=${img2 } width=230px>
											<div class="clearfix"></div>
											<label>${cvo.cafe_nm }</label>
											<div class="clearfix"></div>
											<label>${cvo.cafe_tel }</label>
											<div class="clearfix"></div>
										</div>
										<div class="recom_cafe">
											<img src=${img2 } width=230px>
											<div class="clearfix"></div>
											<label>${cvo.cafe_nm }</label>
											<div class="clearfix"></div>
											<label>${cvo.cafe_tel }</label>
											<div class="clearfix"></div>
										</div>
										<div class="recom_cafe">
											<img src=${img2 } width=230px>
											<div class="clearfix"></div>
											<label>${cvo.cafe_nm }</label>
											<div class="clearfix"></div>
											<label>${cvo.cafe_tel }</label>
											<div class="clearfix"></div>
										</div> --%>

									</div>
									<div class="item-explan img-resize">
										<p align="center" style="text-align: center;">
											<%-- <img
													title="4a6cb2c29d24310e04d164e40910997d_1491364709_3218.jpg"
													src=${img1 }
													alt="4a6cb2c29d24310e04d164e40910997d_1491364709_3218.jpg" /><br
													style="clear: both;" />  --%>
											<%-- 메뉴판 --%>
											<jsp:include page="cafe_menupan.jsp?cafeno=${cafeno }&mode=1" />
										</p>
									</div>
								</div>
								<div class="tab-pane" id="item_tab5"></div>

							</div>
						</div>
					</div>

					<div class="h20"></div>


					<!-- 위젯에서 해당글 클릭시 이동위치 : icv - 댓글, iuv - 후기, iqv - 문의 -->
					<div id="iuv"></div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="fs_reviews">REVIEWS</h3>
						</div>
						<div class="panel-body" style="padding-bottom: 0px;">
							<div id="itemuse">
								<div class="pull-right"
									style="position: absolute; right: 0; top: -40px; font-family: 'Lato-Bold', sans-serif;">
									<div class="btn-group"
										style="font-family: 'SpoqaHanSans-Regular';">
										<button
											style="background-color: #333; color: #fff; border: 1px solid #333;"
											type="button" class="fs_btnHover btn btn-color btn-sm"
											onclick="review_write();">
											후기쓰기<span class="sound_only"> 새 창</span>
										</button>
										<a
											style="background-color: #575757; border: 1px solid #575757; color: #fff;"
											class="btn btn-navy btn-sm" href="./itemuselist.php">더보기</a>
									</div>
								</div>
								<div class="list-board" id="cafe_review">
									<%-- <jsp:include page="cafe_review.jsp?cafeno=${cvo.cafe_no }"></jsp:include> --%>
									<div class="clearfix"></div>
								</div>

								<div class="use-btn">
									<div class="item-page pull-left"
										style="margin-top: 0px; margin-bottom: 0;">
										<ul class="pagination pagination-sm en no-margin">
											<li class="disabled"><a><i
													class="fa fa-angle-double-left"></i></a></li>
											<li class="disabled"><a><i class="fa fa-angle-left"></i></a></li>
											<c:forEach var="i" begin="1"
												end="${totalpage<=10?totalpage:10 }">
												<li class="active"><a class="alink">${i }</a></li>
											</c:forEach>
											<li class="disabled"><a><i class="fa fa-angle-right"></i></a></li>
											<li class="disabled"><a><i
													class="fa fa-angle-double-right"></i></a></li>
										</ul>
										<div class="clearfix"></div>
									</div>

									<div class="clearfix"></div>
								</div>

								<script>
									function more_is(id) {
										$("#" + id).toggle();
									}
								</script>
							</div>
						</div>
					</div>
					<div class="h30"></div>
				</div>

				<script>
					$(function() {

						$('.item-tab a[data-toggle="tab"]').on(
								'shown.bs.tab',
								function(e) {
									var ref = $(e.target).attr("ref") // activated tab
									var tid = $(e.target).attr("tid") // activated tab
									$('.item-tab .nav-tabs li').removeClass(
											'active');
									$('.tab-' + ref).addClass('active');
									if (tid == "1") {
										location.href = "#tspot";
									}
								});

						// 상품이미지 첫번째 링크
						$("#sit_pvi_big a:first").addClass("visible");

						// 상품이미지 미리보기 (썸네일에 마우스 오버시)
						$("#sit_pvi .img_thumb").bind(
								"mouseover focus",
								function() {
									var idx = $("#sit_pvi .img_thumb").index(
											$(this));
									$("#sit_pvi_big a.visible").removeClass(
											"visible");
									$("#sit_pvi_big a:eq(" + idx + ")")
											.addClass("visible");
								});

						// 상품이미지 크게보기
						$(".popup_item_image").click(
								function() {
									var url = $(this).attr("href");
									var top = 10;
									var left = 10;
									var opt = 'scrollbars=yes,top=' + top
											+ ',left=' + left;
									popup_window(url, "largeimage", opt);

									return false;
								});

						$("a.view_image")
								.click(
										function() {
											window
													.open(
															this.href,
															"large_image",
															"location=yes,links=no,toolbar=no,top=10,left=10,width=10,height=10,resizable=yes,scrollbars=no,status=no");
											return false;
										});
					});
				</script>


				<script>
					function fsubmit_check(f) {
						// 판매가격이 0 보다 작다면
						if (document.getElementById("it_price").value < 0) {
							alert("전화로 문의해 주시면 감사하겠습니다.");
							return false;
						}

						if ($(".it_opt_list").size() < 1) {
							alert("상품의 선택옵션을 선택해 주십시오.");
							return false;
						}

						var val, io_type, result = true;
						var sum_qty = 0;
						var min_qty = parseInt(0);
						var max_qty = parseInt(0);
						var $el_type = $("input[name^=io_type]");

						$("input[name^=ct_qty]").each(function(index) {
							val = $(this).val();

							if (val.length < 1) {
								alert("수량을 입력해 주십시오.");
								result = false;
								return false;
							}

							if (val.replace(/[0-9]/g, "").length > 0) {
								alert("수량은 숫자로 입력해 주십시오.");
								result = false;
								return false;
							}

							if (parseInt(val.replace(/[^0-9]/g, "")) < 1) {
								alert("수량은 1이상 입력해 주십시오.");
								result = false;
								return false;
							}

							io_type = $el_type.eq(index).val();
							if (io_type == "0")
								sum_qty += parseInt(val);
						});

						if (!result) {
							return false;
						}

						if (min_qty > 0 && sum_qty < min_qty) {
							alert("선택옵션 개수 총합 "
									+ number_format(String(min_qty))
									+ "개 이상 주문해 주십시오.");
							return false;
						}

						if (max_qty > 0 && sum_qty > max_qty) {
							alert("선택옵션 개수 총합 "
									+ number_format(String(max_qty))
									+ "개 이하로 주문해 주십시오.");
							return false;
						}

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
				<script src="http://www.handium.co.kr/handium/js/sns.js"></script>

			</div>
			<!-- .at-content -->
		</div>
		<!-- .at-container -->
	</div>
	<%-- 		<!-- .at-body -->
		<%
			pageContext.include("footer.jsp");
		%> --%>


	<div class="at-go">
		<div id="go-btn" class="go-btn">
			<span class="go-top cursor"><img
				src="../thema/img/ad_arrow.png" alt="화살표" /></i></span>
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
		src="../thema/Miso-Basic4/assets/bs3/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="../thema/Miso-Basic4/assets/js/sly.min.js"></script>
	<script type="text/javascript"
		src="../thema/Miso-Basic4/assets/js/custom.js"></script>
	<script>
		var sidebar_url = "../thema/Miso-Basic4/widget/miso-sidebar";
		var sidebar_time = "30";

		$(function() {
			$(".m_at_lnb ul li p.korea").click(function() {
				$(".m_at_lnb ul li p.china,.m_at_lnb ul li p.usa").toggle();

			});
		});
	</script>
	<script src="../thema/Miso-Basic4/widget/miso-sidebar/sidebar.js"></script>

	<!-- sidebar Box -->
	<%-- 	<%
		pageContext.include("sidebar_Box.jsp");
	%>
 --%>
	<div id="sidebar-box-mask" class="sidebar-close"></div>



</body>
</html>
