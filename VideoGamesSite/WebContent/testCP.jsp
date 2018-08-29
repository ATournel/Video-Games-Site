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
		String sql = "Select * FROM games WHERE games.titre='CyberPunk 2077'";
		ResultSet result = st.executeQuery(sql);
		
				
		
		
		while(result.next()) {
			
			Game instanceGame = new Game();
				
			instanceGame.setTitre(result.getString("titre"));
			instanceGame.setEditeur(result.getString("editeur"));
			instanceGame.setDate(result.getInt("date"));
			
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
<title>Page testDR</title>
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
	
	<center><h1>CyberPunk 2077</h1></center>
	
	<div id="tete">
		<ul>
			<li><img src="images/cyberpunk-2077-4-captures-decran-devoilees-86221.jpg" width=30% height=30%></li>
			<li>
			<% 
	for (int i=0; i<listeGame.size(); i++)
          {
		
			  out.print("Titre VO: ");
			  out.println("<strong>");
              out.print(listeGame.get(i).getTitre());
              out.println("</strong>");
              out.println("<br />");
              out.print("Editeur: ");
              out.println("<em>");
              out.print(listeGame.get(i).getEditeur());
              out.println("</em>");
              out.println("<br />");
              out.print("Date de sortie: ");
              out.println(listeGame.get(i).getDate());

          } %>			
			</li>
		</ul>	
	</div>
	
	<HR>
	
	<p><strong>Un an apr�s sa parution au Japon, Dragon Quest XI d�barque enfin dans nos belles contr�es,
	 sur PC et PS4. Le retour d'un J-RPG qui aime faire dans la tradition, port�e par une direction
	  artistique exemplaire depuis des ann�es. Voyons ensemble si la formule marche toujours.
	</strong></p>	


	<h3>IL �TAIT UNE FOIS...</h3>
	<p>Il suffit d'entendre les premi�res notes puissantes de trompette pour �tre embarqu� dans un autre monde. 
	Dragon Quest a toujours opt� pour un univers joyeux et des personnages charismatiques, avec un enrobage JRPG 
	qui sert surtout � nous raconter des histoires. Le pitch de base, comme toujours avec la s�rie, fait dans 
	l'ultra-classique : Un jeune gar�on de 16 ans d�couvre qu'il est une sorte de messie appel� l'Eclair�, 
	et part � la capitale afin de rencontrer le Roi. Je n'ai pas l'intention de vous raconter quoique ce soit
	 de plus, n�anmoins sachez que la narration de cet opus ne d�roge pas � la r�gle de la s�rie.
	  Tout en constituant un tout (plein de petits secrets et rebondissements), 
	  l'id�e est de faire voyager le joueur en lui faisant rencontrer des personnalit�s attachantes. 
	  Il est impossible de ne pas sourire quand on joue � un Dragon Quest, devant un prince trop trouillard pour
	   assumer ses responsabilit�s ou face � la classe retentissante du soi-disant saltimbanque de la bande.
Gardez le plaisir de la d�couverte, mais sachez qu'un DQ se joue avec l'esprit ouvert, sans prise de t�te.
Cela dit, j'aimerais apporter un l�ger b�mol, qui peut potentiellement s'av�rer pesant pendant l'aventure. 
Compte tenu de l'importance de la narration dans un Dragon Quest, la mise en sc�ne est cens�e �tre d'une 
importance capitale. Pourtant, elle fait partie des rares �l�ments qui accusent parfois le poids de l'�ge.
 En voulant constamment ramener le conte � la dynamique JRPG, le titre casse r�guli�rement son rythme avec
  des passages de gameplay tr�s courts ponctu�s de micro-chargements. Cela est sans compter les quelques fondus 
  au noir et passages lents dus � une structure archa�que et � des animations qui ne plus autant adapt�es � une
   dimension narrative prenante. Dragon Quest XI nous rappelle un peu trop souvent qu'il est un JRPG � 
   l'ancienne, � des moments o� ce n'�tait pas vraiment n�cessaire.
</p>


	
	<% /*Inclure Footer*/ %>
	<jsp:include page="footer.html"></jsp:include>

</body>
</html>