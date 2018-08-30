<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Page test</title>
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
	      <li>
	      <form action="searchGame.jsp">
	      <input type="text" name="research">
	      	<select name="type">
		      	<option>titre</option>
	            <option>genre</option>
	            <option>editeur</option>
        	</select>
        	<input type="submit" value="Search"></form></li>
	      <li><a href=contact.jsp>Contactez-nous</a></li>
	      <li><a href=inscription.jsp>Connexion</a></li>
	    </ul>
	    <div class="clear"> </div>
	</div>
	
	<HR>
	
	<center><h2>Tous les Tests:</h2></center>
	
	<div id="tests">
	    <ul>
	      <li><a href=testDR.jsp><img src="images/dragon-quest-xi-image_0190000000904635.jpg" width=30% height=30%></a>
	      <br /><h3>Dragon quest XI</h3></li>
	      <li><a href=testCP.jsp><img src="images/cyberpunk-2077-4-captures-decran-devoilees-86221.jpg" width=30% height=30%></a>
	      <br /><h3>CyberPunk 2077</h3></li>
	      <li><a href=testGM.jsp><img src="images/Guacamelee2.jpg" width=30% height=30%></a>
	      <br /><h3>Guacamelee! 2</h3></li>
	      <li><a href=testF1.jsp><img src="images/f1 2018.jpg" width=30% height=30%></a>
	      <br /><h3>F1 2018</h3></li>	      
	    </ul>
	    <div class="clear"> </div>
	</div>
	
	<HR>
	
	<% /*Inclure Footer*/ %>
	<jsp:include page="footer.html"></jsp:include>

</body>
</html>