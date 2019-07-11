

<%@page import="dao.ProdutoDao"%>
<%

	//IdProduto
	int idProduto = Integer.parseInt(request.getParameter("idProduto"));
	int fkCliente = Integer.parseInt(request.getParameter("User"));

	//Executar método
	ProdutoDao pd = new ProdutoDao();
	boolean situacao = pd.excluir(idProduto);
	
	//Redirecionamento
	if(situacao == true){
		response.sendRedirect("../logado.jsp?User="+fkCliente+"&mensagem=excluirOk");
	}else{
		response.sendRedirect("../logado.jsp?User="+fkCliente+"&mensagem=falhaEscluir");
	}
		

%>