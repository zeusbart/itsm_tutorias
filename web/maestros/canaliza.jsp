<%@page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<script type="text/javascript" src="../js/jquery.form/jquery.form.js"></script>
<script type="text/javascript" src="../js/jquery.validate/jquery.validate.js"></script>
<script type="text/javascript" src="../js/jquery.tooltip/jquery.tooltip.js"></script>

<form action="canaliza2.jsp" id="formcanaliza" name="formcanaliza" method="POST" role="form">
  
	<legend>Canalizaciónes</legend>

	<div class="form-group">
		<div class="row">
				<div class="col-md-3">
                                    <input type="text" class="form-control" id="idp" name="idp" placeholder="Numero de control">	

				</div>
				<div class="col-md-2">
					<button type="submit" class="btn btn-primary">Buscar</button>
				</div>
			
		</div>
		<br>
		</div>
</form>
<div id="resulcana">  hoola      </div>


<script type="text/javascript">
            $(document).ready(function() {
                $("#formcanaliza").ajaxForm({
                    type: "POST",
                    target: "#resulcana"
                });
            });
        </script>