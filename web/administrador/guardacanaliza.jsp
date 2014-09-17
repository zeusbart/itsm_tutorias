<%-- 
    Document   : guardacanaliza
    Created on : 17/07/2014, 03:21:59 PM
    Author     : COMER-01
--%>


<%@page import="java.sql.Connection, java.sql.DriverManager, java.sql.ResultSet, java.sql.Statement, java.util.*;"%>
<%@page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
 bd.datos d=new bd.datos();
   String ncalum=request.getParameter("ncalum");
   String fecha=request.getParameter("fecha");
   String hora=request.getParameter("hora");
   String clavedepto=request.getParameter("area");
   String comentario=request.getParameter("comentario");
    %>
    <%
     d.nuevo("insert into canalizasicotu values ('"+ncalum+"','"+fecha+"','"+hora+"','"+clavedepto+"','"+comentario+"')");
     %>
<div class="alert alert-success">Alumno Canalizado con exito</div>