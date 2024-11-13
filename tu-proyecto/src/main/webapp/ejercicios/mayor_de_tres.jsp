<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mayor de tres</title>
</head>
<body>
	<h1>Mayor de tres</h1>

	<form method="post">
        <label for="numero1">Número 1:</label>
        <input type="number" id="numero1" name="numero1" required>
        <br>
        <label for="numero2">Número 2:</label>
        <input type="number" id="numero2" name="numero2" required>
        <br>
        <label for="numero3">Número 3:</label>
        <input type="number" id="numero3" name="numero3" required>
        <br>
        <input type="submit" value="Enviar">
    </form>
    
    <%
        String numero1 = request.getParameter("numero1");
        String numero2 = request.getParameter("numero2");
        String numero3 = request.getParameter("numero3");

        if (numero1 != null && numero2 != null && numero3 != null) {
            try {
                double numero4 = Double.parseDouble(numero1);
                double numero5 = Double.parseDouble(numero2);
                double numero6 = Double.parseDouble(numero3);
                double mayor = numero4;
                if (numero5 > mayor) {
                    mayor = numero5;
                }
                if (numero6 > mayor) {
                    mayor = numero6;
                }
    %>
                <h3>El número mayor es: <%= mayor %></h3>
    <%
            } catch (Exception e) {
    %>
                <h3>Introduzca números válidos.</h3>
    <%
            }
        }
    %>
</body>
</html>