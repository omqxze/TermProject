<%@page import="BM.com.dao.PlayerRepository"%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="BM.com.dao.Player"%>
<%@ page import="java.sql.*" %>
 <jsp:useBean id="Player" class="BM.com.dao.PlayerRepository" scope="session" />
 <%@ page errorPage="exceptionNoPlayerId.jsp" %>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="./resources/css/home.css" />
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<meta charset="EUC-KR">
<title>선수 상세 정보</title>
</head>
<script type="text/javascript">
	function addToSquad(){
		if(confirm("선수를 스쿼드에 추가하시겠습니까?")){
			 document.addForm.submit();
		}else{
			document.addForm.reset();
		}
	}
</script>
<body>
 <%@ include file="menu.jsp" %>
 
 <div id="mont" class="jumbotron">
 	<div class="container">
 		<h1 class="display-3">
 			선수 정보
 		</h1>
 	</div>
 </div>
 

<%@ include file="dbconn.jsp" %>
			<%
				PreparedStatement pstmt=null;
				ResultSet rs=null;
				String sql="select * from player where p_id='"+request.getParameter("id")+"'";
				pstmt=conn.prepareStatement(sql);
				rs=pstmt.executeQuery();
				while(rs.next()) {
			%>

<div id="mont" class="container">
	<div  class="row">
		<div class="col-md-5">
			<img src="./resources/images/<%=rs.getString("p_name") %>.png" style=" width:80%"/>
		</div>
		<div style="font-family: MontserratSemiBold;font-weight : bold;" class="col-md-6">
			<h3><%=rs.getString("p_name")%></h3>
			<p><span class="pos pos-25"><%=rs.getString("p_position")%></span>
			<p> <b>선수 코드 : </b><span class="badge badge-danger"><%=rs.getString("p_id")%></span>
			<p> <b>소속팀</b> : <%=rs.getString("p_club")%>
			<p> <b>나이</b> : <%=rs.getString("p_age")%>
			<p> <b>등번호</b> : <%=rs.getString("p_number")%>
			<p> <form name="addForm" action="./addSquad.jsp?id=<%=rs.getString("p_id")%>" method="post">
			    <a href="#" class="btn btn-info" onclick="addToSquad()">스쿼드 등록 &raquo;</a>
				<a href="./squad.jsp" class="btn btn-warning">스쿼드 &raquo;</a>
				<a href="./home.jsp" class="btn btn-secondary">HOME &raquo;</a>
				</form>
		</div>
		<% 
				} 
			
			if(rs!=null)
				rs.close();
			if(pstmt!=null)
				pstmt.close();
			if(conn!=null)
				conn.close();
			%>
	</div>
</div>
 
<%@ include file="footer.jsp" %>
</body>
</html>