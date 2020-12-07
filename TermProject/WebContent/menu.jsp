<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
 <nav class="navbar navbar-expand navbar-dark bg-red">
 	<div class="menu">
 		<a class="navbar-brand" href="./home.jsp">Home</a>
 	</div>
 	<div>
 		<ul class="navbar-nav mr-auto">
 			<li class="nav-item"><a class="nav-link" href="./addPlayer.jsp">선수 등록</a></li>
 			<li class="nav-item"><a class="nav-link" href="./editPlayer.jsp?edit=update">선수 수정</a></li>
 			<li class="nav-item"><a class="nav-link" href="./editPlayer.jsp?edit=delete">선수 삭제</a></li>
 		</ul>
 	</div>
 </nav>
</body>
</html>