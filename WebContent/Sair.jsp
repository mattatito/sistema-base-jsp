<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%

//Excluir a sess�o
session.removeAttribute("usuario");

//Redirecionar a pagina principal
response.sendRedirect("usuario.jsp");

%>


