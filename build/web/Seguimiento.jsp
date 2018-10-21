<%-- 
    Document   : Seguimiento
    Created on : 10-oct-2018, 5:23:13
    Author     : root
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
<!DOCTYPE html>
<%
Gson gsonObj = new Gson();
Gson gsonObj1 = new Gson();
Map<Object,Object> map = null;
Map<Object,Object> map1 = null;
List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
List<Map<Object,Object>> list1 = new ArrayList<Map<Object,Object>>();
 String dataPoints = null;
 String dataPoints1 = null;
try{
	 Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/mydb", "root", "");
	Statement statement = conn.createStatement();
	String xVal, yVal,zval;
	
	ResultSet resultSet = statement.executeQuery("select IMC,fecha,peso from diagnostico where nomP = 'Juan'");
	
	while(resultSet.next()){
		xVal = resultSet.getString("fecha");
		yVal = resultSet.getString("IMC");
                zval=resultSet.getString("peso");
		map = new HashMap<Object,Object>(); 
                map1 = new HashMap<Object,Object>(); 
                map.put("label", xVal); 
                map.put("y", Double.parseDouble(yVal)); 
                map1.put("label", xVal);
                map1.put("y", Double.parseDouble(zval));
                list.add(map);
                list1.add(map1);
		dataPoints = gsonObj.toJson(list);
                dataPoints1 = gsonObj1.toJson(list1);
	}
	conn.close();
}
catch(SQLException e){
	out.println("<div  style='width: 50%; margin-left: auto; margin-right: auto; margin-top: 200px;'>Could not connect to the database. Please check if you have mySQL Connector installed on the machine - if not, try installing the same.</div>");
	dataPoints = null;
}
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Seguimiento</title>
        
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
    <a class="navbar-brand" href="#">Bienvenido a SAGDEN     ${sessionScope.variableSession}</a>
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
      <script type="text/javascript">
window.onload = function() { 
 
var chart = new CanvasJS.Chart("chartContainer", {
	theme: "light2",
	title: {
		text: "Seguimiento dieta"
	},
	axisX: {
		title: "Fecha"
	},
	axisY: {
		title: "Unidades"
	},
	data: [{
		type: "line", //change type to bar, line, area, pie, etc
                name: "IMC",
                showInLegend: true,
		dataPoints: <%out.print(dataPoints);%>
	},{
                type: "line", //change type to bar, line, area, pie, etc
                name: "Peso",
                showInLegend: true,
		dataPoints: <%out.print(dataPoints1);%>
                }]
});
chart.render();
 
}
</script>
        <div id="chartContainer" style="height: 370px; width: 100%;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
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
    <!-- Carrousel-->
    		<script src="js/jquery.js"></script>
		<script src="../node_modules/qunitjs/qunit/qunit.js"></script>
		<script src="js/owl.carousel.js" data-cover></script>
		<script src="js/owl.support.js" data-cover></script>
		<script src="js/owl.autoplay.js" data-cover></script>
		<script src="js/core.js" defer></script>
		<script src="js/autoplay.js" defer></script>
    </body>
</html>
