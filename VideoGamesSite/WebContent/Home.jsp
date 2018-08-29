<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style/homeStyle.css">
<title>Page d'Accueil</title>
</head>
<body>

	<% /*Inclure Logo*/ %>
	<jsp:include page="logo.html"></jsp:include>
	
	
	
	<HR>
	
	<div id="nav">
	    <ul>
	      <li><a href=Home.jsp>Home</a></li>
	      <li><a href=news.jsp>News</a></li>
	      <li><a href=tests.jsp>Tests</a></li>
	      <li><a href=contact.jsp>Contactez-nous</a></li>
	      <li><a href=inscription.jsp>Connexion</a></li>
	    </ul>
	    <div class="clear"> </div>
	</div>
	
	<HR>
	
	<center><h2>Les derniers Tests:</h2></center>
	
	<div id="tests">
	    <ul>
	      <li id="test1"><a href=testDR.jsp><img src="images/dragon-quest-xi-image_0190000000904635.jpg" width=30% height=30%></a>
	      <br /><h3>Dragon quest XI</h3></li>
	      <li id="test2"><a href=testCP.jsp><img src="images/cyberpunk-2077-4-captures-decran-devoilees-86221.jpg" width=30% height=30%></a>
	      <br /><h3>CyberPunk 2077</h3></li>	      
	    </ul>
	    <div class="clear"> </div>
	</div>
	
	<HR>
	
	<center><h2>News récentes:</h2></center>
	
	<div id="news">
	    <ul>
	      <li><p>News 1</p></li>
	      <li><p>News 2</p></li>
	      <li><p>News 3</p></li>
	      <li><p>News 4</p></li>
	    </ul>
	    <div class="clear"> </div>
	</div>
	
	<HR>
	
	<% /*Inclure Footer*/ %>
	<jsp:include page="footer.html"></jsp:include>

</body>
</html>