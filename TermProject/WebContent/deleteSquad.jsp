<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="BM.com.dao.Player"%>
<%@page import="BM.com.dao.PlayerRepository"%>

<% 
	String id=request.getParameter("squadId");
	if(id==null||id.trim().equals("")){
		response.sendRedirect("squad.jsp");
		return;
	}
	
	session.invalidate();
	
	response.sendRedirect("squad.jsp");
%>