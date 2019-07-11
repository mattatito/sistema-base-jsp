<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html lang="pt-br">

<head>

  <meta charset="ISO-8859-1">
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

</head>

<body id="page-top">

	

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
            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#about">Informações</a>
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

      <!-- Tela inicial subcabeçalho -->
      <p class="masthead-subheading font-weight-light mb-0">Qualidade é com a gente!</p>

    </div>
  </header>

  <!-- seção informações -->
  <section class="page-section bg-primary text-white mb-0" id="about">
    <div class="container">

      <!-- cabeçalho seção informações -->
      <h2 class="page-section-heading text-center text-uppercase text-white">Aumente suas vendas!</h2>

      <!-- Divisor de ícones -->
      <div class="divider-custom divider-light">
        <div class="divider-custom-line"></div>
        <div class="divider-custom-icon">
          <i class="fas fa-star"></i>
        </div>
        <div class="divider-custom-line"></div>
      </div>

      <!-- seção conteúdo informações -->
      <div class="row">
        <div class="col-lg-4 ml-auto">
          <p class="lead">Deseja uma parceria conosco, divulgando seu estabelecimento e crescendo no mercado? Felizmente você está no lugar certo!</p>
        </div>
        <div class="col-lg-4 mr-auto">
          <p class="lead">Você nos ajuda, e nós lhe ajudamos!</p>
        </div>
      </div>

    </div>
  </section>

  <!-- Seção Cadastrar -->
  <section class="page-section" id="contact">
    <div class="container">

      <!-- Cabeçalho seção Cadastrar-->
      <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Cadastre-se</h2>

      <!-- Divisor de ícones -->
      <div class="divider-custom">
        <div class="divider-custom-line"></div>
        <div class="divider-custom-icon">
          <i class="fas fa-star"></i>
        </div>
        <div class="divider-custom-line"></div>
      </div>

      <!-- Seção formulário cadastro -->
      <div class="row">
        <div class="col-lg-8 mx-auto">
         <!-- Para configurar o formulário de contato endereço de email, ir para mail/contact_me.php e atualize o endereço de email no arquivo PhP na linha 19-->
          <form action="requisicoes/cadastrarCliente.jsp">
            <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
                <label>Nome do estabelecimento</label>
                <input class="form-control" id="message" type="text" placeholder="Nome do estabelecimento" required="required" data-validation-required-message="Por favor, insira o nome de seu estabelecimento." name="estabelecimento">
                  <p class="help-block text-danger"></p>
              </div>
          </div>
            <div class="control-group">
                <div class="form-group floating-label-form-group controls mb-0 pb-2">
                  <label>Email</label>
                  <input class="form-control" id="email" type="email" placeholder="Email" required="required" data-validation-required-message="Por favor, insira seu email na área." name="emailCliente">
                  <p class="help-block text-danger"></p>
                </div>
            </div>
            <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
                <label>Senha</label>
                <input class="form-control" id="message" type="password" placeholder="Senha" required="required" data-validation-required-message="Por favor, insira sua senha na área." name="senhaCliente">
                <p class="help-block text-danger"></p>
              </div>
            </div>
            <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
                <label>Numero para contato</label>
                <input class="form-control" id="phone" type="tel" placeholder="Numero para contato" required="required" data-validation-required-message="Por favor, insira um número para contato." name="contatoCliente">
                <p class="help-block text-danger"></p>
              </div>
            </div>
            <div class="control-group">
                <div class="form-group floating-label-form-group controls mb-0 pb-2">
                    <label>Bairro</label>
                    <input class="form-control" id="message" type="text" placeholder="Bairro" required="required" data-validation-required-message="Por favor, informe seu bairro." name="bairroCliente">
                    <p class="help-block text-danger"></p>
                </div>
            </div>
            <div class="control-group">
                    <div class="form-group floating-label-form-group controls mb-0 pb-2">
                    <label>Cidade</label>
                    <input class="form-control" id="message" type="text" placeholder="Cidade" required="required" data-validation-required-message="Por favor, informe sua cidade." name="cidadeCliente">
                    <p class="help-block text-danger"></p>
                </div>
            </div>
            <div class="control-group">
                    <div class="form-group floating-label-form-group controls mb-0 pb-2">
                    <label>Estado</label>
                    <input class="form-control" id="message" type="text" placeholder="Estado" required="required" data-validation-required-message="Por favor, informe seu Estado." name="estadoCliente">
                    <p class="help-block text-danger"></p>
                </div>
            </div>
            <br>
            <div id="success"></div>
            <div class="form-group">
              <input type="submit" class="btn btn-primary btn-xl" value="Cadastrar">
            </div>
          </form>
        </div>
      </div>
	
    </div>
  </section>

  <!--Sessão login -->
  <section class="page-section" id="login">
  <div class="container">

    <!-- Cabeçalho seção login -->
    <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Login</h2>

    <!-- Divisor de icones -->
    <div class="divider-custom">
      <div class="divider-custom-line"></div>
      <div class="divider-custom-icon">
        <i class="fas fa-star"></i>
      </div>
    <div class="divider-custom-line"></div>
  </div>

  <!-- Formulário sessão login -->
  <div class="row">
    <div class="col-lg-8 mx-auto">
      <!-- Para configurar o formulário de contato endereço de email, ir para mail/contact_me.php e atualize o endereço de email no arquivo PhP na linha 19-->
      <form action="requisicoes/logar.jsp">
        <div class="control-group">
          <div class="form-group floating-label-form-group controls mb-0 pb-2">
            <label>Email</label>
            <input class="form-control" id="email" type="email" placeholder="Email" required="required" data-validation-required-message="Por favor, insira seu email na área." name="email">
            <p class="help-block text-danger"></p>
          </div>
        </div>

      <div class="control-group">
        <div class="form-group floating-label-form-group controls mb-0 pb-2">
          <label>Senha</label>
          <input class="form-control" id="message" type="password" placeholder="Senha" required="required" data-validation-required-message="Por favor, insira sua senha na área." name="senha">
          <p class="help-block text-danger"></p>
        </div>
      </div>
         <br>
          <div id="success"></div>
          <div class="form-group">
            <input type="submit" class="btn btn-primary btn-xl" id="sendMessageButton" value="Logar">
          </div>
      </form>
    </div>
  </div>

</div>
</section>

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

