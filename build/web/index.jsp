<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SAGDEN  : Login  </title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/tab.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="css/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    
    
    <!--Carga solo estos estilos sin logear y asi la página es menos pesada-->
        <link href="//www.ipn.mx/Style Library/styles/fonts.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="//www.ipn.mx/Style%20Library/styles/BaseR.min.css">
        <link rel="stylesheet" type="text/css" href="//www.ipn.mx/Style%20Library/styles/Zonas_1020.min.css">
        <link rel="stylesheet" type="text/css" href="//www.ipn.mx/Style%20Library/styles/modulos.min.css">
    
    
    
</head>

<body id="page-top">
    
    <nav class="navbar navbar-default" role="navigation">
  <!-- El logotipo y el icono que despliega el menú se agrupan
       para mostrarlos mejor en los dispositivos móviles -->
  <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse"
            data-target=".navbar-ex1-collapse">
      <span class="sr-only">Desplegar navegación</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
      <a class="navbar-brand" href="http://www.ipn.mx"><img src="images/IPN.jpg" alt="IPN">
        </a>
    <a class="navbar-brand" href="index.jsp">Bienvenido a SAGDEN</a>
  </div>
 
  <!-- Agrupar los enlaces de navegación, los formularios y cualquier
       otro elemento que se pueda ocultar al minimizar la barra -->
  <div class="collapse navbar-collapse navbar-ex1-collapse">
    <ul class="nav navbar-nav">
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
          Menú SAGDEN <b class="caret"></b>
        </a>
        <ul class="dropdown-menu">
          <li><a href="Seguimiento.jsp">Seguimiento</a></li>
          <li><a href="AgendarCita.jsp">Agendar Cita</a></li>
          <li><a href="#">Generar Dieta</a></li>
          <li><a href="RegistroExpedienteClinico.jsp">Generar Expediente</a></li>
          <li class="divider"></li>
          <li><a href="#">Generar Reporte</a></li>
          <li class="divider"></li>
          <li><a href="#">Foro</a></li>
        </ul> 
      </li>
  </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#">Cerrar Sesión</a></li>
      <li><a class="navbar-brand" href="http://www.escom.ipn.mx/"><img src="images/logoescom.png" alt="ESCOM">
          </a></li>
    </ul>
  </div>
</nav>

<header class="masthead text-center text-white d-flex">
      <div class="container my-auto">
        <div class="row">
          <div class="col-lg-10 mx-auto">
            <h1 class="text-uppercase">
              <strong>Podrás Consultar todas tu dudas de nutrición aquí</strong>
            </h1>
            <hr>
          </div>
          <div class="col-lg-8 mx-auto">
            <p class="text-faded mb-5">Bienvenido a SAGDEN</p>
           <!--  <a class="btn btn-primary btn-xl js-scroll-trigger" href="#about">Find Out More</a>-->
          </div>
        </div>
      </div>
    </header>
<section class="bg-primary" id="about">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 mx-auto text-center">
              <form class="navbar-form navbar-left" role="search" method="post" action="inicioSesion.jsp">
        <label>
            <p>Login</p>
            </label>
       <fieldset>
        <div class="form-group">
            <input class="form-control" placeholder="E-mail" name="email" type="email" autofocus>
        </div>
        <div class="form-group">
            <input class="form-control" placeholder="Password" name="password" type="password" value="">
        </div>
        <div class="checkbox">
            <label>
                <input name="remember" type="checkbox" value="Remember Me">Recordarme en este Dispositivo
            </label>
        </div>
                                <!-- Change this to a button or input when using this as a form -->
        <input type="submit" class="btn btn-lg btn-success btn-block " value="Login"/>
        <a href="RegistroUsuario.jsp" class="btn btn-block btn-success btn-lg ">¿No tienes una cuenta? Registrate</a>
    </fieldset>
    </form>
          </div>
        </div>
      </div>
    </section>


