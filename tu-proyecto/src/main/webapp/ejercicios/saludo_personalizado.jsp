<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>saludo personalizado</title>
</head>
<body>
	<h1>Introducir nombre y apellido</h1>
	
	<form method="post">
		<label for="nombre">Nombre: </label>
		<input type="text" id="nombre" name="nombre" required>
		<br>
		<label for="apellido">Apellido: </label>
		<input type="text" id="apellido" name="apellido" required>
		<br>
		<input type="submit" value="Enviar">
	</form>
	
	<%
		String nombre = request.getParameter("nombre");
		String apellido = request.getParameter("apellido");
		if(nombre != null && apellido != null){
	%>
		<h3>¡Hola <%=nombre %> <%=apellido %>!</h3>
	<%
		}
	%>
</body>
</html>