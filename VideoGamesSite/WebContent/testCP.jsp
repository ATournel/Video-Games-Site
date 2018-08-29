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
	
	<p><strong>Un an après sa parution au Japon, Dragon Quest XI débarque enfin dans nos belles contrées,
	 sur PC et PS4. Le retour d'un J-RPG qui aime faire dans la tradition, portée par une direction
	  artistique exemplaire depuis des années. Voyons ensemble si la formule marche toujours.
	</strong></p>	


	<h3>IL ÉTAIT UNE FOIS...</h3>
	<p>Il suffit d'entendre les premières notes puissantes de trompette pour être embarqué dans un autre monde. 
	Dragon Quest a toujours opté pour un univers joyeux et des personnages charismatiques, avec un enrobage JRPG 
	qui sert surtout à nous raconter des histoires. Le pitch de base, comme toujours avec la série, fait dans 
	l'ultra-classique : Un jeune garçon de 16 ans découvre qu'il est une sorte de messie appelé l'Eclairé, 
	et part à la capitale afin de rencontrer le Roi. Je n'ai pas l'intention de vous raconter quoique ce soit
	 de plus, néanmoins sachez que la narration de cet opus ne déroge pas à la règle de la série.
	  Tout en constituant un tout (plein de petits secrets et rebondissements), 
	  l'idée est de faire voyager le joueur en lui faisant rencontrer des personnalités attachantes. 
	  Il est impossible de ne pas sourire quand on joue à un Dragon Quest, devant un prince trop trouillard pour
	   assumer ses responsabilités ou face à la classe retentissante du soi-disant saltimbanque de la bande.
Gardez le plaisir de la découverte, mais sachez qu'un DQ se joue avec l'esprit ouvert, sans prise de tête.
Cela dit, j'aimerais apporter un léger bémol, qui peut potentiellement s'avérer pesant pendant l'aventure. 
Compte tenu de l'importance de la narration dans un Dragon Quest, la mise en scène est censée être d'une 
importance capitale. Pourtant, elle fait partie des rares éléments qui accusent parfois le poids de l'âge.
 En voulant constamment ramener le conte à la dynamique JRPG, le titre casse régulièrement son rythme avec
  des passages de gameplay très courts ponctués de micro-chargements. Cela est sans compter les quelques fondus 
  au noir et passages lents dus à une structure archaïque et à des animations qui ne plus autant adaptées à une
   dimension narrative prenante. Dragon Quest XI nous rappelle un peu trop souvent qu'il est un JRPG à 
   l'ancienne, à des moments où ce n'était pas vraiment nécessaire.
</p>


	
	<% /*Inclure Footer*/ %>
	<jsp:include page="footer.html"></jsp:include>

</body>
</html>