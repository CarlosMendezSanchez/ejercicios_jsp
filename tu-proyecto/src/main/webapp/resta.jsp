<%@page import="com.miproyecto.services.Calculadora"%>
<%@page import="com.miproyecto.services.CalculadoraImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!--  Prueba en :  http://localhost:8080/tu-proyecto/suma.jsp?numero1=10&numero2=20 -->
    <title>Resta Simple</title>
</head>
<body>
    <h2>Resultado de la Resta</h2>
    <%
    	Calculadora calc = new CalculadoraImpl();
        // Obtener los parámetros de la solicitud
        String numero1Str = request.getParameter("numero1");
        String numero2Str = request.getParameter("numero2");
        
        // Convertir los parámetros a tipo int
        double numero1 = Double.parseDouble(numero1Str);
        double numero2 = Double.parseDouble(numero2Str);
        
        // Realizar la suma
        double resultado = calc.restar(numero1, numero2);
    %>
    <p>La resta de <%= numero1 %> y <%= numero2 %> es <%= resultado %>.</p>
</body>
</html>