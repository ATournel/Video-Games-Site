<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<%
try {
		String name= request.getParameter("userpseudo");
		String message= request.getParameter("message");
		
		Class.forName("com.mysql.jdbc.Driver");
		
		String url = "jdbc:mysql://localhost:3306/video_games_bdd";
		String user = "root";
		String pwd= "Ioplop88";
		
		Connection con=DriverManager.getConnection(url, user, pwd);
		
		PreparedStatement ps=con.prepareStatement("insert into commentaire values(?,?)");
		ps.setString(1,name);
		ps.setString(2,message);
		
		int s= ps.executeUpdate();
		if(s>0){
			out.print("Message envoyé!");
			Thread.sleep(2000);
		%>
		
		<jsp:forward page="Home.jsp"></jsp:forward>
		<% 
		}
		else{
		out.print("Message trop long!" );		
		}
}
catch(Exception e){e.printStackTrace();
out.print("Créez un compte pour laisser un commentaire!" );
}

%>
