<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="BM.com.dao.Player"%>
<%@page import="BM.com.dao.PlayerRepository"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="./resources/css/home.css" />
<%
	String squadId=session.getId();
%>
<title>스쿼드</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">스쿼드</h1>
		</div>
	</div>
	
	<div class="container">
		<div class="row">
			<table width="100%">
				<tr>
					<td align="left"><a href="./deleteSquad.jsp?squadId=<%=squadId%>" 
					class="btn btn-danger">삭제하기</a></td>
					<td align="right"><a href="./shippingInfo.jsp?squadId=<%=squadId %>"
					class="btn btn-success">등록하기</a></td>
				</tr>
			</table>
		</div>
		<div style="padding-top: 50px">
			<table class="table table-hover">
				<tr>
					<th>아이디</th>
					<th>이름</th>
					<th>포지션</th>
					<th>등번호</th>
					<th>비고</th>
				</tr>
				<%
					int sum=0;
					ArrayList<Player> squadList=(ArrayList<Player>)session.getAttribute("squadlist");
					if(squadList==null)
						squadList=new ArrayList<Player>();
					for(int i=0;i<squadList.size();i++){
						Player player=squadList.get(i);
						
				%>
				<tr>
					<td><%=player.getp_id()%></td>
					<td><%=player.getp_name()%></td>
					<td><%=player.getp_position()%></td>
					<td><%=player.getp_number() %></td>
					<td><a href="./removeSquad.jsp?=id<%=player.getp_id() %>" 
					class="badge badge-danger">삭제</a></td>
				</tr>
				<% } %>
				<tr>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
				</tr>
			</table>
			<a href="./home.jsp" class="btn btn-secondary">&laquo; 조회 계속하기</a>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>