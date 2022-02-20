<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="classes.Vagas" %>
<%@ page import="classes.Bd" %>
<%
String dc = request.getParameter("dsc");
String ro = request.getParameter("rob");
String rd = request.getParameter("rde");
String rex = request.getParameter("rem");
//converte string remuneração em float
String vx = rex;
vx = vx.replace(".","");
vx = vx.replace(",",".");
float vr = Float.parseFloat(vx);
String be = request.getParameter("ben");
String lt = request.getParameter("ltr");

//---- Back-End -----------------------
Vagas v = new Vagas();
v.setDescricao_cc(dc);
v.setReq_obrigatorios_cc(ro);
v.setReq_desejaveis_cc(rd);
v.setRemuneracao_cc(vr);
v.setBeneficios_cc(be);
v.setLocal_trabalho_cc(lt);
v.Incluir(); 
%>

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
	
	</head>
	<body>
		<div>Sistema de Controle de Vagas de Emprego</div> <br>
		<div>
			<table>
				<tr><td>Descrição</td><td style="color:blue"><%=dc%></td></tr>
				
				<tr><td>Requisitos Obrigatórios</td><td style="color:blue"><%=ro%></td></tr>
				
				<tr><td>Requisitos Desejáveis</td><td style="color:blue"><%=rd%></td></tr>
				
				<tr><td>Remuneração</td><td style="color:blue"><%=rex%></td></tr>
				
				<tr><td>Benefício</td><td style="color:blue"><%=be%></td></tr>
				
				<tr><td>Local de Trabalho</td><td style="color:blue"><%=lt%></td></tr>
				
				<tr><th colspan=2 style="color:green">Vaga incluída com sucesso.</th></tr>
			</table>
		</div><br>
		<div>
			<form action="index.jsp" method="get">
				<input type="submit" value="Voltar">
			</form>
		</div>
	</body>
</html>