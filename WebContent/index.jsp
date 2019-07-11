<%@page import="dao.ProdutoDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>

<%@include file ="/mensagem.jsp"%>
<html lang="pt-br">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Itruck - Delivery</title>

  <!-- Fontes customizadas para este tema -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

  <!-- Tema CSS -->
  <link href="freelancer.min.css" rel="stylesheet">

</head>

<body id="page-top">

  <!-- Navega��o -->
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
            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#portfolio">Card�pios</a>
          </li>
          <li class="nav-item mx-0 mx-lg-1">
            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#about">Informa��es</a>
          </li>
          <li class="nav-item mx-0 mx-lg-1">
            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#contact">Cadastro</a>
          </li>
          <li class="nav-item mx-0 mx-lg-1">
            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#login">Login</a>
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

      <!-- Tela inicial subcabe�alho -->
      <p class="masthead-subheading font-weight-light mb-0">Qualidade � com a gente!</p>

    </div>
  </header>

  <!-- Se��o menu -->
  <section class="page-section portfolio" id="portfolio">
    <div class="container">

      <!-- Cabe�alho se��o menu  -->
      <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Card�pios</h2>

      <!-- Divisor de �cones -->
      <div class="divider-custom">
        <div class="divider-custom-line"></div>
        <div class="divider-custom-icon">
          <i class="fas fa-star"></i>
        </div>
        <div class="divider-custom-line"></div>
      </div>

      <!-- Grade de itens menu -->
      <div class="row">

        <!-- menu Item 1 -->
        <div class="col-md-6 col-lg-4">
          <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal1">
            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
              <div class="portfolio-item-caption-content text-center text-white">
                <i class="fas fa-plus fa-3x"></i>
              </div>
            </div>
            <img class="img-fluid" src="imagens/icones/TopDog.jfif" alt="cachorro-quente">
          </div>
        </div>
        

        <!-- menu Item 2 -->
        <div class="col-md-6 col-lg-4">
          <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal2">
            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
              <div class="portfolio-item-caption-content text-center text-white">
                <i class="fas fa-plus fa-3x"></i>
              </div>
            </div>
            <img class="img-fluid" src="imagens/icones/DogBibinha.jpg" alt="">
          </div>
        </div>

         <!-- menu Item 3 -->
         <div class="col-md-6 col-lg-4">
            <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal3">
               <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                <div class="portfolio-item-caption-content text-center text-white">
                  <i class="fas fa-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="imagens/icones/dogCentenario.jpg" alt="A�a�">
           </div>
          </div>
      </div>
      <!-- /.row -->
    </div>
  </section>

  <!-- se��o informa��es -->
  <section class="page-section bg-primary text-white mb-0" id="about">
    <div class="container">

      <!-- cabe�alho se��o informa��es -->
      <h2 class="page-section-heading text-center text-uppercase text-white">Informa��es</h2>

      <!-- Divisor de �cones -->
      <div class="divider-custom divider-light">
        <div class="divider-custom-line"></div>
        <div class="divider-custom-icon">
          <i class="fas fa-star"></i>
        </div>
        <div class="divider-custom-line"></div>
      </div>

      <!-- se��o conte�do informa��es -->
      <div class="row">
        <div class="col-lg-4 ml-auto">
          <p class="lead">Alguma informa��o aqui</p>
        </div>
        <div class="col-lg-4 mr-auto">
          <p class="lead">Alguma informa��o aqui</p>
        </div>
      </div>

    </div>
  </section>

  <!-- Se��o Cadastrar -->
  <section class="page-section" id="contact">
    <div class="container">

      <!-- Cabe�alho se��o Cadastrar-->
      <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Cadastre-se</h2>

      <!-- Divisor de �cones -->
      <div class="divider-custom">
        <div class="divider-custom-line"></div>
        <div class="divider-custom-icon">
          <i class="fas fa-star"></i>
        </div>
        <div class="divider-custom-line"></div>
      </div>

      <!-- Se��o formul�rio cadastro -->
      <div class="row">
        <div class="col-lg-8 mx-auto">
         <!-- Para configurar o formul�rio de contato endere�o de email, ir para mail/contact_me.php e atualize o endere�o de email no arquivo PhP na linha 19-->
          <form action="requisicao/cadastrarUsuario.jsp">
            <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
                <label>Nome</label>
                <input class="form-control" id="name" type="text" maxlength="30" placeholder="Nome" required="required" data-validation-required-message="Por favor, preencha a �rea com seu nome." name="nome">
                <p class="help-block text-danger"></p>
              </div>
            </div>
            
            <div class="control-group">
                <div class="form-group floating-label-form-group controls mb-0 pb-2">
                  <label>Email</label>
                  <input class="form-control" id="email" type="email" placeholder="Email" required="required" data-validation-required-message="Por favor, insira seu email na �rea." name="email">
                  <p class="help-block text-danger"></p>
                </div>
            </div>
            
            <div class="control-group">
                <div class="form-group floating-label-form-group controls mb-0 pb-2">
                    <label>Bairro</label>
                    <input class="form-control" id="message" type="text" placeholder="Bairro" required="required" data-validation-required-message="Por favor, informe seu bairro." name="bairro">
                    <p class="help-block text-danger"></p>
                </div>
            </div>
            <div class="control-group">
                    <div class="form-group floating-label-form-group controls mb-0 pb-2">
                    <label>Cidade</label>
                    <input class="form-control" id="message" type="text" placeholder="Cidade" required="required" data-validation-required-message="Por favor, informe sua cidade." name="cidade">
                    <p class="help-block text-danger"></p>
                </div>
            </div>
            <div class="control-group">
                    <div class="form-group floating-label-form-group controls mb-0 pb-2">
                    <label>Estado</label>
                    <input class="form-control" id="message" type="text" maxlength="" placeholder="Estado" required="required" data-validation-required-message="Por favor, informe seu Estado." name="estado">
                    <p class="help-block text-danger"></p>
                </div>
            </div>
            <div class="control-group">
                <div class="form-group floating-label-form-group controls mb-0 pb-2">
                  <label>Cpf</label>
                  <input class="form-control" id="cpf" type="text" maxlength=14 placeholder="Cpf" required="required" data-validation-required-message="Por favor, insira seu cpf na �rea." name="cpf">
                    <p class="help-block text-danger"></p>
                </div>
            </div>
            <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
                <label>Numero para contato</label>
                <input class="form-control" id="phone" type="text" maxlength=11 placeholder="telefone" required="required" data-validation-required-message="Por favor, insira um n�mero para contato." name="telefone">
                <p class="help-block text-danger"></p>
              </div>
            </div>
            <br>
            <div id="success"></div>
            <div class="form-group">
              <input type="submit" class="btn btn-primary btn-xl" id="sendMessageButton" value="Cadastrar">
            </div>
          </form>
        </div>
      </div>

    </div>
  </section>

  <!--Sess�o login -->
  <section class="page-section" id="login">
  <div class="container">

    <!-- Cabe�alho se��o login -->
    <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Login</h2>

    <!-- Divisor de icones -->
    <div class="divider-custom">
      <div class="divider-custom-line"></div>
      <div class="divider-custom-icon">
        <i class="fas fa-star"></i>
      </div>
    <div class="divider-custom-line"></div>
  </div>

  <!-- Formul�rio sess�o login -->
  <div class="row">
    <div class="col-lg-8 mx-auto">
      <!-- Para configurar o formul�rio de contato endere�o de email, ir para mail/contact_me.php e atualize o endere�o de email no arquivo PhP na linha 19-->
      <form name="sentMessage" id="contactForm" novalidate="novalidate">
          <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
                 <label>Cpf</label>
                  <input class="form-control" id="cpf1" type="text" maxlength=14 placeholder="Cpf" required="required" data-validation-required-message="Por favor, insira seu cpf na �rea." name="cpf">
                    <p class="help-block text-danger"></p>
              </div>
          </div>

          <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
                <label>Nome</label>
                <input class="form-control" id="name" type="text" placeholder="Nome" required="required" data-validation-required-message="Por favor, preencha a �rea com seu nome." name="nome">
                <p class="help-block text-danger"></p>
              </div>
            </div>
         <br>
          <div id="success"></div>
          <div class="form-group">
            <button type="submit" class="btn btn-primary btn-xl" id="sendMessageButton">Entrar</button>
          </div>
      </form>
    </div>
  </div>

