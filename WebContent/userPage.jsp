<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>

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
    Float resultado1 = null;
    Float resultado2 = null;
    Float resultado3 = null;
    Float resultado4 = null;
    Float resultado5 = null;
    
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
    String sql ="SELECT AVG(Res_1) FROM Respuestas";
    String sql2 ="SELECT AVG(Res_2) FROM Respuestas";
    String sql3 ="SELECT AVG(Res_3) FROM Respuestas";
    String sql4 ="SELECT AVG(Res_4) FROM Respuestas";
    String sql5 ="SELECT AVG(Res_5) FROM Respuestas";
    
    String res1 ="SELECT * FROM Datos Where ID = 1";
    String res2 ="SELECT * FROM Datos Where ID = 2";
    String res3 ="SELECT * FROM Datos Where ID = 3";
    String res4 ="SELECT * FROM Datos Where ID = 4";
    String res5 ="SELECT * FROM Datos Where ID = 5";
    String res6 ="SELECT * FROM Datos Where ID = 6";

    resultSet = statement.executeQuery(sql);
    while(resultSet.next()){
    resultado1=resultSet.getFloat("AVG(Res_1)"); 
     }
    resultSet = statement.executeQuery(sql2);
    while(resultSet.next()){
    resultado2=resultSet.getFloat("AVG(Res_2)"); 
     }
    resultSet = statement.executeQuery(sql3);
    while(resultSet.next()){
    resultado3=resultSet.getFloat("AVG(Res_3)"); 
     }
    resultSet = statement.executeQuery(sql4);
    while(resultSet.next()){
    resultado4=resultSet.getFloat("AVG(Res_4)"); 
     }
    resultSet = statement.executeQuery(sql5);
    while(resultSet.next()){
    resultado5=resultSet.getFloat("AVG(Res_5)"); 
     }
    
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


<%
Gson gsonObj = new Gson();
Map<Object,Object> map = null;
List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();

String primero = "Respuesta 1";
String segundo = "Respuesta 2";
String tercero = "Respuesta 3";
String cuarto = "Respuesta 4";
String quinto = "Respuesta 5";

map = new HashMap<Object,Object>(); map.put("x", 1); map.put("y", resultado1); map.put("indexLabel", primero); list.add(map);
map = new HashMap<Object,Object>(); map.put("x", 2); map.put("y", resultado2); map.put("indexLabel", segundo); list.add(map);
map = new HashMap<Object,Object>(); map.put("x", 3); map.put("y", resultado3); map.put("indexLabel", tercero); list.add(map);
map = new HashMap<Object,Object>(); map.put("x", 4); map.put("y", resultado4); map.put("indexLabel", cuarto); list.add(map);
map = new HashMap<Object,Object>(); map.put("x", 5); map.put("y", resultado5); map.put("indexLabel", quinto); list.add(map);
 
String dataPoints = gsonObj.toJson(list);
%>
 
<!DOCTYPE HTML>
<html>
<head>
    <title>Pagina de usuario</title>
	<link rel="stylesheet" type="text/css" href="css/layouts/style.css">
        
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
window.onload = function() { 
 
var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
	exportEnabled: true,
	title: {
		text: "Respuestas en promedio de los usuarios"
	},
	data: [{
		type: "column", //change type to bar, line, area, pie, etc
		//indexLabel: "{y}", //Shows y value on all Data Points
		indexLabelFontColor: "#5A5757",
		indexLabelPlacement: "outside",
		dataPoints: <%out.print(dataPoints);%>
	}]
});
chart.render();
 
}
</script>
</head>
<body> 
    <div id="frm" style="height: 1025px; width: 50%;">
        <h1 align="center"> Pagina de administrador</h1>
        <p>
            Promedio de respuestas ingresadas:        
        </p>
        <div id="chartContainer" align="center" style="height: 370px; width: 100%;"></div>
        <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
        <p>
            Cambiar las preguntas del cuestionario:
        </p>
        
        <form action="GetData" method="post">
        <p>
            <label>Pregunta 1:</label>
            <label><%=preg1%></label>
	</p>
            <input type="text" name="p1"/>
	<p>
            <p>
            <label>Pregunta 2:</label>
            <label><%=preg2%></label>
	</p>
            <input type="text" name="p2"/>
        <p>
            <label>Pregunta 3:</label>
            <label><%=preg3%></label>

	</p>
            <input type="text" name="p3"/>
	<p>
            <label>Pregunta 4:</label>
            <label><%=preg4%></label>

	</p>
            <input type="text" name="p4"/>
	<p>
        <p>
            <label>Pregunta 5:</label>
            <label><%=preg5%></label>
	</p>
            <input type="text" name="p5"/>
	<p>
        <p>
            <label>Pregunta abierta:</label>
            <label><%=preg6%></label>

	</p>
            <input type="text" name="pa"/>
	<p>
        <p>
	<input type="submit" id="btn" value="Cambiar" />
	</p>
        </form>            
        <a href="logout.jsp" id="btn">Volver al inicio</a>
        <div/>
</body>
</html>                              