<%@ page  contentType="text/html; charset=EUC-KR"%>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
 <link rel="stylesheet" href="./resources/css/home.css" />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������ ����</title>
</head>
<body>
 <jsp:include page="menu.jsp" />
 <div class="jumbotron">
 	<div class="container">
 		<h2 class="alert alert-danger">��û�Ͻ� �������� ã���� �����ϴ�.</h2>
 	</div>
 </div>
 <div class="container">
 	<p><%=request.getRequestURL() %></p>
 	<p> <a href="home.jsp" class="btn btn-secondary">���� ��� &raquo;</a>
 </div>
</body>
</html>