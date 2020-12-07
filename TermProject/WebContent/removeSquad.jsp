<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="BM.com.dao.Player"%>
<%@page import="BM.com.dao.PlayerRepository"%>

<%
	String id=request.getParameter("id");
	if(id==null||id.trim().equals("")){
		response.sendRedirect("home.jsp");
		return;
	}
	
	PlayerRepository dao=PlayerRepository.getInstance();
	
	Player player=dao.getPlayerById(id);
	if(player==null){
		response.sendRedirect("exceptionNoPlayerId.jsp");
	}
	
	ArrayList<Player> squadList=(ArrayList<Player>)session.getAttribute("squadlist");
	Player playersQnt=new Player();
	for(int i=0;i<squadList.size();i++){
		playersQnt=squadList.get(i);
		if(playersQnt.getp_id().equals(id)){
			squadList.remove(playersQnt);
		}
	}
	
	response.sendRedirect("squad.jsp");
%>