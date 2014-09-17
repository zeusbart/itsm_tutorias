<%@page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<script type="text/javascript" src="../js/jquery.form/jquery.form.js"></script>
<script type="text/javascript" src="../js/jquery.validate/jquery.validate.js"></script>
<script type="text/javascript" src="../js/jquery.tooltip/jquery.tooltip.js"></script>    
<body>
  
         <div class="row">
                <div class="col-md-12">
                    <center><h2>Asignación Tutorias</h2></center>
                </div>
         </div>
                    <div calss=row"">
                        <div class="col-md-12">
                            
                   <form id="alta_empleado" name="alta_empleado" action="ejecuta_asignacion.jsp" method="post">
              
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <th colspan="5" id="title_table">LISTA DE ALUMNOS:::</th>
                                </tr>
                                <tr>
                                    <td colspan="2">Nombre completo:</td>
                              
                                </tr>
                                <tr>
                                    <td>
                                        <input type="text" name="nc" id="nombre_n" placeholder="Número de control">
                                    </td>
                                    <td>
                                        <!-- <input type="text" name="carrera" id="apellidos_n" placeholder="Carrera"> -->
                                        <div class="form-group">
                                            <!-- <label for="inputCARRERA" class="col-sm-2 control-label">CARRERA:</label> -->
                                            <div class="col-sm-6">
                                                <select name="carrera" id="carrera" class="form-control" required="required">
                                                    <option value="1">INGENIERIA EN SISTEMAS COMPUTACIONALES</option>
                                                    <option value="2">INGENIERIA INDUSTRIAL</option>
                                                    <option value="4">INGENIERIA CIVIL</option>
                                                    <option value="5">INGENIERIA MECATRONICA</option>
                                                    <option value="7">INGENIERIA ELECTROMECANICA</option>
                                                    <option value="8">INGENIERIA EN INDUSTRIAS ALIMENTARIAS</option>
                                                    <option value="9">INGENIERIA EN GESTION EMPRESARIAL</option>  
                                                </select>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <input type="submit" value="Buscar" name="Buscar" />
                                    </td>
                                </tr>
                                </table>
                    </form>
                        </div>
                    </div>
    <div id="resultado_tutoalum"></div>
		    <div class="row">
                <div class="col-md-12">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                              <h3 class="panel-title">Selección de Alumnos</h3>
                            </div>
                            <div class="panel-body"><!-- inicio del contenido alumnos -->
                            
                               
                              </div><!--Fin del contenido alumnos  -->
                            </div>
                        </div>
               </div>

  <div class="row">
	                <div class="col-md-12">
	                    <div class="panel panel-primary">
	                        <div class="panel-heading">
	                            <h3 class="panel-title">Selección de Maestros</h3>
	                        </div>
	                         <div class="panel-body"> <!-- inicio contenido maestros -->
	                 
	                        </div><!-- Fin del contenido maestros  -->
	                    </div>
	                </div>
            </div>
       
        


           
            
    </body>
    
    <script type="text/javascript">
            $(document).ready(function() {
                $("#alta_empleado").ajaxForm({
                    type: "POST",
                    target: "#resultado_tutoalum"
                });
            });
        </script>
