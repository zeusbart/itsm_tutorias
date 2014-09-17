<%-- 
    Document   : guardaevacuestio
    Created on : 18/07/2014, 02:38:58 AM
    Author     : COMER-01
--%>

<%@page import="java.sql.Connection, java.sql.DriverManager, java.sql.ResultSet, java.sql.Statement, java.util.*;"%>
<%@page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
    bd.datos d=new bd.datos();
    String nc,idp,respuesta;
    
   bd.conectar otra=new bd.conectar();
    Statement st = otra.getConnection().createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
    st = otra.getConnection().createStatement();    
ResultSet rs = st.executeQuery("SELECT * FROM cpit");

    while (rs.next()) { 
    nc= "10E40001";  //cambiar por el numero de control obtenido de la sesion del ususario 
        idp=rs.getString("idp");
    respuesta=request.getParameter(idp);
    
                    d.nuevo("insert into resul_cpit values('"+nc+"','"+idp+"','"+respuesta+"')");
                    
                    }

%>