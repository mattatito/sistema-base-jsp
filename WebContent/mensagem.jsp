<% 
	
	//tentativa
	try{
	
		//obter a mensgem
		String mensagem = request.getParameter("mensagem");
		
		//tipos de mensagem
		switch(mensagem){
			case "falhaLogin":
				out.print("<div class='success'>Usuario ou CPF incorretos</div>");
			break;
			
			case "falhaSessao":
				out.print("<div id='success'>Realize o login</div>");
			break;
			
			case "falhaAlterar":
				out.print("<div id='success'>Falha ao alterar</div>");
			break;
			
			case "alterarOk":
				out.print("<div id='success'>Sucesso ao alterar</div>");
			break;
		}
	}catch(Exception erro){}
%>