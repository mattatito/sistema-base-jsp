<%@page import="bean.ProdutoBean"%>
<%@page import="dao.ProdutoDao"%>

<%@ include file="topo.jsp"%>
<!-- mensagem -->
<%@ include file="mensagem.jsp"%>


<%	

	int idProduto = 0;

	try{
		idProduto = Integer.parseInt(request.getParameter("idProduto"));
	}catch(Exception e){}
	
	if(idProduto==0){

%>
<form action="requisicao/compras.jsp" method="post"
	class="formularioUsuario">
	<input type="text" placeholder="Produto" name="nome">
	<input type="text" placeholder="Valor" name="valor">
	<input type="submit" value="Cadastrar">
	</form>
	
	<%}else{
				
		//Adicionando os dados do Produt
			ProdutoDao pd = new ProdutoDao();
	
	%>
	
	<form action="requisicao/compras.jsp" method="post"
	class="formularioUsuario">
	<input type="text" placeholder="Produto" name="nome">
	<input type="text" placeholder="Valor" name="valor">
	<input type="submit" value="Cadastrar">
	</form>
	
	<% } %>
	ProdutoDao cd = new ComprasDao();
	out.print(cd.selecionar());
	
	<!-- tabela -->
	
	<table class="tabelaProduto">
		<tr>
			<td>Produto</td>
			<td>Valor</td>
			<td>Quantidade</td>
			<td>Compras</td>
			
		</tr>
	
	</table>
	
</body>
</html>
	
	