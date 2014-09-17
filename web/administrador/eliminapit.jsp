<%-- 
    Document   : guardapit
    Created on : 7/06/2014, 12:12:45 AM
    Author     : COMER-01
--%>

<%@page import="java.sql.Connection, java.sql.DriverManager, java.sql.ResultSet, java.sql.Statement, java.util.*;"%>
<%@page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
 
        
<%
    bd.datos d=new bd.datos();
    String idp,pregunta;
 
    idp=request.getParameter("idp");
  
    %>
    <%
    bd.conectar otra=new bd.conectar();
    Statement st = otra.getConnection().createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
    st = otra.getConnection().createStatement();
            %>
         
            <%

               
                    d.nuevo("delete FROM cpit where idp='"+idp+"'");
      %>

      <div class="alert alert-success">Pregunta eliminada con éxito <a href="#" class="alert-link" onclick="cambiarContenido('#contenedor','mientras_elimino.jsp')" >Click aqui para actualizar los datos</a></div>
                   
          </center>
           
