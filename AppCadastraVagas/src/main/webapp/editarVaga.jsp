<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- remivi o import bd para test -->
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Sistema de Controle de Vagas de Emprego</title>
	
	<!-- Bootstrap início -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <!-- Bootstrap fim -->

    <!-- Font Awesome -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
	
	<!-- estilo css -->
	<link rel="stylesheet" type="text/css" href="estilo.css">
	
	<!-- bibliotéca máscara jquery  -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src = "https://cdnjs.cloudflare.com/ajax/libs/jquerymaskmoney/3.0.2/jquery.maskMoney.min.js"></script>
	
	<!--Construção de máscaras pelo JQUERY-->
	<script type="text/javascript">
	 $(function() {
		 $('#mask-real').maskMoney({showSymbol:true,symbol:'R$ ', 
		 decimal:',', thousands:'.', allowZero:true}); // valor monet�rio
	 });
	</script>
	
</head>
<body>
<div class="titulo">Sistema de Controle de Vagas de Emprego</div>
<div>alteração</div>
<br>
<div>
	<form action="exibirCadastro.jsp" method="post">
	   <div class="form-row">
	     <div class="form-group col-md-6">
	       <label for="">Descrição</label>
	       <input type="text" name="dsc" required maxlength=45 class="form-control" id="" placeholder="Descrição da Vaga">
	     </div>
	     <div class="form-group col-md-6">
	       <label for="">Requisitos Obrigatórios</label>
	       <input type="text" name="rob" required maxlength=45 class="form-control" id="" placeholder="Requisitos Obrigatórios">
	     </div>
	   </div>
	   <div class="form-group">
	     <label for="">Requisitos Desejáveis</label>
	     <input type="text" name="rde" maxlength=45 class="form-control" id="" placeholder="Requisitos Desejáveis">
	   </div>
	   
	    <div class="form-group">
	     <label for="">Remuneração</label>
	     <input type="text" name="rem" required id="mask-real" size=8 class="form-control" placeholder="Remuneração">
	   </div>
	   
	   <div class="form-group">
	     <label for="">Vaga</label>
	     <input type="radio" name="aberta" required   class="form-control" placeholder="aberta">
	     <input type="radio" name="aberta" required class="form-control" placeholder="encerrada">
	   </div>
	   
	    <div class="form-group">
	      <label for="">Benefícios</label>
	      <input type="text" name="ben" required maxlength=45 class="form-control" id="" placeholder="Benefícios">
	    </div>
	    
	    <div class="form-group">
	      <label for="">Local de trabalho</label>
	      <input type="text" name="ltr" required maxlength=45 class="form-control" id="" placeholder="Local de trabalho">
	    </div>
	    
	   <button type="submit" class="btn btn-primary" name="enviar" value="Enviar">Gravar</button>
	</form>
</div>
</body>
</html>