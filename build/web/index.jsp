<%-- 
    Document   : index
    Created on : 22/08/2020, 10:41:32
    Author     : Erivelton
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <title>Bella Capri Pizzaria</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Josefin+Sans" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Nothing+You+Could+Do" rel="stylesheet">
        <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
        <link rel="stylesheet" href="css/animate.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/magnific-popup.css">
        <link rel="stylesheet" href="css/aos.css">
        <link rel="stylesheet" href="css/ionicons.min.css">
        <link rel="stylesheet" href="css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="css/jquery.timepicker.css">
        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/icomoon.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <!--Seção para Barra de Navegação-->
        <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
            <div class="container">
                <a class="navbar-brand" href="index.jsp"><span class="flaticon-pizza-1 mr-1"></span>Bella Capri<br><small>Pizzaria</small></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="oi oi-menu"></span> Menu
                </button>
                <div class="collapse navbar-collapse" id="ftco-nav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item"><a href="index.jsp" class="nav-link">Home</a></li>
                        <li class="nav-item"><a href="#cardapio" class="nav-link">Cardápio</a></li>
                        <li class="nav-item"><a href="index.jsp#login" class="nav-link">Portal do Cliente</a></li>
                        <li class="nav-item"><a href="cadastrar-funcionario.jsp" class="nav-link">Acesso Funcionário</a></li>
                        <li class="nav-item"><a href="contato.jsp" class="nav-link">Contato</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right dark">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <span class="glyphicon glyphicon-user"></span> 
                                <strong>${nome}</strong>
                                <span class="glyphicon glyphicon-chevron-down"></span>
                            </a>
                            <ul class="dropdown-menu bg-dark">
                                <li>
                                    <div class="navbar-login">
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <p class="text-center">
                                                    <span class="glyphicon glyphicon-user icon-size"></span>
                                                </p>
                                            </div>
                                            <div class="col-lg-12">
                                                <p class="text-center"><strong class="text-light center">Seja bem-vindo(a) ${nome}!</strong></p>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <div class="navbar-login navbar-login-session">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <p>
                                                    <a href="Logout" class="btn btn-primary py-1 px-2 btn-block">Sair da conta</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                            <!--ANTIGA BARRA DE USUARIO                        
                            <h7>Usuário logado: ${nome}</h7><a class="btn btn-primary py-1 px-2 float-justify" href="Logout"> Sair da conta </a>-->
                        </div>
                    </div>
            </nav>


            <section class="home-slider owl-carousel img" style="background-image: url(images/bg_1.jpg);">

                <div class="slider-item">
                    <div class="overlay"></div>
                    <div class="container">
                        <div class="row slider-text align-items-center" data-scrollax-parent="true">
                            <div class="col-md-6 col-sm-12 ftco-animate">
                                <span class="subheading">É Delicioso!</span>
                                <h1 class="mb-4">Sabor original da cozinha italiana</h1>
                                <p class="mb-4 mb-md-5">Um sabor que só pode ser encontrado na Itália, diretamente em São Paulo.</p>
                                <p><a href="#login" class="btn btn-primary p-3 px-xl-4 py-xl-3">Peça agora</a> <a href="#cardapio" class="btn btn-white btn-outline-white p-3 px-xl-4 py-xl-3">Veja o cardápio</a></p>
                            </div>
                            <div class="col-md-6 ftco-animate">
                                <img src="images/bg_1.png" class="img-fluid" alt="">
                            </div>
                        </div>
                    </div>
                </div>

                <div class="slider-item">
                    <div class="overlay"></div>
                    <div class="container">
                        <div class="row slider-text align-items-center" data-scrollax-parent="true">
                            <div class="col-md-6 col-sm-12 order-md-last ftco-animate">
                                <span class="subheading">Crocante</span>
                                <h1 class="mb-4">A melhor massa</h1>
                                <p class="mb-4 mb-md-5">Sinta o autêntico sabor da massa italiana, crocante, leve e saborosa.</p>
                                <p><a href="#login" class="btn btn-primary p-3 px-xl-4 py-xl-3">Peça agora</a> <a href="#cardapio" class="btn btn-white btn-outline-white p-3 px-xl-4 py-xl-3">Veja o cardápio</a></p>
                            </div>
                            <div class="col-md-6 ftco-animate">
                                <img src="images/bg_2.png" class="img-fluid" alt="">
                            </div>
                        </div>
                    </div>
                </div>

                <div class="slider-item" style="background-image: url(images/bg_3.jpg);">
                    <div class="overlay"></div>
                    <div class="container">
                        <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">
                            <div class="col-md-7 col-sm-12 text-center ftco-animate">
                                <span class="subheading">Bem-vindo!</span>
                                <h1 class="mb-4">Uma pizza feita do seu jeito</h1>
                                <p class="mb-4 mb-md-5">Na Bella Capri, você tem a liberdade de montar um sabor de pizza do seu jeito, com os ingredientes que quiser.</p>
                                <p><a href="#login" class="btn btn-primary p-3 px-xl-4 py-xl-3">Peça agora</a> <a href="#cardapio" class="btn btn-white btn-outline-white p-3 px-xl-4 py-xl-3">Veja o cardápio</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!--Seção para Contato-->
            <section class="ftco-intro">
                <div class="container-wrap">
                    <div class="wrap d-md-flex">
                        <div class="info">
                            <div class="row no-gutters">
                                <div class="col-md-4 d-flex ftco-animate">
                                    <div class="icon"><span class="icon-phone"></span></div>
                                    <div class="text">
                                        <h3>(11) 4001-5084</h3>
                                        <p>Entre em contato conosco agora mesmo!</p>
                                    </div>
                                </div>
                                <div class="col-md-4 d-flex ftco-animate">
                                    <div class="icon"><span class="icon-my_location"></span></div>
                                    <div class="text">
                                        <h3>Rua Haddock Lobo</h3>
                                        <p>Jardins 721 São Paulo SP 01414-000</p>
                                    </div>
                                </div>
                                <div class="col-md-4 d-flex ftco-animate">
                                    <div class="icon"><span class="icon-clock-o"></span></div>
                                    <div class="text">
                                        <h3>Aberto de Terça à Domingo</h3>
                                        <p>10:00 - 23:00hrs</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="social d-md-flex pl-md-5 p-4 align-items-center">
                            <ul class="social-icon">
                                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </section>

            <section class="ftco-about d-md-flex">
                <div class="one-half img" style="background-image: url(images/about.jpg);"></div>
                <div class="one-half ftco-animate">
                    <div class="heading-section ftco-animate ">
                        <h2 class="mb-4">A casa da autêntica <span class="flaticon-pizza">Pizza</span> italiana</h2>
                    </div>
                    <div>
                        <p>Nós da Bella Capri Pizzaria, queremos oferecer o melhor da pizza, pra nós esse prato é sagrado. Nosso fundador, Francesco Rossini,
                            chegou no Brasil em 1943 e decidiu abrir uma pequena pizzaria no Centro da capital paulista. Até essa época, existiam poucas pizzarias 
                            e a Rossini foi uma das pioneiras em sempre buscar produzir uma pizza mais autêntica possível as originais da Itália.</p>
                    </div>
                </div>
            </section>

            <!--Seção para Chamar Atenção do Cliente-->
            <section class="ftco-section ftco-services">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row justify-content-center mb-5 pb-3">
                        <div class="col-md-7 heading-section ftco-animate text-center">
                            <h2 class="mb-4">Seja nosso cliente exclusivo</h2>
                            <p>Para melhor atendê-lo, cadastre-se no nosso site, você pode criar um sabor de pizza totalmente novo e do seu jeito, além disso, 
                                você poderá realizar reservas para datas especiais.</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4 ftco-animate">
                            <div class="media d-block text-center block-6 services">
                                <div class="icon d-flex justify-content-center align-items-center mb-5">
                                    <span class="flaticon-diet"></span>
                                </div>
                                <div class="media-body">
                                    <h3 class="heading">Ingredientes selecionados</h3>
                                    <p>Cada ingrediente de nossa pizza é rigorosamente selecionado e sempre utilizamos as melhores marcas do mercado.</p>
                                </div>
                            </div>      
                        </div>
                        <div class="col-md-4 ftco-animate">
                            <div class="media d-block text-center block-6 services">
                                <div class="icon d-flex justify-content-center align-items-center mb-5">
                                    <span class="flaticon-bicycle"></span>
                                </div>
                                <div class="media-body">
                                    <h3 class="heading">Entrega Rápida</h3>
                                    <p>Temos um time de cozinheiros e entregadores que trabalham em conjunto pra levar sua pizza o mais rápido possível e com a melhor qualidade</p>
                                </div>
                            </div>      
                        </div>
                        <div class="col-md-4 ftco-animate">
                            <div class="media d-block text-center block-6 services">
                                <div class="icon d-flex justify-content-center align-items-center mb-5"><span class="flaticon-pizza-1"></span></div>
                                <div class="media-body">
                                    <h3 class="heading">Receitas Originais</h3>
                                    <p>Temos sabores de pizza exclusivos, além da possibilidade de você, nosso cliente, montar seu próprio sabor.</p>
                                </div>
                            </div>    
                        </div>
                    </div>
                </div>
            </section>

            <!--Seção para Cardápio-->
            <section class="ftco-section" id="cardapio">
                <div class="container">
                    <div class="row justify-content-center mb-5 pb-3">
                        <div class="col-md-7 heading-section ftco-animate text-center">
                            <h2 class="mb-4">Nossos sabores mais pedidos</h2>
                            <p>Veja os sabores que os nossos clientes mais estão pedindo. A melhor massa, o queijo de alta qualidade e os acompanhamentos, hmmm...</p>
                        </div>
                    </div>
                </div>
                <div class="container-wrap">
                    <div class="row no-gutters d-flex">
                        <div class="col-lg-4 d-flex ftco-animate">
                            <div class="services-wrap d-flex">
                                <a href="#" class="img" style="background-image: url(images/pizza-1.jpg);"></a>
                                <div class="text p-4">
                                    <h3>Pizza Veneziana</h3>
                                    <p>Diretamente da cidade de Veneza, azeitona preta, queijo mozzarella, pimenta e pimentão vermelho.
                                    </p>
                                    <p class="price"><span>R$59,90</span> <a href="#login" class="ml-2 btn btn-white btn-outline-white">Pedir</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 d-flex ftco-animate">
                            <div class="services-wrap d-flex">
                                <a href="#" class="img" style="background-image: url(images/pizza-2.jpg);"></a>
                                <div class="text p-4">
                                    <h3>Pizza Grega</h3>
                                    <p>Queijo mozzarella, pimentão vermelho, milho, calabresa</p>
                                    <p class="price"><span>R$59,90</span> <a href="#login" class="ml-2 btn btn-white btn-outline-white">Pedir</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 d-flex ftco-animate">
                            <div class="services-wrap d-flex">
                                <a href="#" class="img" style="background-image: url(images/pizza-3.jpg);"></a>
                                <div class="text p-4">
                                    <h3>Pizza Americana</h3>
                                    <p>Queijo mozzarella, pimentão vermelho, bacon americano e calabresa</p>
                                    <p class="price"><span>R$59,90</span> <a href="#login" class="ml-2 btn btn-white btn-outline-white">Pedir</a></p>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 d-flex ftco-animate">
                            <div class="services-wrap d-flex">
                                <a href="#" class="img order-lg-last" style="background-image: url(images/pizza-4.jpg);"></a>
                                <div class="text p-4">
                                    <h3>Pizza Portuguesa</h3>
                                    <p>Ervilhas finas, milho, queijo mozzarella, ovo cozido e pimentão vermelho</p>
                                    <p class="price"><span>R$59,90</span> <a href="#login" class="ml-2 btn btn-white btn-outline-white">Pedir</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 d-flex ftco-animate">
                            <div class="services-wrap d-flex">
                                <a href="#" class="img order-lg-last" style="background-image: url(images/pizza-5.jpg);"></a>
                                <div class="text p-4">
                                    <h3>Pizza de Tomate Seco</h3>
                                    <p>Queijo mozzarella, tomate seco de alto padrão, pimentão vermelho, milho e ervilhas finas</p>
                                    <p class="price"><span>R$69,90</span> <a href="#login" class="ml-2 btn btn-white btn-outline-white">Pedir</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 d-flex ftco-animate">
                            <div class="services-wrap d-flex">
                                <a href="#" class="img order-lg-last" style="background-image: url(images/pizza-6.jpg);"></a>
                                <div class="text p-4">
                                    <h3>Pizza Margerita</h3>
                                    <p>Queijo gorgonzolla, pimentão vermelho, milho e frango desfiado/p>
                                    <p class="price"><span>R$69,90</span> <a href="#login" class="ml-2 btn btn-white btn-outline-white">Pedir</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!--Seção para Galeria-->
            <section class="ftco-gallery">
                <div class="container-wrap">
                    <div class="row no-gutters">
                        <div class="col-md-3 ftco-animate">
                            <a href="gallery.html" class="gallery img d-flex align-items-center" style="background-image: url(images/gallery-1.jpg);">
                                <div class="icon mb-4 d-flex align-items-center justify-content-center">
                                    <span class="icon-search"></span>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-3 ftco-animate">
                            <a href="gallery.html" class="gallery img d-flex align-items-center" style="background-image: url(images/gallery-2.jpg);">
                                <div class="icon mb-4 d-flex align-items-center justify-content-center">
                                    <span class="icon-search"></span>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-3 ftco-animate">
                            <a href="gallery.html" class="gallery img d-flex align-items-center" style="background-image: url(images/gallery-3.jpg);">
                                <div class="icon mb-4 d-flex align-items-center justify-content-center">
                                    <span class="icon-search"></span>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-3 ftco-animate">
                            <a href="gallery.html" class="gallery img d-flex align-items-center" style="background-image: url(images/gallery-4.jpg);">
                                <div class="icon mb-4 d-flex align-items-center justify-content-center">
                                    <span class="icon-search"></span>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </section>

            <!--Seção para Background Image-->
            <section class="ftco-menu">
                <div class="container-fluid">
                    <div class="row d-md-flex">
                        <div class="col-lg-4 ftco-animate img f-menu-img mb-5 mb-md-0" style="background-image: url(images/about.jpg);">
                        </div>    	
                    </div>
                </div>
            </section>

            <!--Seção para História-->
            <section class="ftco-section" id="historia">
                <div class="container">
                    <div class="row justify-content-center mb-5 pb-3">
                        <div class="col-md-10 heading-section ftco-animate text-center">
                            <h2 class="mb-4">Nossa História</h2>
                            <p>Através de muito esforço e amor pela culinária italiana, a pizzaria se consolidou no mercado e conquistou diversos clientes em toda sua história.
                                A casa foi fundada em 1943, por Francesco Rossini, filho de imigrantes italianos que chegaram ao Brasil no início da Primeira Guerra Mundial.</p>
                            <p>Surge, então, em julho de 1943, a "Rossini Pizzaria", iniciando uma nova história de muita dedicação, responsabilidade, autonomia e sucesso, conquistando lugar de destaque entre as melhores pizzarias de São Paulo.</p>
                            <p>Em maio de 2007, procurando aprimorar o sistema de delivery e mantendo o alto padrão de qualidade que a acompanha durante todos esses anos, a Bella Capri Pizzaria passou
                                a aceitar também pedidos efetuados em nosso website, através do Portal do Cliente. 
                            </p>
                        </div>
                    </div>
                    <div class="row d-flex">
                        <div class="col-md-4 d-flex ftco-animate">
                            <div class="blog-entry align-self-stretch">
                                <a href="blog-single.html" class="block-0" style="background-image: url('images/image_1.jpg');">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!--Seção para Dashboards-->
            <section class="ftco-counter ftco-bg-dark img" id="section-counter" style="background-image: url(images/bg_2.jpg);" data-stellar-background-ratio="0.5">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-md-10">
                            <div class="row">
                                <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
                                    <div class="block-18 text-center">
                                        <div class="text">
                                            <div class="icon"><span class="flaticon-pizza-1"></span></div>
                                            <strong class="number" data-number="896">0</strong>
                                            <span>Pizzas Feitas</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
                                    <div class="block-18 text-center">
                                        <div class="text">
                                            <div class="icon"><span class="flaticon-medal"></span></div>
                                            <strong class="number" data-number="45">0</strong>
                                            <span>Numero de Premiações</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
                                    <div class="block-18 text-center">
                                        <div class="text">
                                            <div class="icon"><span class="flaticon-laugh"></span></div>
                                            <strong class="number" data-number="1567">0</strong>
                                            <span>Clientes Satisfeitos</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
                                    <div class="block-18 text-center">
                                        <div class="text">
                                            <div class="icon"><span class="flaticon-chef"></span></div>
                                            <strong class="number" data-number="56">0</strong>
                                            <span>Nossa Equipe</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!--Seção para Portal do Cliente-->
            <section class="ftco-appointment" id="login">
                <div class="overlay"></div>
                <div class="container-wrap">
                    <div class="row no-gutters d-md-flex align-items-center">
                        <div class="col-md-6 d-flex align-self-stretch"></div>
                    </div>
                    <div class="col-md-6 appointment ftco-animate">
                        <h3 class="mb-3">Portal do Cliente</h3>
                        <form action="Logar" method="POST" class="appointment-form">
                            <h5>Insira seu e-mail e senha cadastrados</h5>
                            <h6>${mensagem}</h6>
                            <div class="d-me-flex">
                                <div class="form-group">
                                    <input type="email" class="form-control" name="email" placeholder="E-Mail">
                                </div>
                            </div>
                            <div class="d-me-flex">
                                <div class="form-group">
                                    <input type="password" class="form-control" name="senha" placeholder="Senha">
                                </div>
                            </div>
                            <div class="form-group">
                                <input type="submit" value="Logar" class="btn btn-primary py-3 px-4">
                            </div>
                            <br/>
                            <h5 class="mb-4">Ainda não é cliente?</h5>
                            <div class="form-group">
                                <a class="btn btn-primary py-3 px-4" href="cadastrar-cliente.jsp"> Cadastre-se </a>
                            </div>
                        </form>
                    </div>    			
                </div>
                </div>
            </section>


            <!--Seção para Rodapé-->
            <footer class="ftco-footer ftco-section img">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row mb-5">
                        <div class="col-lg-3 col-md-6 mb-5 mb-md-5">
                            <div class="ftco-footer-widget mb-4">
                                <h2 class="ftco-heading-2">Sobre nós</h2>
                                <p>Fundado em 1943 por Francesco Rossini, a pizzaria se consolidou no mercado e conquistou diversos clientes em toda sua história.</p>
                                <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                                    <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                                    <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                                    <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 mb-5 mb-md-5">
                            <div class="ftco-footer-widget mb-4">
                                <h2 class="ftco-heading-2">Artigos</h2>
                                <div class="block-21 mb-4 d-flex">
                                    <a class="blog-img mr-4" style="background-image: url(images/image_1.jpg);"></a>
                                    <div class="text">
                                        <h3 class="heading"><a href="#">Aprenda a fazer o melhor spaguetti de todos</a></h3>
                                        <div class="meta">
                                            <div><a href="#"><span class="icon-calendar"></span>15 de Set, 2018</a></div>
                                            <div><a href="#"><span class="icon-person"></span> Admin</a></div>
                                            <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="block-21 mb-4 d-flex">
                                    <a class="blog-img mr-4" style="background-image: url(images/image_2.jpg);"></a>
                                    <div class="text">
                                        <h3 class="heading"><a href="#">Macarrão à carbonara, já provou?</a></h3>
                                        <div class="meta">
                                            <div><a href="#"><span class="icon-calendar"></span>15 de Set, 2018</a></div>
                                            <div><a href="#"><span class="icon-person"></span> Admin</a></div>
                                            <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6 mb-5 mb-md-5">
                            <div class="ftco-footer-widget mb-4 ml-md-4">
                                <h2 class="ftco-heading-2">Diversos</h2>
                                <ul class="list-unstyled">
                                    <li><a href="#" class="py-2 d-block">Culinária</a></li>
                                    <li><a href="#" class="py-2 d-block">Delivery</a></li>
                                    <li><a href="#" class="py-2 d-block">Comida de Qualidade</a></li>
                                    <li><a href="#" class="py-2 d-block">Misto</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 mb-5 mb-md-5">
                            <div class="ftco-footer-widget mb-4">
                                <h2 class="ftco-heading-2">Fale conosco</h2>
                                <div class="block-23 mb-3">
                                    <ul>
                                        <li><span class="icon icon-map-marker"></span><span class="text">Rua Haddock Lobo, 726, Pinheiros, São Paulo, SP, Brasil</span></li>
                                        <li><a href="#"><span class="icon icon-phone"></span><span class="text">+55 11 4001-5030</span></a></li>
                                        <li><a href="#"><span class="icon icon-envelope"></span><span class="text">contato@rossinipizzaria.com</span></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 text-center">

                            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                Copyright &copy;<script>document.write(new Date().getFullYear());</script> todos direitos reservados | Este sistema foi desenvolvido por Leonardo Buzo e Erivelton Rossini.</a>
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                        </div>
                    </div>
                </div>
            </footer>


            <!-- loader -->
            <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


            <script src="js/jquery.min.js"></script>
            <script src="js/jquery-migrate-3.0.1.min.js"></script>
            <script src="js/popper.min.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script src="js/jquery.easing.1.3.js"></script>
            <script src="js/jquery.waypoints.min.js"></script>
            <script src="js/jquery.stellar.min.js"></script>
            <script src="js/owl.carousel.min.js"></script>
            <script src="js/jquery.magnific-popup.min.js"></script>
            <script src="js/aos.js"></script>
            <script src="js/jquery.animateNumber.min.js"></script>
            <script src="js/bootstrap-datepicker.js"></script>
            <script src="js/jquery.timepicker.min.js"></script>
            <script src="js/scrollax.min.js"></script>
            <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
            <script src="js/google-map.js"></script>
            <script src="js/main.js"></script>

    </body>
</html>