<div id="Footer">
<!--Inicio Footer-->
	<div class="contFooter">
	<!--Inicio ContenedorFooter-->
    	<div class="buscapie">
				 <gcse:searchbox-only></gcse:searchbox-only>
		</div>

		<div class="fourfooter">
		<div class="div-footer">			
				<ul>
					<li itemprop="department">
						<a href="//www.ipn.mx/normatividad" itemprop="url">Normatividad</a>
					</li>
					<li itemprop="address">
						<a href="//www.ipn.mx/Acerca-del-IPN/Paginas/mapas-instalaciones.aspx" itemprop="url">Mapas e Instalaciones</a>
					</li>				
				</ul>
			</div>	
		
			<div class="div-footer">			
				<ul>	
					<li itemprop="department">
						<a href="//www.ipn.mx/egresados/Paginas/bolsa-trabajo.aspx" itemprop="url">Bolsa de trabajo</a>
					</li>
					<li itemprop="contactPoint">
						<a href="//www.ipn.mx/ofertaeducativa/Paginas/centros-idiomas.aspx" itemprop="url">Centros de Idiomas</a>
					</li>
					<li itemprop="department">
						<a href="//www.ipn.mx/investigacion/Paginas/directorio-centros.aspx" itemprop="url">Centros de Investigación</a>
					</li>
				</ul>				
			</div>	
						
			<div class="div-footer">			
				<ul>
					<li itemprop="department">
						<a href="//www.ipn.mx/CCS/Paginas/circulares.aspx" itemprop="url">Circulares </a>
					</li>
					<li itemprop="event">
						<a href="//envivo.ipn.mx/" itemprop="url">Transmisión en Línea</a>
					</li>
					<li itemprop="department">
						<a href="//www.ipn.mx/DG/Paginas/consejo-consultivo.aspx" itemprop="url">Consejo General Consultivo</a>
					</li>
				</ul>
				</div>
				<div class="rdiv-footer">		
				<ul>
					<li class="face" itemprop="name" itemscope="" itemid="//www.facebook.com" itemtype="//schema.org/SoftwareApplication"><a href="//www.facebook.com/ipn.mx" target="_blank" itemprop="url"><span>Facebook</span></a></li>
					<li class="twt" itemprop="name" itemscope="" itemid="//www.twitter.com" itemtype="//schema.org/SoftwareApplication"><a href="//twitter.com/IPN_MX" target="_blank" itemprop="url"><span>Twitter</span></a></li>
					<li class="gplus" itemprop="name" itemscope="" itemid="//plus.google.com/" itemtype="//schema.org/SoftwareApplication"><a href="//plus.google.com/103841476689221632363" target="_blank" itemprop="url"><span>Google +</span></a></li>
					<li class="yutu" itemprop="name" itemscope="" itemid="//www.youtube.com" itemtype="//schema.org/Website"><a href="//www.youtube.com/user/IPNoficial" target="_blank" itemprop="url"><span>Youtube</span></a></li>
					<li class="blog" itemprop="name" itemscope="" itemid="//www.blogspot.mx" itemtype="//schema.org/Website"><a href="//ipn-mx.blogspot.mx/" target="_blank" itemprop="url"><span>Blog</span></a></li>
					<li class="rss" itemprop="name" itemscope="" itemid="//www.ipn.mx" itemtype="//schema.org/Website"><a href="//www.ipn.mx/Paginas/rss.aspx" target="_blank" itemprop="url"><span>RSS</span></a></li>
				</ul>
		
			</div>			
		</div>
		<div class="direccion" itemprop="addres">
			<p>
				<a href="//www.ipn.mx/" itemprop="url">Instituto Politécnico Nacional</a>
				D.R. Instituto Politécnico Nacional (IPN), Av. Luis Enrique Erro S/N, Unidad Profesional Adolfo López Mateos, Zacatenco, Delegación Gustavo A. Madero, C.P. 07738, Ciudad de México; México 2009-2013.
			</p>
			<p class="derechos">
				Esta página es una obra intelectual protegida por la Ley Federal del Derecho de Autor, puede ser reproducida con fines no lucrativos, siempre y cuando no se mutile, se cite la fuente completa y su dirección electrónica; su uso para otros fines, requiere autorización previa y por escrito de la Dirección General del Instituto.
			</p>
		</div>
	<!--Fin Dirección-->
	</div>
	<div class="footerimg"></div>
<!--Fin ContenedorFooter-->
</div>
<!-- jQuery -->
    <script src="js/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="js/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/sb-admin-2.js"></script>

</body>

</html>

