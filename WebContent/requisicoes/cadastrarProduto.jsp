<%@page import="bean.ProdutoBean"%>
<%@page import="dao.ProdutoDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
	
	//Obter dados
	String produto = request.getParameter("produto");
	double valor = Double.parseDouble(request.getParameter("valor"));
	int fkCliente = Integer.parseInt(request.getParameter("fkCliente"));
	int fkSegmentos = Integer.parseInt(request.getParameter("segmento"));
	
	//ProdutoBean
	ProdutoBean pb = new ProdutoBean();
	pb.setNomeProduto(produto);
	pb.setValorProduto(valor);
	pb.setFkSegmentos(fkSegmentos);
	pb.setFkCliente(fkCliente);
	
	//ProdutoDao
	ProdutoDao pd = new ProdutoDao();
	boolean valida = pd.cadastrarProduto(pb);
	
	//Redirecionamento
	if(valida == true){
		response.sendRedirect("../logado.jsp?User="+fkCliente+"&mensagem=cadastrarOk");
	}else{
		response.sendRedirect("../logado.jsp?User="+fkCliente+"&mensagem=cadastroFalha");
	}


%>



