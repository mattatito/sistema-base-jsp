<%@page import="dao.UsuarioDao"%>
<% 

	//idUsuario
	int idUsuario = Integer.parseInt(request.getParameter("idProduto"));
	
	//Executar metodo
	UsuarioDao ud = new UsuarioDao();
	boolean situation = ud.excluir(idUsuario);
	
	//redirecionamento
	if(situation == true){
		response.sendRedirect("../Usuario.jsp?mensagem=excluirOK");
	}else{
		response.sendRedirect("../Usuario.jsp?mensagem=excluirfalha");
	}

%>
