<%@page import="java.sql.Connection, java.sql.DriverManager, java.sql.ResultSet, java.sql.Statement, java.util.*;"%>
<%
    bd.datos d=new bd.datos();
    String idp; 
    idp=request.getParameter("idp"); 
    %>
    <%
    
    bd.conectar otra=new bd.conectar();
    Statement st = otra.getConnection().createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
    st = otra.getConnection().createStatement();
    
            %>
            <form action="../Principal/guardacanaliza.jsp" id="formcanaliza" method="POST" role="form">
<div class="row">
				<div class="col-md-5">
                                    Alumno:
                                           <%
                                    ResultSet r_nom=st.executeQuery("select * from dalumn where ALUCTR ='"+idp+"'");
                                    while(r_nom.next()){
                                      out.print("<input type='text' class='form-control' value='"+r_nom.getString(1)+"' id='ncalum' name='ncalum'>");  
                                    out.print("<input type='text' class='form-control' value='"+r_nom.getString(2)+" "+r_nom.getString(3)+" "+r_nom.getString(4)+"' id='nombre'  disabled=true>");  
                                  } 
                                      Calendar c2 = new GregorianCalendar();
                                           %>
				</div>

				<div class="col-md-2">
                                  Fecha:
                                  <input type="text" class="form-control" value="<%out.print(c2.get(Calendar.YEAR)+"-"+Integer.toString(c2.get(Calendar.MONTH) + 1 )+"-"+c2.get(Calendar.DATE));%>" id="fecha" name="fecha" placeholder="fecha">
						</div>
			
				<div class="col-md-2">
                                    Hora:
                                    <input type="text" class="form-control" value="<%String ampmfin; int ap=c2.get(Calendar.AM_PM); if(ap==1){ampmfin="P.M";}else{ampmfin="A.M";} out.print(c2.get(Calendar.HOUR)+":"+c2.get(Calendar.MINUTE)+" "+ampmfin);%>" id="hora" name="hora" placeholder="hora" >
				</div>
		</div>
		<br>
		<div class="row">
					<div class="col-md-5">
                                            Departamento:
        <select name="area" id="area" class="form-control">
                                <option value="0">.:Seleccione:.</option>
                                <%
                                    
                                     ResultSet area = st.executeQuery("SELECT * FROM ddeptosico");//AND clavep='"+clavep+"' 
              
                                 
                                    while (area.next()) {
                                        out.println("<option value=" + area.getString(1) + ">" +area.getString(1)+".-"+ area.getString(2) + "</option>)");
                                    }
                                %>
                            </select>                                                    
						</div>
					<div class="col-md-4">
                                                          <!--  <input type="text" id="encargado" class="form-control" placeholder="encargado" disabled=true>-->
					</div>
			</div>
			<br>
			<div class="row" >
                            
					<div class="col-md-12">
                                            <textarea name="comentario" id="comentario" rows="10" cols="80"></textarea>
					</div>
			</div>

		
		
	

	

	<button type="submit" class="btn btn-primary">Enviar</button>
</form>