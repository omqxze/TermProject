<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*" %>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="./resources/css/home.css" />
<!DOCTYPE html>
<html>
<head>
<title>상품 수정</title>
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">선수 수정</h1>
		</div>
	</div>
	<%@ include file="dbconn.jsp" %>
	<%
			String playerId=request.getParameter("id");	
	
				PreparedStatement pstmt=null;
				ResultSet rs=null;
				String sql="select * from player where p_id='"+request.getParameter("id")+"'";
				pstmt=conn.prepareStatement(sql);
				rs=pstmt.executeQuery();
				while(rs.next()) {
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<img src="./resources/images/<%=rs.getString("p_name") %>.png" style=" width:80%"/>
			</div>
			<div class="col-md-7">
				<form name="newBook" action="./processUpdatePlayer.jsp" class="form-horizontal" 
				method="post" enctype="multipart/form-data">
					<div class="form-group row">
						<label class="col-sm-2">선수 코드</label>
						<div class="col-sm-3">
							<input type="text" id="playerId" name="playerId" class="form-control" value="<%=rs.getString("p_id")%>">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">이름</label>
						<div class="col-sm-3">
							<input type="text" id="name" name="name" class="form-control" value="<%=rs.getString("p_name")%>">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">나이</label>
						<div class="col-sm-3">
							<input type="text" id="age" name="age" class="form-control" value="<%=rs.getInt("p_age")%>">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">나라</label>
						<div class="col-sm-3">
							<input type="text" id="nat" name="nat" class="form-control" value="<%=rs.getString("p_nat")%>">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">클럽</label>
						<div class="col-sm-3">
							<input type="text" id="club" name="club" class="form-control" value="<%=rs.getString("p_club")%>">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">포지션</label>
						<div class="col-sm-3">
							<input type="text" id="position" name="position" class="form-control" value="<%=rs.getString("p_position")%>">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">등번호</label>
						<div class="col-sm-3">
							<input type="text" id="number" name="number" class="form-control" value="<%=rs.getString("p_number")%>">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">합류 날짜</label>
						<div class="col-sm-3">
							<input type="text" id="joined" name="joined" class="form-control" value="<%=rs.getString("p_joined")%>">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">임대</label>
						<div class="col-sm-3">
							<input type="text" id="loan" name="loan" class="form-control" value="<%=rs.getString("p_loan")%>">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">임대 만기 날짜</label>
						<div class="col-sm-3">
							<input type="text" id="loanUntil" name="loanUntil" class="form-control" value="<%=rs.getString("p_loanUntil")%>">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">키</label>
						<div class="col-sm-3">
							<input type="text" id="height" name="height" class="form-control" value="<%=rs.getString("p_height")%>">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">몸무게</label>
						<div class="col-sm-3">
							<input type="text" id="weight" name="weight" class="form-control" value="<%=rs.getString("p_weight")%>">
						</div>
					</div>
					<div class="form-group row">
						<div class="col-sm-offset-2 col-sm-10">
							<input type="submit" class="btn bnt-primary" value="등록">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<%
				}
				if(rs!=null){
					rs.close();
				}
				if(pstmt!=null){
					pstmt.close();
				}
				if(conn!=null){
					conn.close();
				}
	%>
</body>
</html>