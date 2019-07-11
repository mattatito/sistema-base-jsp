<%@page import="dao.UsuarioDao"%>
<%@page import="bean.UsuarioBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
    
    	//obter dados
    	String nomeUsuario = request.getParameter("nome");
    	String emailUsuario = request.getParameter("email");
    	String bairroUsuario = request.getParameter("bairro");
    	String Cidade = request.getParameter("cidade");
    	String Estado = request.getParameter("estado");
    	String CpfUsuario = request.getParameter("cpf");
    	String TelefoneUsuario = request.getParameter("telefone");
    	
    	//Usuario Bean
    	UsuarioBean ub = new UsuarioBean();
    	ub.setNomeUsuario(nomeUsuario);
    	ub.setEmailUsuario(emailUsuario);
    	ub.setBairroUsuario(bairroUsuario);
    	ub.setCidade(Cidade);
    	ub.setEstado(Estado);
    	ub.setCpfUsuario(CpfUsuario);
    	ub.setTelefoneUsuario(TelefoneUsuario);
    	
    	//Usuario Dao
    	UsuarioDao ud = new UsuarioDao();
    	boolean valida = ud.cadastrar(ub);
    	
    	//redirecionamento
    	if(valida==true){
    		response.sendRedirect("../index.jsp?mensagem=cadastroOK");
    	}else{
    		response.sendRedirect("../index.jsp?mensagem=cadastroFalho");
    	}
    	
    	
    
    %>