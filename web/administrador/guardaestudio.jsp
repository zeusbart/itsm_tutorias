<%@page import="java.sql.Connection, java.sql.DriverManager, java.sql.ResultSet, java.sql.Statement, java.util.*;"%>
<%@page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
    bd.datos d=new bd.datos();
    String nivelp,idp,pregunta;
    nivelp=request.getParameter("nivelp");
    idp=request.getParameter("idp");
    pregunta=request.getParameter("pregunta");
   
   
    %>
    <%
    
    bd.conectar otra=new bd.conectar();
    Statement st = otra.getConnection().createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
    st = otra.getConnection().createStatement();
            %>
         
            <%

                ResultSet rs = st.executeQuery("SELECT * FROM cestudio where idp='"+idp+"' AND nivelp='"+nivelp+"'");//AND clavep='"+clavep+"' 
              
                if(rs.next()){
                %>
                  <div class="alert alert-warning">Este id ya esta ocupado por otra pregunta</div>
                 
                  <P></P>
            <center>
           <table border="2">
             <tr>
                
                <td>Nivel</td>
                <td>Id</td>
                <td>Pregunta</td>
                
                
            </tr>
             <%
                   rs.previous();
                while (rs.next()) {
           
             %>
                <tr>
                    
                    <td><%out.println(rs.getString("nivelp"));%></td>
                    <td><%out.println(rs.getString("idp")); %></td>
                    <td><%out.println(rs.getString("pregunta")); %></td>          

                </tr>
                <%
                }
                }else{
                    d.nuevo("insert into cestudio values ('"+nivelp+"','"+idp+"','"+pregunta+"')");
               %>
                     <div class="alert alert-success">Pregunta guardada con exito</div>
                 <%   
                }
                 %>
          </table>
          </center>

