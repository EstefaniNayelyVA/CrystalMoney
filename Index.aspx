<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>--%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Crystal Money</title>

    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Theme CSS -->
    <link href="css/freelancer.min.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body id="page-top" class="index" onload="finanzas.cargarGastosFijos()">
    <!-- Navigation -->
    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top navbar-custom">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="#page-top">iFinanciero</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li class="page-scroll">
                        <a href="#portfolio">Finanzas</a>
                    </li>
                    <li class="page-scroll">
                        <a href="#about">Nosotros</a>
                    </li>
                    <li class="page-scroll">
                        <a href="#contact">Contacto</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <!-- Header -->
    <header>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                     <div class="intro-text">
                        <span class="name">Comienza en</span>&nbsp;<hr class="star-light">
                         </div>
                    <img class="img-responsive" src="img/LOGO.png" alt="">
                    <div class="intro-text">
                        <span class="name">Crystal Money</span>&nbsp;<hr class="star-light">
                        <span class="skills">Presupuesta tus Finanzas Personales - Determina tu Situación Económica - Asesoría y tips financieros</span>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Portfolio Grid Section -->
    <section id="portfolio">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Calculadora de Estado Financiero</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <br />
            <div class="col-sm-6 portfolio-item">
                <a href="#portfolioModal2" class="portfolio-link" data-toggle="modal">
                    <input type="button" class="btn btn-success btn-lg" value="Haz Click para agregar Ingresos Fijos" id="txtIngresoTotal" />
                    <p class="help-block text-danger"></p>
                </a>
            </div>
            <div class="col-sm-6 portfolio-item">
                <a href="#portfolioModal3" class="portfolio-link" data-toggle="modal">
                    <input type="button" class="btn btn-success btn-lg" value="Haz Click para agregar Ingresos Variables" id="txtIngresoTotalVariable" />
                    <p class="help-block text-danger"></p>
                </a>
            </div>
            <br />
            <div class="col-sm-6 portfolio-item">
                <a href="#portfolioModal4" class="portfolio-link" data-toggle="modal">
                    <input type="button" class="btn btn-success btn-lg" value="Haz Click para agregar Gastos Fijos" id="txtGastoTotalFijo" />
                    <p class="help-block text-danger"></p>
                </a>
            </div>
            <div class="col-sm-6 portfolio-item">
                <a href="#portfolioModal5" class="portfolio-link" data-toggle="modal">
                    <input type="button" class="btn btn-success btn-lg" value="Haz Click para agregar Gastos Variables" id="txtGastoTotalVariable" />
                    <p class="help-block text-danger"></p>
                </a>
            </div>
            <br />

            <div class="row">
            <div class="col-sm-4 form-group">
                 <label id="txtTOTAL" class="col-sm-6 control-label"></label>
                <button type="button" class="btn btn-success btn-lg" data-dismiss="modal" id="btnTotal" onclick="finanzas.suma('txtGastoTotalVariable','txtGastoTotalFijo','txtIngresoTotalVariable','txtIngresoTotal','Sus Ingresos Fijos: ')"><i class="fa fa-times"></i>Terminar</button>
                        
            </div>
        </div>
           <%-- <div class="col-sm-6 portfolio-item">
                <a href="#portfolioModal6" class="portfolio-link" data-toggle="modal">
                    
               

                    <div class="form-group col-xs-12 floating-label-form-group controls">
                        <label>Total de Gastos: </label>
                        <input type="text" class="form-control" id="txtTotalGastos" />
                        <p class="help-block text-danger"></p>
                        <br />
                    </div>
                </a>
            </div>--%>



        </div>
    </section>
    <!-- About Section -->
    <section class="success" id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Nosotros</h2>
                    <hr class="star-light">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-lg-offset-2">
                    <p>
                        La responsabilidad financiera personal se ha convertido en un tema crucial para mantener sana la salud financiera de las personas
de ahí nace la idea de esta app.
                    </p>
                </div>
                <div class="col-lg-4">
                    <p>
                        El poder ayudar a que las personas tengan conocimiento actual y real de su situación económica
