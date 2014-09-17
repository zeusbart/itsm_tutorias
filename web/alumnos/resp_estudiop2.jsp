<%-- 
    Document   : resp_estudiop2
    Created on : 21/07/2014, 10:44:12 AM
    Author     : COMER-01
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <form action="guard_resp_estudiop2.jsp" method="POST">
        
            <center> <h1> "ENCUESTA SOBRE LAS HABILIDADES DE ESTUDIO" parte 2</h1></center>
         
            <br><center><strong><h2>ENCUESTA PARA ORGANIZACIÓN DEL ESTUDIO.</h2> </strong></center>

           <table border="1" width=100% >
  
                <tr>
                    <th></th>
                    <td>Pregunta</td>
                    <td></td>
                    <td></td>
                   
                   
                </tr>
                <%
                    bd.conectar otra=new bd.conectar();
                    Statement st = otra.getConnection().createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
                    st = otra.getConnection().createStatement();
           
                    ResultSet rs = st.executeQuery("SELECT * FROM cestudio where nivelp='2' order by idp");
                    while (rs.next()) { %> 
                    <tr>
                        <td><center><h3><%out.println(rs.getString("idp"));%></h3></center></td>
                        <td><%out.println(rs.getString("pregunta")); %></td>
        

                        <td><input type="radio" required name=<%=rs.getString("idp")%> value="Si" />Si</td>
                        <td><input type="radio" required name=<%=rs.getString("idp")%> value="No" />No</td>
                    </tr>
                    <%
                   
                    }
                    %>
            </table>
            <input type="submit" value="enviar" />
        </form>
    </body>
    </body>
</html>
