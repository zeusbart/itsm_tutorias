 <%-- 
    Document   : menuadmin
    Created on : 24/05/2014, 08:44:42 AM
    Author     : COMER-01
--%>

<%@page contentType="text/html;  charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link href="../css/bootstrap.min.css" rel="stylesheet">
        <script type="text/javascript" src="cargamenu.js"></script>
        <style type="text/css">
            body {
            background-image:url("../imagenes/fondo.png");
            background-repeat:repeat;
            }
            </style>
        <title>Tutorias</title>
       
    </head>
    <body>
        <nav class="navbar navbar-inverse" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#"  >Administrador</a>
            </div>
        
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Tutorias<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="#" onclick="cambiarContenido('#contenedor','asigna_tutorias.jsp')">Registrar</a></li>
                            <li><a href="#">Modificar</a></li>
                            <li><a href="#">Consultar</a></li>
                        </ul>
                        <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Encuesta<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="#" onclick="cambiarContenido('#contenedor','cuestionarios.jsp')">Agregar</a></li>
                            <li><a href="#">Consultar</a></li>
                            <li><a href="#" onclick="cambiarContenido('#contenedor','mientras_elimino.jsp')">Eliminar</a></li>
                        </ul>
                    </li>
                   
                </ul>
              
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#">cerrar seción <span class="glyphicon glyphicon-log-out"></span> </a></li>
                    
                </ul>
            </div><!-- /.navbar-collapse -->
        </nav>
        <div class="container" id="contenedor">
    
        </div>
        <script type="text/javascript" src="../js/jquery/jquery.js"></script>
        <script type="text/javascript" src="../js/bootstrap.min.js"></script>
    </body>
</html>

