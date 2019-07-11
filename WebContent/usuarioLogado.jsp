<%@page import="bean.UsuarioBean"%>
<%@page import="dao.UsuarioDao"%>
<%@ include file="topo.jsp"%>
<!-- mensagem -->
<%@ include file="mensagem.jsp"%>

<%	

	int idUsuario = 0;

	try{
		idUsuario = Integer.parseInt(request.getParameter("idUsuario"));
	}catch(Exception e){}
	
	if(idUsuario==0){

%>
<form action="requisicao/cadastrarUsuario.jsp" method="post"
	class="formularioUsuario">
	<input type="text" placeholder="Nome" name="nome">
	<input type="email" placeholder="E-mail" name="email">
	<input type="text" placeholder="Bairro" name="bairro">
	<input type="text" placeholder="Cidade" name="cidade">
	<input type="text" placeholder="Estado" name="estado">
	<input type="text" placeholder="CPF" name="cpf">
	<input type="number" placeholder="Telefone" name="telefone">
	<input type="submit" value="Cadastrar">
	</form>
	
	<%}else{
				
	
	%>
	
	<form action="requisicao/cadastrarUsuario.jsp" method="post"
	class="formularioUsuario">
	<input type="text" placeholder="Nome" name="nome" > 
	<input type="email" placeholder="E-mail" name="email"> 
	<input type="text" placeholder="Bairro" name="bairro">
	<input type="text" placeholder="Cidade" name="cidade">
	<input type="text" placeholder="Estado" name="estado">
	<input type="text" placeholder="CPF" name="cpf">
	<input type="number" placeholder="Telefone" name="telefone">
	<input type="submit" value="Alterar">
	<a href="Usuario.jsp">cancelar</a>
	</form>
	
	<% } %>
	UsuarioDao ud = new UsuarioDao();
	out.print(ud.selecionar());
	
	<!-- tabela -->
	
	<table class="tabelaUsuario">
		<tr>
			<td>Nome</td>
			<td>E-mail</td>
			<td>Bairro</td>
			<td>Cidade</td>
			<td>Estado</td>
			<td>CPF</td>
			<td>Telefone</td>
		</tr>
	
	</table>
	
</body>
</html>
	
	