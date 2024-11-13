<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Categorización edades</title>
</head>
<body>
	<h1>Categorización de edades</h1>

	<form method="post">
        <label for="edad">Edad:</label>
        <br>
        <input type="number" id="edad" name="edad" required>
        <br>
        <input type="submit" value="Enviar">
    </form>
    
    <%
        String edad1 = request.getParameter("edad");

        if (edad1 != null) {
            try {
                int edad = Integer.parseInt(edad1);
                String categoria = "";
                if (edad < 12) {
                    categoria = "Infante";
                } else if (edad >= 12 && edad <= 17) {
                    categoria = "Adolescente";
                } else if (edad >= 18 && edad <= 60) {
                    categoria = "Adulto";
                } else if (edad > 60) {
                    categoria = "Anciano";
                }
    %>
                <h3>Eres : <%= categoria %></h3>
    <%
            } catch (Exception e) {
    %>
                <h3>Introduce una edad válida.</h3>
    <%
            }
        }
    %>
</body>
</html>