<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<script type="text/javascript" src="../js/jquery.form/jquery.form.js"></script>
<script type="text/javascript" src="../js/jquery.validate/jquery.validate.js"></script>
<script type="text/javascript" src="../js/jquery.tooltip/jquery.tooltip.js"></script>

<center> <h2> -Eliminar Preguntas-</h2></center>

<ul class="nav nav-tabs navbar-inverse" id="myTab">
		  <li class="active"><a href="#estudio" data-toggle="tab">HABILIDADES DE ESTUDIO</a></li>
		  <li><a href="#aprendizaje" data-toggle="tab">ESTILOS DE APRENDIZAJE</a></li>
		  <li><a href="#autoestima" data-toggle="tab">TEST DE AUTOESTIMA</a></li>
		  <li><a href="#asertividad" data-toggle="tab">TEST DE ASERTIVIDAD</a></li>
		  <li><a href="#pit" data-toggle="tab">EVALUACIÓN DEL PIT</a></li>
</ul>
<div class="tab-content">
		  <div class="tab-pane active" id="estudio">
		  		<form action="guardaestudio.jsp" method="POST" id="formestudio" name="formestudio" role="form">
				<legend>Guardar Pregunta</legend>
						<div class="row">
								<div class="col-md-1">
									<h4>Nivel:</h4>
								</div>
								<div class="col-md-5">
									<select name="nivelp" id="nivelp" class="form-control" required="required">
										<option value="1">ENCUESTA PARA ORGANIZACIÓN DEL ESTUDIO</option>
										<option value="2">ENCUESTA SOBRE TÉCNICAS DE ESTUDIO</option>
										<option value="3">ENCUESTA SOBRE MOTIVACIÓN PARA EL ESTUDIO </option>
									</select>
								</div>
								<div class="col-md-1">
									<h4>Id:</h4>
								</div>
								<div class="col-md-2">
									<input type="text" name="idp" id="idp" class="form-control" value="" required="required" title="">
								</div>
						</div>
						<div class="row">
							<div class="col-md-1">
									<h4>Pregunta:</h4>
							</div>
							<div class="col-md-8">
									<input type="text" name="pregunta" id="pregunta" class="form-control" value="" required="required" title="">
							</div>
							<div class="col-md-3">
									<button type="submit" class="btn btn-primary">Guardar</button>
									<button type="reset" class="btn btn-warning">Limpiar</button>
							</div>
						</div>	
				</form>
				<div id="resultadoestudio"></div>
		  </div>
		  <div class="tab-pane" id="aprendizaje">
				 <form action="eliminaaprendizaje.jsp" method="POST" id="formaprendizaje" name="formaprendizaje" role="form">
        
            <center> <h2> Encuesta Estilo de Aprendisaje</h2></center>
           <table border="1" width=100% >
  
                <tr>
                    <th></th>
                    <td>Pregunta</td>
                    <td></td>
                  
                   
                </tr>
                <%
                    bd.conectar otra=new bd.conectar();
                    Statement st = otra.getConnection().createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
                    st = otra.getConnection().createStatement();
           
                    ResultSet rs = st.executeQuery("SELECT * FROM caprendizaje");
                    while (rs.next()) { %> 
                    <tr>
                        <td><center><h3><%out.println(rs.getString("idp"));%></h3></center></td>
                        <td><%out.println(rs.getString("pregunta")); %></td>
        
						<td><button type="submit" name="idp" value=<%=rs.getString("idp")%> class="btn btn-danger">Eliminar</button></td>
                       
                    </tr>
                    <%
                   
                    }
                    %>
            </table>
          
        </form>
				<div id="resultadoaprendizaje"><a name="abajo"></a></div>
		  </div>
		  <div class="tab-pane" id="autoestima">
		  		<form action="guardaautoestima.jsp" method="POST" id="formautoestima" name="formautoestima" role="form">
					<legend>Guardar Pregunta</legend>
		  
				  			<div class="row">
				  				<div class="col-md-1">
									<h4>Id:</h4>
								</div>
								<div class="col-md-2">
									<input type="text" name="idp" id="idp" class="form-control" value="" required="required" title="">
								</div>
				  			</div>
				  			<div class="row">
				  				<div class="col-md-2">
									<h4><b>Pregunta:</b></h4>
								</div>
								<div class="col-md-9">
									<input type="text" name="pregunta" id="pregunta" class="form-control" value="" required="required" title="">
								</div>
				  			</div>
				  			<div class="row">
				  				<div class="col-md-2">
									<h4>Respuesta1:</h4>
								</div>
								<div class="col-md-9">
									<input type="text" name="r1" id="r1" class="form-control" value="" required="required" title="">
								</div>
				  			</div>
				  			<div class="row">
				  				<div class="col-md-2">
									<h4>Respuesta2:</h4>
								</div>
								<div class="col-md-9">
									<input type="text" name="r2" id="r2" class="form-control" value="" required="required" title="">
								</div>
				  			</div>
				  			<div class="row">
				  				<div class="col-md-2">
									<h4>Respuesta3:</h4>
								</div>
								<div class="col-md-9">
									<input type="text" name="r3" id="r3" class="form-control" value="" required="required" title="">
								</div>
				  			</div>
				  			<div class="row">
				  				<div class="col-md-2">
									<h4>Respuesta4:</h4>
								</div>
								<div class="col-md-9">
									<input type="text" name="r4" id="r4" class="form-control" value="" required="required" title="">
								</div>

				  			</div>

				  			<div class="row">
				  				<div class="col-md-2">
									
								</div>
								<div class="col-md-9">
									<button type="submit" class="btn btn-primary">Guardar</button>
									<button type="reset" class="btn btn-warning">Limpiar</button>
								</div>
				  			</div>
				 </form>
				 <div id="resultadoautoestima"> </div>
		  </div>
		  <div class="tab-pane" id="asertividad">
				    <form action="guardaasertividad.jsp" method="POST" id="formasertividad" name="formasertividad" role="form">
				    <legend>Guardar Pregunta</legend>
							<div class="row">
									<div class="col-md-1">
										<h4>Id:</h4>
									</div>
									<div class="col-md-2">
										<input type="text" name="idp" id="idp" class="form-control" value="" required="required" title="">
									</div>
							</div>
							<div class="row">
								<div class="col-md-1">
										<h4>Pregunta:</h4>
								</div>
								<div class="col-md-8">
										<input type="text" name="pregunta" id="pregunta" class="form-control" value="" required="required" title="">
								</div>
								<div class="col-md-3">
										<button type="submit" class="btn btn-primary">Guardar</button>
										<button type="reset" class="btn btn-warning">Limpiar</button>
								</div>
							</div>	

					</form>
					<div id="resultadoasertividad">	</div>
		  </div>
		  <div class="tab-pane" id="pit">
                        

                          <form action="eliminapit.jsp" method="POST" id="formpit" name="formpit" role="form">
        
            <center> <h2>EVALUACION DE LA ACCION TUTORIAL</h2></center>
      

           <table border="1" width=100% >
  
                <tr>
                    <th></th>
                    <td>Pregunta</td>
                    <td></td>
                   
                   
                </tr>
                <%
                    bd.conectar otra2=new bd.conectar();
                    Statement st2 = otra2.getConnection().createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
                    st2 = otra2.getConnection().createStatement();
           
                    ResultSet rs2 = st2.executeQuery("SELECT * FROM cpit");
                    while (rs2.next()) { %> 
                    <tr>
                        <td><center><h3><%out.println(rs2.getString("idp"));%></h3></center></td>
                        <td><%out.println(rs2.getString("pregunta")); %></td>
        

                        <td><button type="submit" name="idp" value=<%=rs2.getString("idp")%> class="btn btn-danger">Eliminar</button></td>
                      
                    </tr>
                    <%
                   
                    }
                    %>
            </table>
           
        </form>
						<div id="resultadopit">   </div>
		  </div>
