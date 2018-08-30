<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Page message</title>
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
	
	<form action="contactSave.jsp">
					
		<table>
			<tr> <td>Pseudo:</td><td><input type="text" name="userpseudo"></td></tr>
			<tr> <td>Message:</td><td><textarea name="message"></textarea></td></tr>
			
			<tr><td><input type="submit" value="Envoyer"></td></tr>
		</table>
					
	</form>

     
            
    <HR>
	
	<% /*Inclure Footer*/ %>
	<jsp:include page="footer.html"></jsp:include>

</body>
</html>