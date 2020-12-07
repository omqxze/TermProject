<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="BM.com.dao.Player" %>
<%@ page import="BM.com.dao.PlayerRepository" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ include file="dbconn.jsp" %>
	<%
		request.setCharacterEncoding("UTF-8");
		
		String filename = "";
		String realFolder = "C:\\Users\\PJH\\eclipse-workspace\\TermProject\\WebContent\\resources\\images";
		int maxSize = 5*1024*1024;
		String encType="utf-8";
		
		DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
		MultipartRequest multi=new MultipartRequest(request,realFolder,maxSize,encType,policy);	
	
		String playerId=multi.getParameter("playerId");
		String name=multi.getParameter("name");
		String age=multi.getParameter("age");
		String nat=multi.getParameter("nat");
		String club=multi.getParameter("club");
		String number=multi.getParameter("number");
		String position=multi.getParameter("position");
		String loanUntil=multi.getParameter("loanUntil");
		String loan=multi.getParameter("loan");
		String joined=multi.getParameter("joined");
		String height=multi.getParameter("height");
		String weight=multi.getParameter("weight");
		
		
		
		PlayerRepository dao=PlayerRepository.getInstance();
		
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from player where p_id=?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, playerId);
		rs=pstmt.executeQuery();
		
		if(rs.next()){
				sql="UPDATE player SET p_name=?,p_age=?,p_nat=?,p_club=?,p_number=?,p_weight=?,p_position=?,p_loan=?,p_loanUntil=?,p_joined=?,p_height=? WHERE p_id=?";
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1,name);
				pstmt.setString(2,age);
				pstmt.setString(3,nat);
				pstmt.setString(4,club);
				pstmt.setString(5,number);
				pstmt.setString(6,weight);
				pstmt.setString(7,position);
				pstmt.setString(8,loan);
				pstmt.setString(9,loanUntil);
				pstmt.setString(10,joined);
				pstmt.setString(11,height);
				pstmt.setString(12,playerId);
				pstmt.executeUpdate();
		}
		
		if(rs!=null)
			rs.close();
		if(pstmt!=null)
			pstmt.close();
		if(conn!=null)
			conn.close();
		
		response.sendRedirect("editPlayer.jsp?edit=update");
		
	%>
