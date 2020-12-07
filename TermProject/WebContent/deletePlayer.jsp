<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbconn.jsp" %>
<%
	String playerId=request.getParameter("id");


	PreparedStatement pstmt=null;
	ResultSet rs=null;
	String sql="select * from player";
	pstmt=conn.prepareStatement(sql);
	rs=pstmt.executeQuery();
	
	if(rs.next()){
		sql="delete from player where p_id=?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, playerId);
		pstmt.executeUpdate();
	}else
		out.println("일치하는 선수가 없습니다.");
	
	if(rs!=null)
		rs.close();
	if(pstmt!=null)
		pstmt.close();
	if(conn!=null)
		conn.close();
	
	response.sendRedirect("editPlayer.jsp?edit=delete");
%>