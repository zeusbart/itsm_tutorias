<%-- 
    Document   : guard_resp_estudiop2
    Created on : 29/07/2014, 09:35:46 AM
    Author     : Oscuro
--%>
<%@page import="java.sql.Connection, java.sql.DriverManager, java.sql.ResultSet, java.sql.Statement, java.util.*;"%>
<%@page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%
    bd.datos d=new bd.datos();
    String nc,idp,nivelp,respuesta;
    
   bd.conectar otra=new bd.conectar();
    Statement st = otra.getConnection().createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
    st = otra.getConnection().createStatement();    
ResultSet rs = st.executeQuery("SELECT * FROM cestudio where nivelp='2' order by idp ");

            while (rs.next()) { 
    nc= "10E40001";                //cambiar por el numero de control obtenido de la sesion del ususario 
    
        idp=rs.getString("idp");
        nivelp=rs.getString("nivelp");
    respuesta=request.getParameter(idp);
    
                    d.nuevo("insert into resul_cestudio values ('"+nc+"','"+nivelp+"','"+idp+"','"+respuesta+"')");
                    
                    }
   
%>
