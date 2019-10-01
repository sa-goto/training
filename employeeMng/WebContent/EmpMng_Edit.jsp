<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>社員情報編集</h1>
	
	<table>
		<tr><th>名前</th><th>ふりがな</th></tr>
		<tr><th><% /*name書き換え:DB送信*/ %></th><th><% %></th></tr>
		<tr><th>name</th><th><th></tr>
		<tr><th><% /*name書き換え:DB送信*/ %></th><tr><th></th></tr>
	</table>
	
	<div>
		<p>性別</p>
		<p><% /*書き換え:DB送信*/ %></p>
	</div>
	<div>
		<p>生年月日</p>
		<p><% /*書き換え:DB送信*/ %></p>
	</div>
	
	<div>
		<p>郵便番号</p>
		<p><% /*書き換え:DB送信*/ %></p>
	</div>
	<div>
		<p>住所</p>
		<p><% /*書き換え:DB送信*/ %></p>
	</div>
	
	<div>
		<p>電話番号</p>
		<p><% /*書き換え:DB送信*/ %></p>
	</div>
	<div>
		<p>メールアドレス</p>
		<p><% /*書き換え:DB送信*/ %></p>
	</div>
	
	<div>
		<p>最終学歴</p>
		<p><% /*書き換え:DB送信、プルダウン*/ %></p>
	</div>
	
	<div>
		<p>従業員ID</p>
		<p><% /*書き換え:DB送信*/ %>ン</p>
	</div>
	<div>
		<p>入社年月日</p>
		<p><% /*書き換え:DB送信*/ %></p>
	</div>
	
	<div>
		<p>自社メールアドレス</p>
		<p><% /*書き換え:DB送信*/ %>ン</p>
	</div>
	<div>
		<p>写真</p>
		<p><% /*書き換え:DB送信、アップロードボタン付き*/ %></p>
	</div>
</body>
</html>