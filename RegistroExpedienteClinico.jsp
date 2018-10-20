<%-- 
    Document   : RegistroExpedienteClinico
    Created on : 04-sep-2018, 13:41:32
    Author     : root
--%>

<%@page import="oracle.net.aso.i"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
    <script src="http://code.jquery.com/jquery-latest.js">
    </script>
    <script> 
        $(document).ready(function() {
		$('#sub1').click(function(event) {
			var tmb = $('#tmb1').val();
			// Si en vez de por post lo queremos hacer por get, cambiamos el $.post por $.get
			$.post('EstablecerComida', {
				tmb : tmb
			}, function(responseText) {
				$('#table').html(responseText);
			});
		});
	});
        $(document).ready(function() {
		$('#submit1').click(function(event) {
			var peso = $('#peso1').val();
			var talla = $('#talla').val();
			// Si en vez de por post lo queremos hacer por get, cambiamos el $.post por $.get
			$.post('IMC', {
				peso1 : peso,
				talla : talla
			}, function(responseText) {
				$('#imc1').html(responseText);
			});
		});
	});
            
    $(document).ready(function() {
		$('#submit2').click(function(event) {
			var peso = $('#peso1').val();
			var talla = $('#talla').val();
                        var edad = $('#edad').val();
                        var genero = $('#genero').val();
			// Si en vez de por post lo queremos hacer por get, cambiamos el $.post por $.get
			$.post('TMB', {
				peso1 : peso,
				talla : talla,
                                edad : edad,
                                genero : genero
			}, function(responseText) {
				$('#tmb').html(responseText);
			});
		});
	});
            
    $(document).ready(function() {
		$('#submit3').click(function(event) {
			var peso = $('#peso1').val();
			var talla = $('#talla').val();
                        var imc = $("#imc").val();
                        var fecha = $("#fecha").val();
                        var hora = $("#hora").val();
                        var fc =$("#fc").val();
                        var tmp =$("#tmp").val();
                        var ta =$("#ta").val();
                        var glu =$("#glu").val();
                        var oxi =$("#oxi").val();
                        var paciente =$("#paciente").val();
                        var edad = $("#edad").val();
                        var genero =$("#genero").val();
                        var tmb1 = $("#tmb1").val();
			// Si en vez de por post lo queremos hacer por get, cambiamos el $.post por $.get
			$.post('RegistroExpediente', {
				peso1 : peso,
				talla : talla,
                                imc : imc,
                                fecha : fecha,
                                hora : hora,
                                fc : fc,
                                tmp : tmp,
                                ta : ta,
                                glu : glu,
                                oxi : oxi,
                                paciente : paciente,
                                edad : edad,
                                genero : genero,
                                tmb1 : tmb1
			}, function(responseText) {
                           document.location.href='RegistroExpediente.jsp'
				$('#response1').html(responseText);
			});
		});
	});</script>
        <title>Diagnóstico</title>
        
        
        
        <!--Carga solo estos estilos sin logear y asi la página es menos pesada--
        <link href="//www.ipn.mx/Style Library/styles/fonts.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="//www.ipn.mx/Style%20Library/styles/BaseR.min.css">
        <link rel="stylesheet" type="text/css" href="//www.ipn.mx/Style%20Library/styles/Zonas_1020.min.css">
        <link rel="stylesheet" type="text/css" href="//www.ipn.mx/Style%20Library/styles/modulos.min.css"-->
        
        
        
    </head>
    <body>
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
    <a class="navbar-brand" href="#">Bienvenido a SAGDEN</a>
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
        <br/><br/>
        <br/><br/>
        
        <h2 class="text-white mb-5 center-block">Registro de Expediente</h2>
        <input type="text" id="paciente" class="form-control flex-fill mr-0 mr-sm-2 mb-3 mb-sm-0" placeholder="Paciente..." />
                <input type="text" id="peso1" placeholder="Peso..."/>
                <input type="text" id="talla" placeholder="Talla..."/> 
                <input type="text" id="edad" placeholder="Edad..."/>
                <select id="genero">
                  <option value=" ">Género</option>  
                    <option value="M">Mujer</option>
                    <option value="H">Hombre</option>
                </select>
                <input type="submit" id="submit1" value="IMC..."  />
                <input type="submit" id="submit2" value="TMB..."  />
                <div  id="imc1" class="table-bordered"></div>
                <div  id="tmb" class="table-bordered"></div>
                <div  id="response1" class="table-bordered"></div>
		<input type="text" id="fecha" placeholder="Fecha..."/>
		<input type="text" id="hora" placeholder="Hora..."/>
                <input type="text" id="ta" class="tcal" placeholder="T/A..."/> 
                <input type="text" id="fc" class="tcal" placeholder="F/C..."/>
                <input type="text" id="tmp" placeholder="Temperatura..."/>
               <input type="text" id="glu" placeholder="Glucosa..."/>
                <input type="text" id="oxi" placeholder="Oxímetro..."/> 
                <input type="submit" id="submit3" value="Enviar consulta" class="btn btn-primary mx-auto"/>
                <div  id="response" class="table-bordered"></div>
                
                <br/><br/>
        <br/><br/>
        
        <h2 class="text-white mb-5 center-block">Plan Alimenticio</h2>
        <!--<input type="text" id="comidas" class="form-control flex-fill mr-0 mr-sm-2 mb-3 mb-sm-0" placeholder="Numero Comidas..." />-->
                <input type="submit" id="sub1" value="Calcular..."  />
                <input type="submit" id="submit3" value="Enviar consulta" class="btn btn-primary mx-auto"/>
                <div  id="table" class="table-bordered"></div>
                
                
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
