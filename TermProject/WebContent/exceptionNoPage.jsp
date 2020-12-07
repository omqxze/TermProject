<%@ page  contentType="text/html; charset=EUC-KR"%>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
 <link rel="stylesheet" href="./resources/css/home.css" />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>페이지 오류</title>
</head>
<body>
 <jsp:include page="menu.jsp" />
 <div class="jumbotron">
 	<div class="container">
 		<h2 class="alert alert-danger">요청하신 페이지를 찾을수 없습니다.</h2>
 	</div>
 </div>
 <div class="container">
 	<p><%=request.getRequestURL() %></p>
 	<p> <a href="home.jsp" class="btn btn-secondary">선수 목록 &raquo;</a>
 </div>
</body>
</html>