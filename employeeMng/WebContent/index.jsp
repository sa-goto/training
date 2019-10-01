<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>従業員一覧表示画面</title>
</head>
<body>
	<h1>EMD名簿管理システム</h1>
	<table>
		<tr>
			<th>従業員ID</th>
			<th>名前</th>
			<th>入社年月日</th>
		</tr>
		<tr>
			<c:forEach items="${dbdata}" var="dbdataLine">
				<tr>
					<td>${dbdataLine.col1}</td>
					<td>${dbdataLine.col2}</td>
					<td>${dbdataLine.col3}</td>
				</tr>
			</c:forEach>
		</tr>
	</table>
</body>
</html>