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
			<th width=30% align=right>����</th>
			<td width=70% align=left><textarea rows="10" cols="55"
					name=board_nt></textarea> <!-- ���� ��/���� �Է��ϰ� ���� �� : <textarea>��� -->
					<input type="hidden" id=cafeno name=cafeno value=${param.cafeno }>
					<input type="hidden" id=mode name=mode value="5">
			</td>
		</tr>
		<tr>
			<th width=30% align=right>��й�ȣ</th>
			<td width=70% align=left><input type=password name=pwd size=10>
			</td>
		</tr>
		<tr>
			<th width=30% align=right>����</th>
			<td width=70% align=left><input type=text name=cafe_star size=10>
			</td>
		</tr>
	
		<tr>
			<td colspan="2" align=center><input type=button value=�۾��� id="writeok">
				<input type=button value=��� onclick="javascript:history.back()">
				<!-- ��� button�� ������ ����ȭ������ ���ư���.(javascript:history.back()) --></td>
		</tr>
	</table>
	</form>
</body>
</html>