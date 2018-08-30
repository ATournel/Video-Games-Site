<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="jvs.Game"%>
<%
ArrayList<Game> listeGame = new ArrayList<Game>();
try{
	Class.forName("com.mysql.jdbc.Driver");
		
		String url = "jdbc:mysql://localhost:3306/video_games_bdd";
		String user = "root";
		String pwd= "Ioplop88";
		
		Connection con = DriverManager.getConnection(url, user, pwd);
		Statement st = con.createStatement();
		String research = request.getParameter("research");
		String type = request.getParameter("type");
		String sql = "SELECT * FROM games WHERE "+type+" LIKE '%"+research+"%'";
		ResultSet result = st.executeQuery(sql);
		
				
		
		
		while(result.next()) {
			
			Game instanceGame = new Game();
				
			instanceGame.setTitre(result.getString("titre"));
			instanceGame.setEditeur(result.getString("editeur"));
			instanceGame.setGenre(result.getString("genre"));
			
			listeGame.add(instanceGame);
		}
}
catch (SQLException e) {
	e.printStackTrace();
}
catch (ClassNotFoundException e) {
	e.printStackTrace();
}
%>


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
	
	<% 
	out.println("<ul>");
	for (int i=0; i<listeGame.size(); i++)
          {
		
			  out.println("<li>");
			  out.println("<strong>");
              out.print(listeGame.get(i).getTitre());
              out.println("</strong>");
              out.print(", ");
              out.println("<em>");
              out.print(listeGame.get(i).getGenre());
              out.println("</em>");
              out.print(" - ");
              out.println(listeGame.get(i).getEditeur());
              out.print(".");
              out.print("</li>");
              out.println("<br />");

          } 
	out.println("</ul>");%>
	
	<HR>
	
	<HR>
	
	<HR>

	<% /*Inclure Footer*/ %>
	<jsp:include page="footer.html"></jsp:include>

</body>
</html>