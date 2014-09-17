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
    pregunta=request.getParameter("pregunta");
    %>
    <%
    bd.conectar otra=new bd.conectar();
    Statement st = otra.getConnection().createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
    st = otra.getConnection().createStatement();
            %>
         
            <%

                ResultSet rs = st.executeQuery("SELECT * FROM cpit where idp='"+idp+"'");//AND clavep='"+clavep+"' 
              
                if(rs.next()){
                %>
                  <div class="alert alert-warning">Este id ya esta ocupado por otra pregunta</div>
    
                 
            <center>
           <table border="2">
             <tr>
                
                
                <td>Id</td>
                <td>Pregunta</td>
                
                
            </tr>
             <%
                   rs.previous();
                while (rs.next()) {
           
             %>
                <tr>
                    
                 
                    <td><%out.println(rs.getString("idp")); %></td>
                    <td><%out.println(rs.getString("pregunta")); %></td>          

                </tr>
                <%
                }
                }else{
                    d.nuevo("insert into cpit values ('"+idp+"','"+pregunta+"')");
      %>
                     <div class="alert alert-success">Pregunta guardada con exito</div>
                 <%   
                }
                 %>
          </table>
          </center>
           
