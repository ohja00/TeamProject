<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="java.util.*,com.sist.dao.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<jsp:useBean id="rdao" class="com.sist.dao.ReviewDAO" />
<%
	String no= request.getParameter("cafeno");
	List<ReviewVO> rlist = rdao.getCafeReview(Integer.parseInt(no),1);
	
	request.setAttribute("rlist", rlist);

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/cafe.css">
</head>
<body>
	<table class="board-list">

		<c:choose>
			<c:when test="${fn:length(rlist)==0}">
				<tr>
					<td width=100%>등록된 후기가 없습니다</td>
				</tr>
			</c:when>
			<c:otherwise>
				<tr>
					<th width=10%>번호</th>
					<th width=20%>평점</th>
					<th width=40>내용</th>
					<th width=10%>글쓴이</th>
					<th width=10&>작성일</th>
				</tr>
				<c:forEach var="vo" items="${rlist }">
					<tr>
						<td width=10% align="center">${vo.review_no }</td>
						<td width=20% align="center">${vo.cafe_star }</td>
						<td width=40%>${vo.board_nt }</td>
						<td width=10% align="center">${vo.custom_no }</td>
						<td width=10% align="center">${vo.board_date }</td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</table>
</body>
</html>