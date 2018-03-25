<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%!

Connection connection = null;
Statement  statement = null;
ResultSet resultset = null;

String driver = "com.mysql.jdbc.Driver";


String database = "curso_java_ee_ii";
String usuario = "root";
String senha = "";
String acesso;
String url = "jdbc:mysql://127.0.0.1/" + database;

public void jspInit()
{
	try{
		Class.forName(driver);
		connection = DriverManager.getConnection(url, usuario, senha);
		statement = connection.createStatement();	
	}catch(Exception e){
		System.out.println("ERRO NA CONEXÃO AO DB : " + e);
	}
}

public void jspDestroy()
{
	try{
		statement.close();
		connection.close();
	}catch(Exception e){
		System.out.println("ERRO NO FECHAMENTO DO DB: " + e);
	}
} %>

<%
acesso = (String) session.getAttribute("login");
%>