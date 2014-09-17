<%-- 
    Document   : actualiza1
    Created on : 9/08/2014, 11:35:06 PM
    Author     : Oscuro
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<script type="text/javascript" src="../js/jquery.form/jquery.form.js"></script>
<script type="text/javascript" src="../js/jquery.validate/jquery.validate.js"></script>
<script type="text/javascript" src="../js/jquery.tooltip/jquery.tooltip.js"></script>
 <form action="#" method="POST">
        
            <center> <h1> "ENCUESTA SOBRE LAS HABILIDADES DE ESTUDIO" parte 1</h1></center>
         
            <br><center><strong><h2>ENCUESTA PARA ORGANIZACIÓN DEL ESTUDIO.</h2> </strong></center>

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
           
                    ResultSet rs = st.executeQuery("SELECT * FROM cestudio where nivelp='1' order by idp");
                    while (rs.next()) { %> 
                    <tr>
                        <td><center><h3><%out.println(rs.getString("idp"));%></h3></center></td>
                        <td><%out.println(rs.getString("pregunta")); %></td>
        

                        <td>   <button type="submit" name=<%=rs.getString("idp")%> class="btn btn-danger">
     <span class="glyphicon glyphicon-remove"></span>Eliminar
    </button>  
                       
                        </td>
                    </tr>
                    <%
                   
                    }
                    %>
            </table>
          
        </form>