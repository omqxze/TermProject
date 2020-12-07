<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*" %>
    <link rel="stylesheet" href="./resources/css/home.css" />
    <link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<!DOCTYPE html>
<html>
<head>
<title>선수 목록</title>
<script type="text/javascript" src="./resources/js/home.js"></script>
</head>
<body>
<%@ include file="menu.jsp" %>

<h2  style="font-family: 'Montserrat', sans-serif;  text-align:center">Manchester United</h2>

<div class="container">
<%@ include file="dbconn.jsp" %>
<%
				PreparedStatement pstmt=null;
				ResultSet rs=null;
				String sql="select * from player order by p_number";
				pstmt=conn.prepareStatement(sql);
				rs=pstmt.executeQuery();
				rs.last();
				int i=rs.getRow();
				rs.beforeFirst();
				int count=0;
				while(rs.next()) {
					count++;
				
%>

  <div class="mySlides">
    <a href="./player.jsp?id=<%=rs.getString("p_id") %>"><img src="./resources/images/<%=rs.getString("p_name") %>.png" style="display: block; margin: 0 auto; width:40%"/></a>
  </div>
   <% 
				} 
			
			
			%>
  <a class="prev" onclick="plusSlides(-1)">❮</a>
  <a class="next" onclick="plusSlides(1)">❯</a>

  <div class="caption-container">
    <p id="caption"></p>
  </div>

  <div class="row" align="center">
 <%
  				pstmt=null;
  				rs=null;
  				sql="select * from player order by p_number";
				pstmt=conn.prepareStatement(sql);
  				rs=pstmt.executeQuery();
  				count=0;
				while(rs.next()) {
					count++;
				
%>
    <div class="column">
      <p class="demo cursor"  onclick="currentSlide(<%=count %>)"><%=rs.getString("p_name") %>
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