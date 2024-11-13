<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dia de la semana</title>
</head>
<body>
<h1>Día de la semana</h1>

<form method="post">
        <label for="numero">Introducir número del 1-7 :</label>
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
                String dia = "";
                
                switch (numero) {
                    case 1: dia = "Lunes"; break;
                    case 2: dia = "Martes"; break;
                    case 3: dia = "Miércoles"; break;
                    case 4: dia = "Jueves"; break;
                    case 5: dia = "Viernes"; break;
                    case 6: dia = "Sábado"; break;
                    case 7: dia = "Domingo"; break;
                    default:
                    	break;
                }
                if (numero >= 1 && numero <= 7) {
    %>
                    <h3>El día correspondiente es: <%= dia %></h3>
    <%
                } else {
    %>
                    <h3>Introduce un número del 1 al 7.</h3>
    <%
                }
            } catch (Exception e) {
    %>
                <h3>Introduce un número del 1 al 7.</h3>
    <%
            }
        }
    %>
</body>
</html>