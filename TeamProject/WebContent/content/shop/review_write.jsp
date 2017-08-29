<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
	$(function(){
		$('#writeok').click(function(){
			$('#frm').submit();
		
			//self.close();
		});
	});
</script>
<link rel="stylesheet" href="../css/table.css">
</head>
<body>
	<form method="POST" action="review_write_ok.jsp" id="frm">
	<table id="table_content" width=500>
		<tr>
			<th width=30% align=right>내용</th>
			<td width=70% align=left><textarea rows="10" cols="55"
					name=board_nt></textarea> <!-- 복수 행/열을 입력하고 싶을 때 : <textarea>사용 -->
					<input type="hidden" id=cafeno name=cafeno value=${param.cafeno }>
					<input type="hidden" id=mode name=mode value="5">
			</td>
		</tr>
		<tr>
			<th width=30% align=right>비밀번호</th>
			<td width=70% align=left><input type=password name=pwd size=10>
			</td>
		</tr>
		<tr>
			<th width=30% align=right>평점</th>
			<td width=70% align=left><input type=text name=cafe_star size=10>
			</td>
		</tr>
	
		<tr>
			<td colspan="2" align=center><input type=button value=글쓰기 id="writeok">
				<input type=button value=취소 onclick="javascript:history.back()">
				<!-- 취소 button을 누르면 이전화면으로 돌아간다.(javascript:history.back()) --></td>
		</tr>
	</table>
	</form>
</body>
</html>