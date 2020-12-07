<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.net.URLDecoder" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="./resources/css/home.css" />
<meta charset="UTF-8">
<title>등록 완료</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");

String squadId = session.getId();
String shipping_squadId = "";
String shipping_match = "";
String shipping_shippingDate = "";
String shipping_versus = "";
String shipping_matchCode = "";
String shipping_addressName = "";

Cookie[] cookies = request.getCookies();

if(cookies != null){
	for(int i=0; i<cookies.length; i++){
		Cookie thisCookie = cookies[i];
		String n = thisCookie.getName();
		if(n.equals("Shipping_squadId"))
			shipping_squadId = URLDecoder.decode((thisCookie.getValue()), "utf-8");
		if(n.equals("Shipping_shippingDate"))
			shipping_shippingDate = URLDecoder.decode((thisCookie.getValue()), "utf-8");
	}
}

%>

<%@ include file="menu.jsp" %>
<div class="jumbotron">
	<div class="container">
		<h1 class = "display-3">등록 완료</h1>
	</div>
</div>
<div class="container">
	<h2 class="alert alert-danger">등록해주셔서 감사합니다.</h2>
	<p> 경기는 <% out.println(shipping_shippingDate); %>에 시작될 예정입니다!
	<p> 스쿼드 번호 : <% out.println(shipping_squadId); %>
</div>
<div class="container">
	<p><a href="./home.jsp" class="btn btn-secondary">&laquo; 선수 목록</a>
</div>
</body>
</html>

<%
session.invalidate();

for(int i=0; i<cookies.length; i++){
	Cookie thisCookie = cookies[i];
	String n = thisCookie.getName();
	if(n.equals("Shipping_squadId"))
		thisCookie.setMaxAge(0);
	if(n.equals("Shipping_match"))
		thisCookie.setMaxAge(0);
	if(n.equals("Shipping_shippingDate"))
		thisCookie.setMaxAge(0);
	if(n.equals("Shipping_versus"))
		thisCookie.setMaxAge(0);
	if(n.equals("Shipping_matchCode"))
		thisCookie.setMaxAge(0);
	if(n.equals("Shipping_addressName"))
		thisCookie.setMaxAge(0);
	
	response.addCookie(thisCookie);
}
%>