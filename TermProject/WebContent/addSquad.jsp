<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="BM.com.dao.Player"%>
<%@page import="BM.com.dao.PlayerRepository"%>
<%@ page import="java.sql.*" %>

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
	
	ArrayList<Player> PlayersList=dao.getAllPlayers();
	Player players=new Player();
	for(int i=0;i<PlayersList.size();i++){
		players=PlayersList.get(i);
		if(players.getp_id().equals(id)){
			break;
		}
	}
	
	ArrayList<Player> list=(ArrayList<Player>)session.getAttribute("squadlist");
	if(list==null){
		list=new ArrayList<Player>();
		session.setAttribute("squadlist", list);
	}
	
	
		list.add(players);
	
	response.sendRedirect("player.jsp?id="+id);
%>