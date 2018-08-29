<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*"%>
 <%
 try {
 			String name = request.getParameter("username");
	        String firstName = request.getParameter("userfirstname");
	        String pseudo = request.getParameter("userpseudo");
	        String mdp = request.getParameter("password");
	        String mail = request.getParameter("email");
	        
	        
	        Class.forName("com.mysql.jdbc.Driver");
			
			String url = "jdbc:mysql://localhost:3306/video_games_bdd";
			String user = "root";
			String pwd= "Ioplop88";
			
			Connection con=DriverManager.getConnection(url, user, pwd);
			PreparedStatement ps = con.prepareStatement("insert into compte values(?,?,?,?,?)");
				
			ps.setString(1, name);
		    ps.setString(2, firstName);
		    ps.setString(3, pseudo);
		    ps.setString(4, mdp);
		    ps.setString(5, mail);
		            
		    int i = ps.executeUpdate();
		            
		            
		    if(i>0){
		    %>
		    	
		        <jsp:forward page="Home.jsp"></jsp:forward>
		    <% 
		    }
		    else{
		    	out.print("sorry!please fill correct detail and try again" );
		    }
				
 }
 catch(Exception e){e.printStackTrace();
 out.print("Pseudo déja pris!" );
 }
 
 Thread.sleep(2000);

 %>
