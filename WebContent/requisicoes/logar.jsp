<%@page import="bean.ClienteBean"%>
<%@page import="dao.ClienteDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%
    	
    		//Obter e-mail e senha
    		String email = request.getParameter("email");
    		String senha = request.getParameter("senha");
    		
    		//Validar o login
    		ClienteDao cd = new ClienteDao();
    		boolean situacao = cd.verificarLogin(email, senha);
    		
    		//Cliente bean
    		ClienteBean cb = new ClienteBean();
 
    		
    		//Condicional
    		if(situacao == true){
    			
    				//ClienteBean	
    				cb = cd.dadosCliente(email, senha);
    				
    				int id = cb.getIdCliente();
    				
    				//Sessão
    				session.setAttribute("usuario", cb);
    				
    				//Redirecionamento
					response.sendRedirect("../logado.jsp?User="+id+"");
    		}else{
    			response.sendRedirect("../usuario.jsp?mensagem=falhaLogin");
    		}
    		
    		
%>