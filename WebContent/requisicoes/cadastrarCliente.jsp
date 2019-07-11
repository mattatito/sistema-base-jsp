<%@page import="bean.ClienteBean"%>
<%@page import="dao.ClienteDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

  <%//TERMINAR REDIRECIONAMENTO
  	
  	
  		//Obtendo informações
  		String nomeEstabelecimento = request.getParameter("estabelecimento");
  		String emailCliente = request.getParameter("emailCliente");
  		String senhaCliente = request.getParameter("senhaCliente");
  		String telefone = request.getParameter("contatoCliente");
  		String bairro = request.getParameter("bairroCliente");
  		String cidade = request.getParameter("cidadeCliente");
  		String estado = request.getParameter("estadoCliente");
  		
  		//Setando informações
  		ClienteBean cb = new ClienteBean();
  		cb.setNomeEstabelecimento(nomeEstabelecimento);
  		cb.setEmailCliente(emailCliente);
  		cb.setSenhaCliente(senhaCliente);
  		cb.setTelefone(telefone);
  		cb.setBairro(bairro);
  		cb.setCidade(cidade);
  		cb.setEstado(estado);
  		
  		//Executar método
  		ClienteDao cd = new ClienteDao();
  		boolean situacao = cd.cadastrar(cb);
  		
  		//Redirecionamento
  		if (situacao == true){
  			response.sendRedirect("../usuario.jsp?mensagem=cadastroOk");
  		}else{
  			response.sendRedirect("../usuario.jsp?mensagem=cadastroFalha");
  		}	
  
  
  
  %>