</div>
					
						<!-- validaciones de los formularios -->

 <script type="text/javascript">
 		$("#formpit").validate({
 				rules: {
 					idp: {required: true},
 					pregunta: {required: true}
 				},
 				messages: {
 					//por si quiero algun mensaje personalizado 
 					//ejemplo:
 					idp: {
 					required: "Escriba algo porfavor"
 				} 
 				},
 				tooltip_options: {
 					idp : {trigger:'focus'},
 					pregunta : {trigger:'focus'}
 				},
 		});
 </script>

						<!-- funciones de los formulario  -->

<script type="text/javascript">
            $(document).ready(function() {
                $("#formasertividad").ajaxForm({
                    type: "POST",
                    target: "#resultadoasertividad"
                });
            });
        </script>
   
<script type="text/javascript">
            $(document).ready(function() {
                $("#formaprendizaje").ajaxForm({
                    type: "POST",
                    target: "#resultadoaprendizaje"
                });
            });
        </script>

   <script type="text/javascript">
            $(document).ready(function() {
                $("#formautoestima").ajaxForm({
                    type: "POST",
                    target: "#resultadoautoestima"
                });
            });
        </script>

        <script type="text/javascript">
            $(document).ready(function() {
                $("#formestudio").ajaxForm({
                    type: "POST",
                    target: "#resultadoestudio"
                });
            });
        </script> 

        <script type="text/javascript">
            $(document).ready(function() {
                $("#formpit").ajaxForm({
                    type: "POST",
                    target: "#resultadopit"
                });
            });
        </script> 


