

<%@page import="dao.ProdutoDao"%>
<%@page import="bean.ProdutoBean"%>
<%

	//Obtendo dados
	int idProduto = Integer.parseInt(request.getParameter("idProduto"));
	String nomeProduto = request.getParameter("produto");
	double valorProduto = Double.parseDouble(request.getParameter("valor"));
	int fkSegmentos = Integer.parseInt(request.getParameter("segmento"));
	int fkCliente = Integer.parseInt(request.getParameter("fkCliente"));
	
	//ProdutoBean
	ProdutoBean pb = new ProdutoBean();
	pb.setIdProduto(idProduto);
	pb.setNomeProduto(nomeProduto);
	pb.setValorProduto(valorProduto);
	pb.setFkSegmentos(fkSegmentos);
	pb.setFkCliente(fkCliente);
	
	//Acionando método
	ProdutoDao pd = new ProdutoDao();
	boolean situacao = pd.alterarProduto(pb);
	//Validação
	if (situacao == false){
		response.sendRedirect("../logado.jsp?User="+fkCliente+"&mensagem=falhaAlterar");
	}else{
		response.sendRedirect("../logado.jsp?User="+fkCliente+"&mensagem=alterarOk");
	}	
	
	
%>