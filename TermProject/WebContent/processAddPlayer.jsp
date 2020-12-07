<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="BM.com.dao.Player" %>
<%@ page import="BM.com.dao.PlayerRepository" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ include file="dbconn.jsp" %>
<jsp:useBean id="Player" class="BM.com.dao.PlayerRepository" scope="session" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>선수 등록</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		
		String realFolder = "C:\\Users\\PJH\\eclipse-workspace\\TermProject\\WebContent\\resources\\images";
		int maxSize = 5*1024*1024;
		String encType="utf-8";
		
		DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
		MultipartRequest multi=new MultipartRequest(request,realFolder,maxSize,encType,policy);	
	
		String PlayerId=multi.getParameter("PlayerId");
		String name=multi.getParameter("name");
		String age=multi.getParameter("age");
		String nat=multi.getParameter("nat");
		String club=multi.getParameter("club");
		String position=multi.getParameter("position");
		String loanUntil=multi.getParameter("loanUntil");
		String loan=multi.getParameter("loan");
		String number=multi.getParameter("number");
		String joined=multi.getParameter("joined");
		String height=multi.getParameter("height");
		String weight=multi.getParameter("weight");
		
		Enumeration files=multi.getFileNames();
		String fname=(String)files.nextElement();
		String fileName=multi.getFilesystemName(fname);
		
		PlayerRepository dao=PlayerRepository.getInstance();
		
		PreparedStatement pstmt=null;
		String sql="insert into player values(?,?,?,?,?,?,?,?,?,?,?,?)";
		pstmt=conn.prepareStatement(sql);
		
		pstmt.setInt(1,Integer.valueOf(PlayerId));
		pstmt.setString(2,name);
		pstmt.setInt(3,Integer.valueOf(age));
		pstmt.setString(4,nat);
		pstmt.setString(5,club);
		pstmt.setString(6,position);
		pstmt.setInt(7,Integer.valueOf(number));
		pstmt.setString(8,joined);
		pstmt.setString(9,loan);
		pstmt.setString(10,loanUntil);
		pstmt.setString(11,height);
		pstmt.setString(12,weight);
		pstmt.executeUpdate();
		
		if(pstmt!=null)
			pstmt.close();
		if(conn!=null)
			conn.close();
		
		response.sendRedirect("home.jsp");
		
	%>
</body>
</html>