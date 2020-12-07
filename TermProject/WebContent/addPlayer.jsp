<%@page import="BM.com.dao.PlayerRepository"%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="BM.com.dao.Player"%>
<link rel="stylesheet" href="./resources/css/home.css" />
 <link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>선수 등록</title>
</head>
<script type="text/javascript" src="./resources/js/validation.js"></script>
<body>
<fmt:setLocale value='<%=request.getParameter("language") %>'/>
<fmt:bundle basename="bundle.message" >
 <%@ include file="menu.jsp" %>
 
 <div class="jumbotron mont">
 	<div class="container">
 		<h1 class="display-3">
 			<fmt:message key="title"/>
 		</h1>
 	</div>
 </div>

 <div class="container">
 	<div class="text-right">
 	<a href="?language=ko">Korean</a>|<a href="?language=en">English</a>
 	<a href="logout.jsp" class="btn btn-sm btn-success pull-right">logout</a>
 	</div>
 	<form name="newPlayer" action="./processAddPlayer.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
 		<div class="form-group row">
 			<label class="col-sm-2"><fmt:message key="PlayerId"/></label>
 			<div class="col-sm-3">
 				<input type="text" id="PlayerId" name="PlayerId" class="form-control">
 			</div>
 		</div>
 		<div class="form-group row">
 			<label class="col-sm-2"><fmt:message key="name"/></label>
 			<div class="col-sm-3">
 				<input type="text" name="name" id="name" class="form-control">
 			</div>
 		</div>
 		<div class="form-group row">
 			<label class="col-sm-2"><fmt:message key="age"/></label>
 			<div class="col-sm-3">
 				<input type="text" name="age" id="age" class="form-control">
 			</div>
 		</div>
 		<div class="form-group row">
 			<label class="col-sm-2"><fmt:message key="nat"/></label>
 			<div class="col-sm-3">
 				<input type="text" name="nat" id="nat" class="form-control">
 			</div>
 		</div>
 		<div class="form-group row">
 			<label class="col-sm-2"><fmt:message key="club"/></label>
 			<div class="col-sm-3">
 				<input type="text" name="club" id="club" class="form-control">
 			</div>
 		</div>
 		<div class="form-group row">
 			<label class="col-sm-2"><fmt:message key="position"/></label>
 			<div class="col-sm-3">
 				<input type="text" name="position" id="position" class="form-control">
 			</div>
 		</div>
 		<div class="form-group row">
 			<label class="col-sm-2"><fmt:message key="number"/></label>
 			<div class="col-sm-3">
 				<input type="text" name="number" id="joined" class="form-control">
 			</div>
 		</div>
 		<div class="form-group row">
 			<label class="col-sm-2"><fmt:message key="joined"/></label>
 			<div class="col-sm-3">
 				<input type="text" name="joined" id="joined" class="form-control">
 			</div>
 		</div>
 		<div class="form-group row">
 			<label class="col-sm-2"><fmt:message key="loan"/></label>
 			<div class="col-sm-3">
 				<input type="text" name="loan" id="loan" class="form-control">
 			</div>
 		</div>
 		<div class="form-group row">
 			<label class="col-sm-2"><fmt:message key="loanUntil"/></label>
 			<div class="col-sm-3">
 				<input type="text" name="loanUntil" id="loanUntil" class="form-control">
 			</div>
 		</div>
 		<div class="form-group row">
 			<label class="col-sm-2"><fmt:message key="height"/></label>
 			<div class="col-sm-3">
 				<input type="text" name="height" id="height" class="form-control">
 			</div>
 		</div>
 		<div class="form-group row">
 			<label class="col-sm-2"><fmt:message key="weight"/></label>
 			<div class="col-sm-3">
 				<input type="text" name="weight" id="weight" class="form-control">
 			</div>
 		</div>
 		<div class="form-group row">
 			<label class="col-sm-2"><fmt:message key="PlayerImage"/></label>
 			<div class="col-sm-5">
 				<input type="file" name="PlayerImage" class="form-control">
 			</div>
 		</div>
 		<div class="form-group row">
 			<div class="col-sm-offset-2">
 				<input type="submit" class="btn btn-primary" value="<fmt:message key="button"/>" onclick="checkAddPlayer()">
 			</div>
 		</div>
 	</form>
 </div>
 
<%@ include file="footer.jsp" %>
</fmt:bundle>
</body>
</html>