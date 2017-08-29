<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="cn" class="com.sist.controller.CafeController"></jsp:useBean>

<%
	request.setCharacterEncoding("EUC-KR");
%>
<%-- <jsp:useBean id="vo" class="com.sist.dao.ReviewVO">
	<jsp:setProperty name="vo" property="*"></jsp:setProperty>
</jsp:useBean> --%>
<jsp:useBean id="vo" class="com.sist.dao.ReviewVO"/>
<%
	vo.setBoard_nt(request.getParameter("board_nt"));
	vo.setPwd(request.getParameter("pwd"));
	vo.setCafe_star(Double.parseDouble(request.getParameter("cafe_star")));
	String no =request.getParameter("cafeno");
// 	System.out.println("no "+no);
//	System.out.println("board_nt : "+request.getParameter("board_nt"));
	vo.setCafe_no(Integer.parseInt(no));
	
	cn.controller(request,vo);
	
	response.sendRedirect("cafe.jsp?cafeno="+no);
%>

<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
	$(function(){
	//	opener.document
	});
</script>

