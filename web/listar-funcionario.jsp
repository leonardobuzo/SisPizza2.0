<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <!-- END nav -->

        <!--Seção para Listar Funcionarios-->
        <section class="ftco-appointment" id="login">
            <div class="overlay"></div>
            <div class="container-wrap">
                <div class="row no-gutters d-md-flex align-items-center">
                    <div class="col-md-6 d-flex align-self-stretch one-half img" style="background-image: url(images/pizzaiolo.jpg);">
                    </div>
                    <div class="col-md-12 appointment ftco-animate">
                        <h1>Lista de Funcionários</h1>

                        <form action="ListarFuncionario" method="POST">
                            <select name="tipo">
                                <option value="codigo">Código</option>
                                <option value="nome">Nome</option>
                            </select>
                            <input type="text" size="30" name="pesquisa" placeholder="Digite o valor para pesquisar"/>
                            <input type="submit" value="Pesquisar"/> 
                        </form>

                        <h3>${msg}</h3>

                        <c:if test="${!empty funcionarios}">
                            <table class="table table-dark" border="1">
                                <tr>
                                    <th>Id</th>
                                    <th>Nome</th>
                                    <th>Salário</th>
                                    <th>Telefone</th>
                                </tr>
                                <c:forEach items="${funcionarios}" var="funcionario">
                                    <tr>
                                        <td>${funcionario.id}</td>
                                        <td>${funcionario.nome}</td>
                                        <td>${funcionario.salario}</td>
                                        <td>${funcionario.telefone}</td>
                                        <td>
                                            <a class="btn btn-primary py-3 px-4" href="CarregarFuncionario?id=${funcionario.id}">Alterar</a>
                                        </td>
                                        <td>
                                            <a class="btn btn-primary py-3 px-4" onclick="if (confirm('Confirma a exclusão?')) {
                                                    window.location.href = `ExcluirFuncionario?id=${funcionario.id}`
                                                }"><span class="glyphicon glyphicon-trash"></span>Excluir</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </table>
                        </c:if>
                        <br><a href="cadastrar-funcionario.jsp">Voltar</a>
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
