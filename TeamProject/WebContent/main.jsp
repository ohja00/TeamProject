<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>

<html lang="ko">
 <head>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no"/>
 <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <title>핸디엄 | 언더프레셔</title>
  <style type="text/css">
    *{padding:0;margin:0;}
      .m_{display:none;}
    body{height:100%;overflow-y:hidden;line-height:0;overflow-x:hidden;overflow-y:hidden;}
    .wrap{width:100%;position:absolute;left:50%;top:50%;transform:translate(-50%,-50%);}
    .wrap > div{width:50%;float:left;position:relative;}
    .wrap > div:hover .backgroundBg{opacity:0;}
    .wrap > div a{display:block;width:100%;height:100%;}
    .wrap .imgBg img{width:100%;}
    .wrap .logo{width:170px;position:absolute;left:50%;top:50%;transform:translate(-50%,-50%);}
    .wrap .logo.u_logo{width:190px;position:absolute;left:50%;top:50%;transform:translate(-50%,-50%);}
    .wrap .logo img{width:100%;}
    .wrap > div .backgroundBg{width:100%;background-color:rgba(0,0,0,0.5);position:absolute;left:0;top:0;padding-top:103%;transition:all 0.5s;}
    
      @media(max-width:767px){
           *{padding:0;margin:0;}
    body{overflow-y:visible;line-height:0;overflow-x:visible;}
    .wrap{width:100%;position:absolute;left:0;top:0;transform:translate(0%,0%);}
    .wrap > div{width:100%;float:none;position:relative;}
    .wrap > div:hover .backgroundBg{opacity:0;}
    .wrap > div a{display:block;width:100%;height:100%;}
    .wrap .imgBg img{width:100%;}
    .wrap .logo{width:170px;position:absolute;left:50%;top:50%;transform:translate(-50%,-50%);}
    .wrap > div .backgroundBg{width:100%;background-color:rgba(0,0,0,0.5);position:absolute;left:0;top:0;padding-top:77%;transition:all 0.5s;}
    
    .wrap .h_logo{width:120px;position:absolute;left:50%;top:50%;transform:translate(-50%,-50%);}
    .wrap .logo.u_logo{width:135px;position:absolute;left:50%;top:50%;transform:translate(-50%,-50%);}
    
          .pc{display:none;}
          .m_{display:block;}
    }
    
</style>
</head>
<body>
	<div class="wrap">
		<div class="left">
			 <a href="content/shop/shop.jsp" title="핸디엄">
				<div class="imgBg">
					<img class="pc" src="PNG/PC_Landing_H.png" alt="왼쪽"/>
                    <img class="m_" src="PNG/M_Landing_H.png" alt="왼쪽"/>
				</div>
				<div class="backgroundBg">
				</div>
				<div class="logo h_logo">
					<img style="m_h_logo" src="PNG/h_logo.png" alt=""/>
				</div>
			</a>
		</div>
		<div class="right">
			 <a href="/underpressure/" title="언더프레셔">
				<div class="imgBg">
					<img class="pc" src="PNG/PC_Landing_UP.png" alt="오른쪽"/>
                    <img class="m_" src="PNG/M_Landing_UP.png" alt="오른쪽"/>
				</div>
				<div class="backgroundBg">
				</div>
				<div class="logo u_logo">
					<img style="u_m_logo" src="PNG/h_up_logo.png" alt=""/>
				</div>
			</a>
		</div>
	</div>
</body>
</html>