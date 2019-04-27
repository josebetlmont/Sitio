<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
                        <h1 align="center" style="color:red;"> !Complete la encuesta antes de enviarla!</h1>
			<p>
				<label>Pregunta 1:</label>
				</p>
				<input type="radio" name="pre1" value="1" /> 1
  				<input type="radio" name="pre1" value="2" /> 2
  				<input type="radio" name="pre1" value="3" /> 3
  				<input type="radio" name="pre1" value="4" /> 4
  				<input type="radio" name="pre1" value="5" /> 5
			<p>
				<label>Pregunta 2:</label>
				</p>
				<input type="radio" name="pre2" value="1" /> 1
  				<input type="radio" name="pre2" value="2" /> 2
  				<input type="radio" name="pre2" value="3" /> 3
  				<input type="radio" name="pre2" value="4" /> 4
  				<input type="radio" name="pre2" value="5" /> 5
			<p>
				<label>Pregunta 3:</label>
				</p>
				<input type="radio" name="pre3" value="1" /> 1
  				<input type="radio" name="pre3" value="2" /> 2
  				<input type="radio" name="pre3" value="3" /> 3
  				<input type="radio" name="pre3" value="4" /> 4
  				<input type="radio" name="pre3" value="5" /> 5
			<p>
				<label>Pregunta 4:</label>
				</p>
				<input type="radio" name="pre4" value="1" /> 1
  				<input type="radio" name="pre4" value="2" /> 2
  				<input type="radio" name="pre4" value="3" /> 3
  				<input type="radio" name="pre4" value="4" /> 4
  				<input type="radio" name="pre4" value="5" /> 5
			<p>
				<label>Pregunta 5:</label>
				</p>
				<input type="radio" name="pre5" value="1" /> 1
  				<input type="radio" name="pre5" value="2" /> 2
  				<input type="radio" name="pre5" value="3" /> 3
  				<input type="radio" name="pre5" value="4" /> 4
  				<input type="radio" name="pre5" value="5" /> 5
			<p>
				<label>Pregunta Abierta:</label>
				</p>
				<input type="text" name="preA"/>
			<p>
				<input type="submit" id="btn" value="Subir" />
			</p>
 <!--  https://canvasjs.com/jsp-charts/chart-index-data-label/  Checar sitio para graficas -->
</body>
</html>