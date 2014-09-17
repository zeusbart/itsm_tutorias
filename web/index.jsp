<%-- 
    Document   : index
    Created on : 9/08/2014, 12:45:48 PM
    Author     : Oscuro
--%>

<%@page contentType="text/html;  charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link href="css/bootstrap.min.css" rel="stylesheet">
            <link href="css/miestilo.css" rel="stylesheet">
        <script type="text/javascript" src="cargamenu.js"></script>
        <style type="text/css">
            body {
            background-image:url("imagenes/fondo.png");
            background-repeat:repeat;
            }
            </style>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
        <img id="imglogo"src="imagenes/logo.png" height="110" width="1100" class="img-responsive" alt="Image">
        <div id="formulario">
           <form id="login" class="form-signin" role="form">
        <h2 class="form-signin-heading">Inicio de sesi&oacute;n</h2>
        <input id="clave" type="text" class="form-control" placeholder="Clave" required="" autofocus="">
        <input type="password" class="form-control" placeholder="Contrase&ntilde;a" required="">
       
        <button id="boton" class="btn btn-lg btn-primary btn-block" type="submit">Iniciar sesi&oacute;n</button>
      </form>
            </div>
        </div>
    </body>
</html>
