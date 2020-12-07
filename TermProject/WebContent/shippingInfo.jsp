<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="./resources/css/home.css" />
<title>경기 정보</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">경기 정보</h1>
		</div>
	</div>
	<div class="container">
		<form action="./processShippingInfo.jsp" class="form-horizontal" method="post">
			<input type="hidden" name="squadId" value="<%=request.getParameter("squadId") %>"/>
			<div class="form-group row">
				<label class="col-sm-2">경기</label>
				<div class="col-sm-3">
					<input name="match" type="text" class="form-control"/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">경기일</label>
				<div class="col-sm-3">
					<input name="shippingDate" type="text" class="form-control"/>(yyyy/mm/dd)
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">상대</label>
				<div class="col-sm-3">
					<input name="versus" type="text" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">경기번호</label>
				<div class="col-sm-3">
					<input name="matchCode" type="text" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">경기장소</label>
				<div class="col-sm-5">
					<input name="addressName" type="text" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<a href="./squad.jsp?squadId=<%=request.getParameter("squadId") %>"
					class="btn btn-secondary" role="button">이전</a>
					<input type="submit" class="btn btn-primary" value="등록" />
					<a href="./checkOutCancelled.jsp" class="btn btn-secondary" role="button">취소</a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>