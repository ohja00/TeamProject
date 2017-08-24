<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
		<header class="at-header">
			<!-- LNB -->
			<aside class="at-lnb">
				<div class="at-container">
					<!-- LNB Left -->
					<div class="pull-left">
						<!--
                            <ul>
							<li><a href="javascript:;" id="favorite">즐겨찾기</a></li>
							<li><a href="http://www.handium.co.kr/handium/rss/" target="_blank">RSS 구독</a></li>
								
							<li><a>08월 11일(금)</a></li>
						</ul>
                        -->
					</div>
					<!-- LNB Right -->
					<div class="pull-right topBanner">
<!--
                                                                    
-->
                        <ul style="padding:0;">
                            
                                                    <li>
                                <a href="register.jsp" title="">JOIN</a>
                            </li> 
                            <li>
                                <a href="login.jsp" title="">LOG IN</a>
                            </li>
                                                    <li style="color:#fff;">
                                |
                            </li>
                            <li>
                                <a href="cart.jsp" title="CART" >CART</a>
                            </li>
                            <li>
                                <a href="#" title="미국"><img src="../thema/img/usa.jpg" alt="usa"/>&nbsp;</a>
                                
                                <a href="#" title="중국"><img src="../thema/img/ch.jpg" alt="h"/></a>
                            </li>
                        
                            
                        </ul>	
					</div>
					<div class="clearfix"></div>
				</div>
			</aside>

			<!-- PC Header -->
        <!--
			<div class="pc-header">
				<div class="at-container">
					 PC Logo 
					<div class="header-logo">
						<a href="http://www.handium.co.kr/handium/shop">
                            <img src="/img/logo.png" style="width: 237px; height:68px;" title="">
                        </a>
					</div>
					PC Search 
					<div class="header-search">
						<form name="tsearch" method="get" onsubmit="return tsearch_submit(this);" role="form" class="form">
						<input type="hidden" name="url"	value="http://www.handium.co.kr/handium/shop/search.php">
							<div class="input-group input-group-sm">
								<input type="text" name="stx" class="form-control input-sm" value="">
								<span class="input-group-btn">
									<button type="submit" class="btn btn-sm"><i class="fa fa-search fa-lg"></i></button>
								</span>
							</div>
						</form>
						<div class="header-keyword">
							<div class="miso-keyword">
	<a href="http://www.handium.co.kr/handium/bbs/search.php?stx=%EA%B2%80%EC%83%89%EC%96%B42">검색어2</a>
	<a href="http://www.handium.co.kr/handium/bbs/search.php?stx=%EA%B2%80%EC%83%89%EC%96%B41">검색어1</a>
	<a href="http://www.handium.co.kr/handium/bbs/search.php?stx=%EA%B2%80%EC%83%89%EC%96%B43">검색어3</a>
	<a href="http://www.handium.co.kr/handium/bbs/search.php?stx=%EA%B2%80%EC%83%89%EC%96%B44">검색어4</a>
</div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
-->
			<!-- Mobile Header -->
			<div class="m-header">
				<div class="at-container">
<!--
					<div class="header-wrap">
						<div class="header-icon">
							<a href="javascript:;" onclick="sidebar_open('sidebar-user');">
							</a>
						</div>
-->
						<div class="header-logo en">
							<!-- Mobile Logo -->
							<a href="shop.jsp">
								<img src="../thema/img/h_c_logo.png">
							</a>
						</div>
                        <div class="m-icon" id="m_icon">
                            <a href="javascript:;" onclick="sidebar_open('sidebar-menu');"><i class="fa fa-bars berger" style="color:#fff;"></i></a>
                       
                        </div>
<!--
						<div class="header-icon">
							<a href="javascript:;" onclick="sidebar_open('sidebar-search');">
								<i class="fa fa-search"></i>
							</a>
						</div>
-->
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</header>
</body>
</html>