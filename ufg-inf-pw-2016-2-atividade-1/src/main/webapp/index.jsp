<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Cálculo de IMC</title>
		<link href="css/bootstrap.min.css" rel="stylesheet">
	</head>
	<body>
		<form class="form-horizontal">
		<fieldset>

			<legend>Cálculo de IMC</legend>

			<div class="form-group">
				<label class="col-md-4 control-label" for="peso">Peso</label>
				<div class="col-md-4">
					<input id="peso" name="peso" type="text"
						placeholder="Digite o peso em quilogramas"
						class="form-control input-md">

				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="altura">Altura</label>
				<div class="col-md-4">
					<input id="altura" name="altura" type="text"
						placeholder="Digite a altura em metros"
						class="form-control input-md">

				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="sexo">Sexo</label>
				<div class="col-md-4">
					<div class="radio">
						<label for="sexo-0"> <input type="radio" name="sexo"
							id="sexo-0" value="masculino" checked="checked"> Masculino
						</label>
					</div>
					<div class="radio">
						<label for="sexo-1"> <input type="radio" name="sexo"
							id="sexo-1" value="feminino"> Feminino
						</label>
					</div>
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for=""></label>
				<div class="col-md-4">
					<button id="" name="" class="btn btn-primary">Calcular</button>
				</div>
			</div>
			
			<div class="result">
			<%
				String pesoStr = request.getParameter("peso");
				String alturaStr = request.getParameter("altura");
				String sexoStr = request.getParameter("sexo");
			
				pesoStr = (pesoStr == null ? "0" : pesoStr);
				alturaStr = (alturaStr == null ? "0" : alturaStr);
				sexoStr = (sexoStr == null ? "masculino" : sexoStr);
				
				alturaStr = alturaStr.replace(',', '.');
			
				double peso = 0;
				double altura = 0;
			
				peso = Double.parseDouble(pesoStr);
				altura = Double.parseDouble(alturaStr);
				
				double imc = 0;
				imc = peso / (altura * altura);
				
				if(imc > 0){
					%>
						<div class="panel panel-primary">
							<div class="panel-heading">
								<h3 class="panel-title">Resultado IMC</h3>
							</div>
							<div class="panel-body"><%=imc %></div>
						</div>
					<%
				}
			
				if(sexoStr.equals("masculino")){
					if(imc < 20.7){
						%><div class="alert alert-dismissible alert-success">Abaixo do peso</div><%
					} else if(imc >= 20.7 && imc < 26.4){
						%><div class="alert alert-dismissible alert-success">No peso normal</div><%
					} else if(imc >= 26.4 && imc < 27.8){
						%><div class="alert alert-dismissible alert-success">Marginalmente acima do peso</div><%
					} else if(imc >= 27.8 && imc < 31.1){
						%><div class="alert alert-dismissible alert-success">Acima do peso ideal</div><%
					} else if(imc >= 31.1){
						%><div class="alert alert-dismissible alert-success">Obeso</div><%
					}
				} else if (sexoStr.equals("feminino")){
					if(imc < 19.1){
						%><div class="alert alert-dismissible alert-success">Abaixo do peso</div><%
					} else if(imc >= 19.1 && imc < 25.8){
						%><div class="alert alert-dismissible alert-success">No peso normal</div><%
					} else if(imc >= 25.8 && imc < 27.3){
						%><div class="alert alert-dismissible alert-success">Marginalmente acima do peso</div><%
					} else if(imc >= 27.3 && imc < 32.3){
						%><div class="alert alert-dismissible alert-success">Acima do peso ideal</div><%
					} else if(imc >= 32.3){
						%><div class="alert alert-dismissible alert-success">Obeso</div><%
					}
				} 
			%>
			</div>

		</fieldset>
	</form>
	
	</body>
</html>