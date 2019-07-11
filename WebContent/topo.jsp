<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Topo</title>

<!-- css -->
<link rel="stylesheet" href="css/estilo.css">

</head>
<body>

<!-- validacao -->

	<%
	
		try{
			Object usuario = session.getAttribute("usuario");
			if(usuario == null){
				response.sendRedirect("index.jsp?mensagem=falhaSessao");
			}
			}catch(Exception erro){
				out.print("falha na sessão");
			}
		
	
	%>

</body>