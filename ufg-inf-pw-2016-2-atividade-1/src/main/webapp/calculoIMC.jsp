<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Cálculo de IMC</title>
	</head>
	<body>
		<h1>Cálculo de IMC</h1>
		<label for="peso">Peso</label>
		<input type="text" id="peso" name="peso"><br>
		<label for="altura">Altura</label>
		<input type="text" id="altura" name="altura"><br>
		<p>Qual o sexo?</p><br>
		<label>Masculino</label>
		<input type="radio" name="sexo" value="masculino"><br>
		<label>Feminino</label>
		<input type="radio" name="sexo" value="feminino"><br>
		<button>Calcular</button>
		<%
			String pesoStr = request.getParameter("peso");
			String alturaStr = request.getParameter("altura");
			String sexoStr = request.getParameter("sexo");
				
			double peso = double.parseDouble(pesoStr);
			double altura = double.parseDouble(alturaStr);
			
			double imc = peso / (altura * altura);
			
			if(sexoStr.equals("masculino")){
				if(imc < 20.7){
					%><b>Abaixo do peso</b><%
				} else if(imc >= 20.7 && imc < 26.4){
					%><b>No peso normal</b><%
				} else if(imc >= 26.4 && imc < 27.8){
					%><b>Marginalmente acima do peso</b><%
				} else if(imc >= 27.8 && imc < 31.1){
					%><b>Acima do peso ideal</b><%
				} else if(imc >= 31.1){
					%><b>Obeso</b><%
				}
			} else {
				if(imc < 19.1){
					%><b>Abaixo do peso</b><%
				} else if(imc >= 19.1 && imc < 25.8){
					%><b>No peso normal</b><%
				} else if(imc >= 25.8 && imc < 27.3){
					%><b>Marginalmente acima do peso</b><%
				} else if(imc >= 27.3 && imc < 32.3){
					%><b>Acima do peso ideal</b><%
				} else if(imc >= 32.3){
					%><b>Obeso</b><%
				}
			}
			%>
	</body>
</html>