</div>
</section>

  <!-- rodap� -->
  <footer class="footer text-center">
    <div class="container">
      <div class="row">

        <!-- Rodap� se��o Sobre -->
        <div class="col-lg-4 mb-5 mb-lg-0">
          <h4 class="text-uppercase mb-4">Sobre n�s</h4>
          <p class="lead mb-0">O que somos aqui</p>
        </div>

        <!-- Rodap� icone rede social -->
        <div class="col-lg-4 mb-5 mb-lg-0">
            <h4 class="text-uppercase mb-4">Nos acompanhe:</h4>
            <a class="btn btn-outline-light btn-social mx-1" href="#">
                <i class="fab fa-fw fa-facebook-f"></i>
            </a>
        </div>

        <!-- Cabe�alho op��o FoodTruckers -->
        <div class="col-lg-4 mb-5 mb-lg-0">
            <h4 class="text-uppercase mb-4">Parceria</h4>
            <p class="lead mb-0">Deseja participar de nosso site como um parceiro? basta
              <a href="usuario.jsp">clicar aqui!</a>
            </p>
        </div>

      </div>
    </div>
  </footer>

  <!-- Sess�o copyright -->
  <section class="copyright py-4 text-center text-white">
    <div class="container">
      <small>Copyright &copy; 2019 Provis�rio</small>
    </div>
  </section>

  <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
  <!-- Role para o bot�o de cima(apenas vis�vel em pequeno ou extra-pequeno tamanho de tela) -->
  <div class="scroll-to-top d-lg-none position-fixed ">
    <a class="js-scroll-trigger d-block text-center text-white rounded" href="#page-top">
      <i class="fa fa-chevron-up"></i>
    </a>
  </div>


  <!-- Card�pio Modals -->

  <!-- Card�pio Modal 1 -->
  <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-labelledby="portfolioModal1Label" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
      <div class="modal-content">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">
            <i class="fas fa-times"></i>
          </span>
        </button>
        <div class="modal-body text-center">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-lg-8">
                <!-- Card�pio Modal - T�tulo -->
                <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">Card�pio</h2>
                <!-- Divisor de icone -->
                <div class="divider-custom">
                  <div class="divider-custom-line"></div>
                  <div class="divider-custom-icon">
                    <i class="fas fa-star"></i>
                  </div>
                  <div class="divider-custom-line"></div>
                </div>
                <!-- Card�pio Modal - Imagem -->
                <img class="img-fluid rounded mb-5" src="imagens/icones/TopDog.jfif" alt="">
                <!-- Card�pio Modal - Texto -->
                
	
	 <!--Tabela cardapio-->
	
	<%
	
	ProdutoDao cd = new ProdutoDao();
	out.print(cd.selecionar(2));
	
	%>
  
                <button class="btn btn-primary" href="#" data-dismiss="modal">
                  <i class="fas fa-times fa-fw"></i>
                  Fechar
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  
  

  <!-- Card�pio Modal 2 -->
  <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-labelledby="portfolioModal2Label" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
      <div class="modal-content">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">
            <i class="fas fa-times"></i>
          </span>
        </button>
        <div class="modal-body text-center">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-lg-8">
                <!-- Card�pio Modal - T�tulo -->
                <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">Card�pio</h2>
                <!-- Divisor de �cones -->
                <div class="divider-custom">
                  <div class="divider-custom-line"></div>
                  <div class="divider-custom-icon">
                    <i class="fas fa-star"></i>
                  </div>
                  <div class="divider-custom-line"></div>
                </div>
                <!-- Card�pio Modal - Imagem -->
                <img class="img-fluid rounded mb-5" src="imagens/icones/DogBibinha.jpg" alt="">

 <!--Tabela cardapio-->
	
	<%
	
	out.print(cd.selecionar(3));
	
	%>

                <button class="btn btn-primary" href="#" data-dismiss="modal">
                  <i class="fas fa-times fa-fw"></i>
                  Fechar
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Card�pio Modal 3 -->
  <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-labelledby="portfolioModal3Label" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
      <div class="modal-content">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">
            <i class="fas fa-times"></i>
          </span>
        </button>
        <div class="modal-body text-center">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-lg-8">
                <!-- Card�pio Modal - T�tulo -->
                <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">Card�pio</h2>
                <!-- Divisor de �cones -->
                <div class="divider-custom">
                  <div class="divider-custom-line"></div>
                  <div class="divider-custom-icon">
                    <i class="fas fa-star"></i>
                  </div>
                  <div class="divider-custom-line"></div>
                </div>
                <!-- Card�pio Modal - Imagem -->
                <img class="img-fluid rounded mb-5" src="imagens/icones/dogCentenario.jpg" alt="">

 <!--Tabela cardapio-->
	
	<%
	
	out.print(cd.selecionar(4));
	
	%>


                <button class="btn btn-primary" href="#" data-dismiss="modal">
                  <i class="fas fa-times fa-fw"></i>
                  Fechar
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

 

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Formul�rio Cadastro JavaScript -->
  <script src="js/jqBootstrapValidation.js"></script>
  <script src="js/contact_me.js"></script>

  <!--scripts customizados para esse modelo -->
  <script src="js/freelancer.min.js"></script>
  
 <!-- MASCARA CPF -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.0/jquery.mask.js"></script>
<script>
    $(document).ready(function () { 
        var $seuCampoCpf = $("#cpf");
        $seuCampoCpf.mask('000.000.000-00', {reverse: true});
    });
</script>
 <!-- MASCARA CPF -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.0/jquery.mask.js"></script>
<script>
    $(document).ready(function () { 
        var $seuCampoCpf = $("#cpf1");
        $seuCampoCpf.mask('000.000.000-00', {reverse: true});
    });
</script>
<!-- MASCARA CPF -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.0/jquery.mask.js"></script>
<script>
    $(document).ready(function () { 
        var $seuCampotelefone = $("#telefone");
        $seuCampotelefone.mask('(  )00000-0000', {reverse: true});
    });
</script>






</body>

</html>

