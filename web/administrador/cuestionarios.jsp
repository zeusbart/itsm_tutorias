<%@page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<script type="text/javascript" src="../js/jquery.form/jquery.form.js"></script>
<script type="text/javascript" src="../js/jquery.validate/jquery.validate.js"></script>
<script type="text/javascript" src="../js/jquery.tooltip/jquery.tooltip.js"></script>

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
				<form action="guardaaprendizaje.jsp" method="POST" id="formaprendizaje" name="formaprendizaje" role="form">
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
				<div id="resultadoaprendizaje"></div>
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
                      <form action="guardapit.jsp" method="POST" id="formpit" name="formpit" role="form">
						<legend>Guardar Pregunta</legend>
					
						  			<br>
								<div class="row">
										<div class="col-md-1">
											<h4>Id:</h4>
										</div>
										<div class="col-md-2">
											<input type="text" name="idp" id="idp" class="form-control" value="" title="">
										</div>
								</div>
								<div class="row">
										<div class="col-md-1">
												<h4>Pregunta:</h4>
										</div>
										<div class="col-md-8">
												<input type="text" name="pregunta" id="pregunta" class="form-control" value="" title="">
										</div>
										<div class="col-md-3">
												<button type="submit" class="btn btn-primary">Guardar</button>
												<button type="reset" class="btn btn-warning">Limpiar</button>
										</div>
								</div>	
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
