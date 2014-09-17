<%@page import="java.sql.Connection, java.sql.DriverManager, java.sql.ResultSet, java.sql.Statement, java.util.*;"%>
<%@page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>


<%
    bd.datos d=new bd.datos();
    String idp,pregunta,r1,r2,r3,r4;
 
    idp=request.getParameter("idp");
    pregunta=request.getParameter("pregunta");
    r1=request.getParameter("r1");
    r2=request.getParameter("r2");
    r3=request.getParameter("r3");
    r4=request.getParameter("r4");
   
   
    %>
    <%
    
    bd.conectar otra=new bd.conectar();
    Statement st = otra.getConnection().createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
    st = otra.getConnection().createStatement();
            %>
         
            <%

                ResultSet rs = st.executeQuery("SELECT * FROM cautoestima where idp='"+idp+"' ");
                
                if(rs.next()){
             %>
                  <div class="alert alert-warning">Este id ya esta ocupado por otra pregunta</div>
    

                  
            <center>
           <table border="2">
           
             <%
                   rs.previous();
                while (rs.next()) {
           
             %>
            <tr>
                           
                <td><B>Id</B></td>
                <td><%out.println(rs.getString("idp")); %></td>           
            </tr>
             <tr>                     
                 <td><b>Pregunta</B></td>
                    <td><%out.println(rs.getString("pregunta")); %></td>
                   

             </tr>
               
                <TR>
                    <td><b>respuesta 1:</B></TD>
                     <td><%out.println(rs.getString("r1")); %></td>
                    
                    
                </TR>
                 <TR>
                     <td><b>respuesta 2:</B></TD>                  
                    <td><%out.println(rs.getString("r2")); %></td>
                    
               </TR>
                <TR>
                    <td><b>respuesta 3:</B></TD>
                     <td><%out.println(rs.getString("r3")); %></td>
                    
                    
                </TR>
                <TR>
                    <td><b>respuesta 4:</B></TD>
                     <td><%out.println(rs.getString("r4")); %></td>
                    
                    
                </TR>
           
                <%
                }
                }else{
                    d.nuevo("insert into cautoestima values ('"+idp+"','"+pregunta+"','"+r1+"','"+r2+"','"+r3+"','"+r4+"')");
      %>
                     <div class="alert alert-success">Pregunta guardada con exito</div>
                 <%   
                }
                 %>
          </table>
          </center>

