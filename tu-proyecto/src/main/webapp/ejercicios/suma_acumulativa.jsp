<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Suma acumulativa</title>
</head>
<body>
	<h1>Suma acumulativa</h1>

	<form method="post">
        <label for="numero">Introduce un número:</label>
        <br>
        <input type="number" id="numero" name="numero" required>
        <br>
        <input type="submit" value="Enviar">
    </form>
    
    <%
        String numero1 = request.getParameter("numero");

        if (numero1 != null) {
            try {
                int num = Integer.parseInt(numero1);
                int suma = 0;
                for (int i = 1; i <= num; i++) {
                    suma += i;
                }
    %>
                <h3>La suma de todos los números desde 1 hasta <%= num %> es: <%= suma %></h3>
    <%
            } catch (Exception e) {
    %>
                <h3>Introduce un número válido.</h3>
    <%
            }
        }
    %>
</body>
</html>