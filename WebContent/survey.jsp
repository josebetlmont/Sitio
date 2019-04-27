<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String id = request.getParameter("ID");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://remotemysql.com:3306/";
String dbName = "6BBVOPZm0z";
String userId = "6BBVOPZm0z";
String password = "JyeN4hBiEh";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<%   
    String preg1 = null;
    String preg2 = null;
    String preg3 = null;
    String preg4 = null;
    String preg5 = null;
    String preg6 = null;    
    %>

<%try{ 
    connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
    statement=connection.createStatement();
    
    String res1 ="SELECT * FROM Datos Where ID = 1";
    String res2 ="SELECT * FROM Datos Where ID = 2";
    String res3 ="SELECT * FROM Datos Where ID = 3";
    String res4 ="SELECT * FROM Datos Where ID = 4";
    String res5 ="SELECT * FROM Datos Where ID = 5";
    String res6 ="SELECT * FROM Datos Where ID = 6";
    
    resultSet = statement.executeQuery(res1);
    while(resultSet.next()){
    preg1=resultSet.getString("Pregunta"); 
     }
    resultSet = statement.executeQuery(res2);
    while(resultSet.next()){
    preg2=resultSet.getString("Pregunta"); 
     }
    resultSet = statement.executeQuery(res3);
    while(resultSet.next()){
    preg3=resultSet.getString("Pregunta"); 
     }
    resultSet = statement.executeQuery(res4);
    while(resultSet.next()){
    preg4=resultSet.getString("Pregunta"); 
     }
    resultSet = statement.executeQuery(res5);
    while(resultSet.next()){
    preg5=resultSet.getString("Pregunta"); 
     }
    resultSet = statement.executeQuery(res6);
    while(resultSet.next()){
    preg6=resultSet.getString("Pregunta"); 
     }
    
    } catch (Exception e) {
    e.printStackTrace(); }%>  
    
<!DOCTYPE html>
<html>
<head>
	<title>Encuesta</title>
	<link rel="stylesheet" type="text/css" href="css/layouts/style.css">
</head>

<body>
	<div id="frm">
		<form action="PostData" method="post">
			<h1 align="center"> Encuesta de servicio</h1>
			<p>
				<label><%=preg1%></label>
				</p>
				<input type="radio" name="pre1" value="1" /> 1
  				<input type="radio" name="pre1" value="2" /> 2
  				<input type="radio" name="pre1" value="3" /> 3
  				<input type="radio" name="pre1" value="4" /> 4
  				<input type="radio" name="pre1" value="5" /> 5
                                <p></p>
				<label><%=preg2%></label>
				<p></p>
				<input type="radio" name="pre2" value="1" /> 1
  				<input type="radio" name="pre2" value="2" /> 2
  				<input type="radio" name="pre2" value="3" /> 3
  				<input type="radio" name="pre2" value="4" /> 4
  				<input type="radio" name="pre2" value="5" /> 5
                                <p></p>
				<label><%=preg3%></label>
                                <p></p>
				<input type="radio" name="pre3" value="1" /> 1
  				<input type="radio" name="pre3" value="2" /> 2
  				<input type="radio" name="pre3" value="3" /> 3
  				<input type="radio" name="pre3" value="4" /> 4
  				<input type="radio" name="pre3" value="5" /> 5
                                <p></p>
				<label><%=preg4%></label>
				</p>
				<input type="radio" name="pre4" value="1" /> 1
  				<input type="radio" name="pre4" value="2" /> 2
  				<input type="radio" name="pre4" value="3" /> 3
  				<input type="radio" name="pre4" value="4" /> 4
  				<input type="radio" name="pre4" value="5" /> 5
                                <p></p>
				<label><%=preg5%></label>
				</p>
				<input type="radio" name="pre5" value="1" /> 1
  				<input type="radio" name="pre5" value="2" /> 2
  				<input type="radio" name="pre5" value="3" /> 3
  				<input type="radio" name="pre5" value="4" /> 4
  				<input type="radio" name="pre5" value="5" /> 5
                                <p></p>
				<label><%=preg6%></label>
				</p>
				<input type="text" name="preA"/>
			<p>
				<input type="submit" id="btn" value="Subir" />
			</p>
 <!--  https://canvasjs.com/jsp-charts/chart-index-data-label/  Checar sitio para graficas -->
</body>
</html>