con lo cual puedan ser responsables con sus gastos, créditos y tambien para saber con exactitud qué impuestos y que monto se retiene en sus sueldos. De esta manera podremos tener una perspectiva diferente de nuestra economía. Lo que favorece
a todo México.
                    </p>
                </div>
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <a href="http://www.gob.mx/shcp" class="btn btn-lg btn-outline">
                        <i class="fa fa-download"></i>Mas Información
                    </a>
                </div>
            </div>
        </div>
    </section>
    <!-- Contact Section -->
    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Contacto</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
                    <!-- The form should work on most web servers, but if the form is not working you may need to configure your web server differently. -->
                    <form name="sentMessage" id="contactForm" novalidate>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Nombre</label>
                                <input type="text" class="form-control" placeholder="Name" id="Nombre" required data-validation-required-message="Please enter your name.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Correo electrónico</label>
                                <input type="email" class="form-control" placeholder="Correo electrónico" id="email" required data-validation-required-message="Please enter your email address.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Número de teléfono</label>
                                <input type="tel" class="form-control" placeholder="Número de teléfono" id="phone" required data-validation-required-message="Please enter your phone number.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Mensaje</label>
                                <textarea rows="5" class="form-control" placeholder="Mensaje" id="message" required data-validation-required-message="Please enter a message."></textarea>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <br>
                        <div id="success"></div>
                        <div class="row">
                            <div class="form-group col-xs-12">
                                <button type="submit" class="btn btn-success btn-lg">Enviar</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="text-center">
        <div class="footer-above">
            <div class="container">
                <div class="row">
                    <div class="footer-col col-md-4">
                        <h3>Ubicación</h3>
                        <p>
                            Universidad de La Salle Bajío
                            <br />
                            León, Guanajuato
                        </p>
                    </div>
                    <div class="footer-col col-md-4">
                        <h3>Redes Sociales</h3>
                        <ul class="list-inline">
                            <li>
                                <a href="#" class="btn-social"><i class="fa fa-fw fa-facebook"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-twitter"></i></a>
                            </li>
                        </ul>
                    </div>
                    <div class="footer-col col-md-4">
                        <p>Este proyecto fue creado con propósito del concurso HackBajío 2016.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-below">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
    <div class="scroll-top page-scroll hidden-sm hidden-xs hidden-lg hidden-md">
        <a class="btn btn-primary" href="#page-top">
            <i class="fa fa-chevron-up"></i>
        </a>
    </div>

    <!-- Portfolio Modals -->
    <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>Ingresos</h2>
                            <hr class="star-primary" />
                            <table>
                            </table>
                            <p>Hola Mundo...</p>
                            <ul class="list-inline item-details">
                                <li>Client:
                                   
                                    <strong><a href="http://startbootstrap.com">Start Bootstrap</a>
                                    </strong>
                                </li>
                                <li>Date:
                                   
                                    <strong><a href="http://startbootstrap.com">April 2014</a>
                                    </strong>
                                </li>
                                <li>Service:
                                   
                                    <strong><a href="http://startbootstrap.com">Web Development</a>
                                    </strong>
                                </li>
                            </ul>
                            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i>Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>Ingresos Fijos</h2>
                            <p>Agregue nuevos ingresos fijos:</p>
                            <input type="text" id="txtNuevoIngreso" placeholder="Entrada" class="input-sm" />
                            <input type="number" id="txtCantidad" class="input-sm" />
                            <!--boton de agregar-->
                            <button type="button" class="btn btn-success btn-lg" onclick="finanzas.apilarIngresoEnTabla('tblIngresos','txtNuevoIngreso','txtCantidad')">Agregar</button><br />
                            <br />
                            <table class="table" id="tblIngresos">
                                <tr class="row">
                                    <th class="col-md-2">Definicion</th>
                                    <th class="col-md-2">Cantidad</th>
                                </tr>
                            </table>
                            <hr class="star-primary" />
                            <button type="button" class="btn btn-success btn-lg" data-dismiss="modal" onclick="finanzas.sumarTabla('tblIngresos','txtIngresoTotal','Sus Ingresos Fijos: ')"><i class="fa fa-times"></i>Terminar</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>Ingreso Variable</h2>
                            <p>Agregue nuevos ingresos variables:</p>
                            <input type="text" id="txtNuevoIngresoVariable" placeholder="Entrada" class="input-sm" />
                            <input type="number" id="txtCantidadVariable" class="input-sm" />

                            <button type="button" class="btn btn-success btn-lg" onclick="finanzas.apilarIngresoEnTabla('tblIngresosVariables','txtNuevoIngresoVariable','txtCantidadVariable')">Agregar</button><br />
                            <br />
                            <table class="table" id="tblIngresosVariables">
                                <tr class="row">
                                    <th class="col-md-2">Definicion</th>
                                    <th class="col-md-2">Cantidad</th>
                                </tr>
                            </table>
                            <hr class="star-primary" />
                            <button type="button" class="btn btn-success btn-lg" data-dismiss="modal" onclick="finanzas.sumarTabla('tblIngresosVariables','txtIngresoTotalVariable', 'Sus Ingresos Variables: ')"><i class="fa fa-times"></i>Terminar</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>Gastos Fijos</h2>
                            <p>Inserte sus Gastos Fijos:</p>
                            <input type="text" id="txtNuevoGasto" placeholder="Entrada" class="input-sm" />
                            <input type="number" id="txtCantGasto" class="input-sm" />
                            <button type="button" class="btn btn-success btn-lg" onclick="finanzas.apilarIngresoEnTabla('tblGastosFijos','txtNuevoGasto','txtCantGasto')">Agregar</button><br />
                            <br />
                            <table class="table" id="tblGastosFijos">
                                <tr class="row">
                                    <th class="col-md-2">Definicion</th>
                                    <th class="col-md-2">Cantidad</th>
                                </tr>
                            </table>
                            <hr class="star-primary" />
                            <button type="button" class="btn btn-success btn-lg" data-dismiss="modal" onclick="finanzas.sumarTabla('tblGastosFijos','txtGastoTotalFijo', 'Sus Gastos Fijos Mensuales: ')"><i class="fa fa-times"></i>Terminar</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>Gastos Variables</h2>
                            <p>Inserte sus Gastos Variables:</p>
                            <input type="text" id="txtNuevoGastoVariable" placeholder="Entrada" class="input-sm" />
                            <input type="number" id="txtCantGastoVariable" class="input-sm" />
                            <button type="button" class="btn btn-success btn-lg" onclick="finanzas.apilarIngresoEnTabla('tblGastosVariables','txtNuevoGastoVariable','txtCantGastoVariable')">Agregar</button><br />
                            <br />
                            <table class="table" id="tblGastosVariables">
                                <tr class="row">
                                    <th class="col-md-2">Definicion</th>
                                    <th class="col-md-2">Cantidad</th>
                                </tr>
                            </table>
                            <hr class="star-primary" />
                            <button type="button" class="btn btn-success btn-lg" data-dismiss="modal" onclick="finanzas.sumarTabla('tblGastosVariables','txtGastoTotalVariable', 'Sus Gastos Variables Mensuales: ')"><i class="fa fa-times"></i>Terminar</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                     

                            <hr class="star-primary">
                            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i>Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery -->
    <script src="vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

    <!-- Theme JavaScript -->
    <script src="js/freelancer.min.js"></script>
    <script src="js/Finanzas.js"></script>
</body>
</html>
