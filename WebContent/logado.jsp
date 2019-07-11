
<%@page import="dao.SegmentoDao"%>
<%@page import="bean.ProdutoBean"%>
<%@page import="dao.ProdutoDao"%>
<%@page import="bean.ClienteBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <!-- Incluindo mensagem -->
<%@ include file="mensagem.jsp"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Itruck - Para Food Trucks</title>

  <!-- Fontes customizadas para este tema -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

  <!-- Tema CSS -->
  <link href="freelancer.min.css" rel="stylesheet">
  
  
  <!-- Estilo -->
  <style>
  	
  	.formulario-geral{
  	
 	 width: 1000px;
	 margin: 10px auto;
  	}
  	
  	.tabela{
  	
  	width: 1000px;
	 margin: 10px auto;
  	}
  </style>

</head>

<body id="page-top">
	
	<!-- Validar usuário -->
	<%
		//Sessão: Validar o acesso as páginas
		try{
			Object usuario = session.getAttribute("usuario");
			
			if(usuario == null){
				response.sendRedirect("usuario.jsp?mensagem=falhaSessao");	
			}
		}catch(Exception erro){
			out.print("Falha na sessão");
		}
	%>
	
  <!-- Navegação -->
  <nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="#page-top">Itruck</a>
      <button class="navbar-toggler navbar-toggler-right text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item mx-0 mx-lg-1">
            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#produtos">Produtos</a>
          </li>
           <li class="nav-item mx-0 mx-lg-1">
            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="Sair.jsp">Sair</a>
          </li>
        </ul>
      </div>

    </div>
  </nav>

  <!-- Tela inicial -->
  <header class="masthead bg-primary text-white text-center">
    <div class="container d-flex align-items-center flex-column">

      <!-- Tela inicial Heading -->
      <h1 class="masthead-heading text-uppercase mb-0">Itruck</h1>

      <!-- Divisor de icones -->
      <div class="divider-custom divider-light">
        <div class="divider-custom-line"></div>
        <div class="divider-custom-icon">
          <i class="fas fa-star"></i>
        </div>
        <div class="divider-custom-line"></div>
      </div>

      <!-- Tela inicial subcabeçalho -->
      <p class="masthead-subheading font-weight-light mb-0">Painel de Controle</p>

    </div>
  </header>

 
<%

//OBJ BEAN
ClienteBean cb = new ClienteBean();

//Variável do usuário
int fkCliente = Integer.parseInt(request.getParameter("User"));
%>

  <!-- Seção menu -->
  <section class="page-section portfolio" id="produtos">
    <div class="container">

      <!-- Cabeçalho seção menu  -->
      <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Produtos</h2>

      <!-- Divisor de ícones -->
      <div class="divider-custom">
        <div class="divider-custom-line"></div>
        <div class="divider-custom-icon">
          <i class="fas fa-star"></i>
        </div>
        <div class="divider-custom-line"></div>
      </div>


      <!-- /.row -->
    </div>
  </section>

