<%@ page  contentType="text/html; charset=EUC-KR"%>
<link rel="stylesheet" href="./resources/css/home.css" />
    <link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ���̵� ����</title>
</head>
<body>
<jsp:include page="menu.jsp" />
 <div class="jumbotron">
 	<div class="container">
 		<h2 class="alert alert-danger">�ش� ������ �������� �ʽ��ϴ�.</h2>
 	</div>
 </div>
 <div class="container">
 	<p><%=request.getRequestURL() %>?<%=request.getQueryString() %>
 	<p><a href="home.jsp" class="btn btn-secondary">HOME &raquo;</a>
 </div>
</body>
</html>