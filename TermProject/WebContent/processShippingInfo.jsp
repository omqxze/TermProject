<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.net.URLEncoder" %>

<%
	request.setCharacterEncoding("UTF-8");

	Cookie squadId=new Cookie("Shipping_squadId",
			URLEncoder.encode(request.getParameter("squadId"),"utf-8"));
	Cookie match=new Cookie("Shipping_match",
			URLEncoder.encode(request.getParameter("match"),"utf-8"));
	Cookie shippingDate=new Cookie("Shipping_shippingDate",
			URLEncoder.encode(request.getParameter("shippingDate"),"utf-8"));
	Cookie versus=new Cookie("Shipping_versus",
			URLEncoder.encode(request.getParameter("versus"),"utf-8"));
	Cookie matchCode=new Cookie("Shipping_matchCode",
			URLEncoder.encode(request.getParameter("matchCode"),"utf-8"));
	Cookie addressName=new Cookie("Shipping_addressName",
			URLEncoder.encode(request.getParameter("addressName"),"utf-8"));
	
	squadId.setMaxAge(24*60*60);
	match.setMaxAge(24*60*60);
	matchCode.setMaxAge(24*60*60);
	versus.setMaxAge(24*60*60);
	addressName.setMaxAge(24*60*60);
	
	response.addCookie(squadId);
	response.addCookie(match);
	response.addCookie(shippingDate);
	response.addCookie(versus);
	response.addCookie(matchCode);
	response.addCookie(addressName);
	
	response.sendRedirect("orderConfirmation.jsp");
%>