<!-- Cardápio Modal 1 -->
	
	
            
              <%
						//variável
						int idProduto = 0;
					
						//tentativa
						try{
							idProduto = Integer.parseInt(request.getParameter("idProduto"));		
						}catch(Exception e){}
					
						//Condicional
						if(idProduto == 0){
							
				%>
                
              <form action="requisicoes/cadastrarProduto.jsp" class="formulario-geral">
              
              <input class="form-control" id="message" type="hidden" placeholder="id" required="required" data-validation-required-message="Por favor, insira seu Produto" name="fkCliente" value="<%out.print(request.getParameter("User"));%>">
                   
                <div class="control-group">
                  <div class="form-group floating-label-form-group controls mb-0 pb-2">
                    <label>Produto</label>
                    <input class="form-control" id="message" type="text" placeholder="Produto" data-validation-required-message="Por favor, insira seu Produto" name="produto">
                    <p class="help-block text-danger"></p>
                  </div>
                </div>

                <div class="control-group">
                  <div class="form-group floating-label-form-group controls mb-0 pb-2">
                    <label>Valor</label>
                    <input class="form-control" id="message" type="text" placeholder="Valor"  data-validation-required-message="Por favor, insira o valor do produto" name="valor">
                    <p class="help-block text-danger"></p>
                  </div>
                </div>
                
                 <div class="input-group mb-3">
			  		<div class="input-group-prepend">
					  <label class="input-group-text" for="inputGroupSelect01">Segmentos</label>
					  </div>
                    <%
                    
                    //Parte do ComboBox
                    SegmentoDao sd = new SegmentoDao();
                    out.print(sd.comboBox());
                    
                    %>
                    
                    </div>
                
                <div id="success"></div>
                  <div class="form-group">
                  <input type="submit" href="requisicoes/cadastrarProduto.jsp?User="+<%out.print(request.getParameter("fkCliente"));%>+"" class="btn btn-primary btn-xl" id="sendMessageButton" value="Cadastrar">
                 </div>
                </form>
                <%
                
                }
				else
                {
                	
                	//Obter dados do produto
                	ProdutoDao pd = new ProdutoDao();
                	ProdutoBean pb = pd.especificarProduto(idProduto);
                
				%>
				
				 <form action="requisicoes/alterarProduto.jsp" class="formulario-geral">
				 
				  <input class="form-control" id="message" type="hidden" placeholder="id" required="required" data-validation-required-message="Por favor, insira seu Produto" name="fkCliente" value="<%out.print(request.getParameter("User"));%>">
				  <input class="form-control" id="message" type="hidden" placeholder="id" required="required" data-validation-required-message="Por favor, insira seu Produto" name="idProduto" value="<%out.print(request.getParameter("idProduto"));%>">
                   
                <div class="control-group">
                  <div class="form-group floating-label-form-group controls mb-0 pb-2">
                    <label>Produto</label>
                    <input class="form-control" id="message" type="text" placeholder="Produto" required="required" data-validation-required-message="Por favor, insira seu Produto" name="produto" value="<%out.print(pb.getNomeProduto());%>" >
                   
                    <p class="help-block text-danger"></p>
                  </div>
                </div>
	  			 
                <div class="control-group">
                  <div class="form-group floating-label-form-group controls mb-0 pb-2">
                    <label>Valor</label>
                    <input class="form-control" id="message" type="text" placeholder="Valor" required="required" data-validation-required-message="Por favor, insira o valor do produto" name="valor" value="<%out.print(pb.getValorProduto());%>">
                    <p class="help-block text-danger"></p>
                  </div>
                </div>
                
                
                  <div class="input-group mb-3">
			  		<div class="input-group-prepend">
					  <label class="input-group-text" for="inputGroupSelect01">Segmentos</label>
					  </div>
                    <%
                    
                    //Parte do ComboBox
                    SegmentoDao sd = new SegmentoDao();
                    out.print(sd.comboBox());
                    
                    %>
                    
                   </div>
                <br>
                  <div id="success"></div>
                  <div class="form-group">
                  <input type="submit" class="btn btn-primary btn-xl" id="sendMessageButton" value="Alterar">
                  <a href="requisicoes/cancelar.jsp?idCliente="<%out.print(fkCliente);%>">Cancelar</a> 
                 </div>
              
              </form>
              
                <%
                
				}
						
				%>
		
				<%
				
				int idCliente = Integer.parseInt(request.getParameter("User"));
				
				if (idCliente == 0){
					response.sendRedirect("usuario.jsp");
				}else{
					
					//Tabela 
					ProdutoDao pd = new ProdutoDao();
					out.print(pd.exibirProdutos(idCliente)); 
						
				}
				
				%>
         		
	
  <!-- rodapé -->
  <footer class="footer text-center">
    <div class="container">
      <div class="row">

        <!-- Rodapé seção Sobre -->
        <div class="col-lg-4 mb-5 mb-lg-0">
          <h4 class="text-uppercase mb-4">Sobre nós</h4>
          <p class="lead mb-0">Diferente de outro sites com intuito semelhante, temos grande foco em desenvolver e divulgar empresas menos conhecidas, mas com grande capacidade de crescimento na industria!</p>
        </div>

        <!-- Rodapé icone rede social -->
        <div class="col-lg-4 mb-5 mb-lg-0">
            <h4 class="text-uppercase mb-4">Nos acompanhe:</h4>
            <a class="btn btn-outline-light btn-social mx-1" href="#">
                <i class="fab fa-fw fa-facebook-f"></i>
            </a>
        </div>

        <!-- Cabeçalho opção Clientes -->
        <div class="col-lg-4 mb-5 mb-lg-0">
            <h4 class="text-uppercase mb-4">Site para clientes</h4>
            <p class="lead mb-0">Deseja voltar para o site destinado a clientes? basta
              <a href="index.jsp">clicar aqui!</a>
            </p>
        </div>

      </div>
    </div>
  </footer>

  <!-- Sessão copyright -->
  <section class="copyright py-4 text-center text-white">
    <div class="container">
      <small>Copyright &copy; 2019 Itruck</small>
    </div>
  </section>

  <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
  <!-- Role para o botão de cima(apenas visível em pequeno ou extra-pequeno tamanho de tela) -->
  <div class="scroll-to-top d-lg-none position-fixed ">
    <a class="js-scroll-trigger d-block text-center text-white rounded" href="#page-top">
      <i class="fa fa-chevron-up"></i>
    </a>
  </div>


 

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Formulário Cadastro JavaScript -->
  <script src="js/jqBootstrapValidation.js"></script>
  <script src="js/contact_me.js"></script>

  <!--scripts customizados para esse modelo -->
  <script src="js/freelancer.min.js"></script>

</body>

</html>