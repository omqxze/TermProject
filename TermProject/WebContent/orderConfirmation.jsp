<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.net.URLDecoder" %>
<%@ page import="BM.com.dao.Player"%>
<%@ page import="BM.com.dao.PlayerRepository" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
 <link rel="stylesheet" href="./resources/css/home.css" />
<title>경기 정보</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");

String playerId = session.getId();

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
		if(n.equals("Shipping_match"))
			shipping_match = URLDecoder.decode((thisCookie.getValue()), "utf-8");
		if(n.equals("Shipping_shippingDate"))
			shipping_shippingDate = URLDecoder.decode((thisCookie.getValue()), "utf-8");
		if(n.equals("Shipping_versus"))
			shipping_versus = URLDecoder.decode((thisCookie.getValue()), "utf-8");
		if(n.equals("Shipping_matchCode"))
			shipping_matchCode = URLDecoder.decode((thisCookie.getValue()), "utf-8");
		if(n.equals("Shipping_addressName"))
			shipping_addressName = URLDecoder.decode((thisCookie.getValue()), "utf-8");
	}
}
%>

<%@ include file="menu.jsp" %>

<div class="jumbotron">
	<div class="container">
		<h1 class = "display-3">경기 정보</h1>
	</div>
</div>

<div class="container col-8 alert alert-info">
	<div class="text-center ">
		<h1>스쿼드</h1>
	</div>
	<div class="row justify-content-between">
		<div class="col-4" align="left">
			<strong>경기</strong>
			<br> 경기 : <% out.println(shipping_match); %>
			<br> 상대 : <% out.println(shipping_versus); %>
			<br> 경기번호 : <% out.println(shipping_matchCode); %>
			<br> 경기장소 : <% out.println(shipping_addressName); %>
			<br>			
		</div>
		<div class="col-4" align="right">
			<p> <em>경기일 : <% out.println(shipping_shippingDate); %></em>
		</div>
	</div>
	
	<div>
		<table class="table table-hover">
			<tr>
				<th class="text-center">아이디</th>
				<th class="text-center">이름</th>
				<th class="text-center">포지션</th>
				<th class="text-center">등번호</th>			
			</tr>
			<%
			int sum = 0;
			ArrayList<Player> squadList = (ArrayList<Player>)session.getAttribute("squadlist");
			if(squadList == null)
				squadList = new ArrayList<Player>();
			for(int i=0; i<squadList.size(); i++){
				Player player = squadList.get(i);
			%>
			<tr>
				<td class="text-center"><em><%=player.getp_id()%></em></td>
				<td class="text-center"><%=player.getp_name() %></td>
				<td class="text-center"><%=player.getp_position() %></td>
				<td class="text-center"><%=player.getp_number()%></td>
			</tr>
			<%
			}
			%>
			<tr>
				<td></td>
				<td></td>
				<td class="text-right"><strong>경기번호 : </strong></td>
				<td class="text-center text-danger"><strong><%=shipping_matchCode %> </strong></td>
			</tr>
		</table>
		
		<a href="./shippingInfo.jsp?squadId=<%=shipping_squadId%>" class="btn btn-secondary" role="button">이전</a>
		<a href="./thankCustomer.jsp" class="btn btn-success" role="button">등록 완료</a>
		<a href="./checkOutCancelled.jsp" class="btn btn-secondary" role="button">취소</a>
	</div>
</div>
</body>
</html>