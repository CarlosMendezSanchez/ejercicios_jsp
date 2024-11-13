<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tabla multiplicar</title>
</head>
<body>
	<h1>Tabla de multiplicar</h1>

	<form method="post">
        <label for="numero">Introduce un número del 1-10:</label>
        <br>
        <input type="number" id="numero" name="numero" required>
        <br>
        <input type="submit" value="Enviar">
    </form>
    
    <%
        String numero1 = request.getParameter("numero");

        if (numero1 != null) {
            try {
                int numero = Integer.parseInt(numero1);
                if (numero >= 1 && numero <= 10) {
    %>
                    <h3>Tabla de multiplicar del <%= numero %>:</h3>
                    <table border="1">
                        <%
                            for (int i = 1; i <= 10; i++) {
                        %>
                            <tr>
                                <td><%= numero %> x <%= i %> = <%= numero * i %></td>
                            </tr>
                        <%
                            }
                        %>
                    </table>
    <%
                } else {
    %>
                    <h3">Introduce un número del 1 al 10.</h3>
    <%
                }
            } catch (Exception e) {
    %>
                <h3>Introduce un número válido.</h3>
    <%
            }
        }
    %>
</body>
</html>