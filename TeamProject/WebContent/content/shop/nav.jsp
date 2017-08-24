<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<nav class="at-menu">
				<!-- PC Menu -->
				<div class="pc-menu">
					<!-- Menu Button & Right Icon Menu -->
					<div class="at-container">
					    <style>
        @import url('https://fonts.googleapis.com/css?family=Lato:100,200,300,400,700,900');
        a{outline:0;}
    a:hover, a:active, a:focus {
  /* styling for any way a link is about to be used */
        outline:0;
        }
     .pc-menu{height: 100px;box-shadow: 0 0 0 0;background:#151515;
         box-shadow:4px 4px 15px 2px rgba(50,50,50,0.2);
         -webkit-box-shadow:4px 4px 15px 2px rgba(50,50,50,0.2);
         -webkit-box-shadow:4px 4px 15px 2px rgba(50,50,50,0.2);
        position:fixed;left:0;top:29px;width:100%;}
    .at-lnb{position: fixed;left:0;top:0;width:100%;z-index:100;}
    .pc-menu .at-container{height:100%;}
    .pc-menu .nav-top .menu-a{background:none;font-size:15px;letter-spacing: 1px;}
    .pc-menu .nav-top .menu-li.on .menu-a{background: none;}
        .pc-menu .nav-top .menu-li.nav-home .menu-a img{width:120px;}
    .pc-menu .nav-top .menu-li.nav-home{width: 162px !important;margin-right:21.3%;text-align: left;}
    .pc-menu .nav-top.nav-float .menu-li{height: 100%;}
    .pc-menu .nav-top.nav-float .menu-li a{height: 100%;line-height: 100px !important;padding-left:60px;padding-right:0;}
    .pc-menu .nav-top.nav-float .menu-li a:hover{color:#BFA078;background: none;}
        @media (max-width:1040px){
        .pc-menu .nav-top .menu-li.nav-home{margin-right:18%;}
        
    }
    </style>
<script>
    $(document).ready(function(){
                                    
                     $(".pc-menu .nav-top.nav-float .menu-li:eq(1) a").css({"color":"#BFA078"});
        $("#sidebar-box .sidebar-menu .panel:eq(0) a").css({"color":"#BFA078"}); 
             
        
    });
</script>


	<div class="nav-visible" style="height:100%;">
		<div class="at-container" style="height:100%;">
			<div class="nav-top nav-float nav-slide" style="height:100%;">
				<ul class="menu-ul" style="height:100%;">
									<li class="menu-li nav-home off">
						<a class="menu-a nav-height" href="shop.jsp">
                                                        <img src="../thema/img/h_c_logo.png" alt="로고이미지"/>
                            						</a>
					</li>
													<li class="menu-li off">
						<a class="menu-a nav-height" href="shop.jsp">
							SHOP													</a>
											</li>
									<li class="menu-li off">
						<a class="menu-a nav-height" href="/handium/bbs/page.php?hid=M02_01">
							COLD BREW													</a>
											</li>
									<li class="menu-li off">
						<a class="menu-a nav-height" href="/handium/bbs/page.php?hid=M03_01">
							ROASTING													</a>
											</li>
									<li class="menu-li off">
						<a class="menu-a nav-height" href="/handium/bbs/page.php?hid=M04_01">
							BUSINESS													</a>
											</li>
									<li class="menu-li off">
						<a class="menu-a nav-height" href="/handium/bbs/page.php?hid=M05_01">
							CAFE													</a>
											</li>
								</ul>
			</div><!-- .nav-top -->
		</div>	<!-- .nav-container -->
	</div><!-- .nav-visible -->

					<div class="clearfix"></div>
					<div class="nav-back"></div>
				</div><!-- .pc-menu -->

				<!-- PC All Menu -->
				<div class="pc-menu-all">
					<div id="menu-all" class="collapse">
						<div class="at-container table-responsive">
							<table class="table">
							<tr>
															<td class="off">
									<a class="menu-a" href="shop.jsp">
										SHOP																			</a>
																	</td>
															<td class="off">
									<a class="menu-a" href="#">
										COLD BREW																			</a>
																	</td>
															<td class="off">
									<a class="menu-a" href="#">
										ROASTING																			</a>
																	</td>
															<td class="off">
									<a class="menu-a" href="#">
										BUSINESS																			</a>
																	</td>
															<td class="off">
									<a class="menu-a" href="#">
										CAFE																			</a>
																	</td>
														</tr>
							</table>
							<div class="menu-all-btn">
								<div class="btn-group">
									<a class="btn btn-lightgray" href="shop.jsp"><i class="fa fa-home"></i></a>
									<a href="javascript:;" class="btn btn-lightgray" data-toggle="collapse" data-target="#menu-all"><i class="fa fa-times"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div><!-- .pc-menu-all -->

				<!-- Mobile Menu -->
				<div class="m-menu">
					<div class="m-wrap">
	<div class="at-container">
		<div class="m-table en">
			<div class="m-icon">
				<a href="javascript:;" onclick="sidebar_open('sidebar-menu');"><i class="fa fa-bars"></i></a>
			</div>
							<div class="m-icon">
					<a href="#">
													<i class="fa fa-commenting"></i>
							<span class="label bg-blue">BBS</span>
											</a>
				</div>
						<div class="m-list">
				<div class="m-nav" id="mobile_nav">
					<ul class="clearfix">
					<li>
						<a href="#">메인</a>
					</li>
											<li>
							<a href="shop.jsp">
								SHOP															</a>
						</li>
											<li>
							<a href="#">
								COLD BREW															</a>
						</li>
											<li>
							<a href="#">
								ROASTING															</a>
						</li>
											<li>
							<a href="#">
								BUSINESS															</a>
						</li>
											<li>
							<a href="#">
								CAFE															</a>
						</li>
										</ul>
				</div>
			</div>
							<div class="m-icon">
					<a href="cart.jsp" onclick="sidebar_open('sidebar-cart'); return false;"> 
						<i class="fa fa-shopping-bag"></i>
											</a>
				</div>
						<div class="m-icon">
				<a href="javascript:;" onclick="sidebar_open('sidebar-response');">
					<i class="fa fa-bell"></i>
					<span class="label bg-orangered en" style="display:none;">
						<span class="msgCount">0</span>
					</span>
				</a>
			</div>
		</div>
	</div>
</div>

<div class="clearfix"></div>

				</div><!-- .m-menu -->
			</nav>
</body>
</html>