<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculo del Tiempo de viaje</title>
</head>
<body>
	<h1>Calcular el tiempo de viaje</h1>
	
	<form method="post">
        <label for="distancia">Distancia que se va a recorrer (en km):</label> 
        <input type="number" id="distancia" name="distancia" required>
        <br>
        <label for="velocidad">Velocidad promedio (en km/h):</label>  
        <input type="number" id="velocidad" name="velocidad" required>
        <br>
        <input type="submit" value="Enviar">
    </form>
    
    <%
        String distancia1 = request.getParameter("distancia");
        String velocidad1 = request.getParameter("velocidad");

        if (distancia1 != null && velocidad1 != null) {
            try {
                double distancia2 = Double.parseDouble(distancia1);
                double velocidad2 = Double.parseDouble(velocidad1);
                double tiempo = distancia2 / velocidad2;
    %>
                <h3>Tomará : <%= String.format("%.2f", tiempo) %> horas.</h3>
    <%
            } catch (Exception e) {
    %>
                <h3>Introduce valores numéricos válidos.</h3>
    <%
            }
        }
    %>
</body>
</html>
</body>
</html>