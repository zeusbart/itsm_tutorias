<%-- 
    Document   : evacuestio
    Created on : 17/07/2014, 10:48:35 PM
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
        <style>

</style>
    </head>
    <body>
        
        <form action="guard_resp_aprendizaje.jsp" method="POST">
        
            <center> <h2> Encuesta Estilo de Aprendisaje</h2></center>
           <table border="1" width=100% >
  
                <tr>
                    <th></th>
                    <td>Pregunta</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                   
                </tr>
                <%
                    bd.conectar otra=new bd.conectar();
                    Statement st = otra.getConnection().createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
                    st = otra.getConnection().createStatement();
           
                    ResultSet rs = st.executeQuery("SELECT * FROM caprendizaje");
                    while (rs.next()) { %> 
                    <tr>
                        <td><center><h3><%out.println(rs.getString("idp"));%></h3></center></td>
                        <td><%out.println(rs.getString("pregunta")); %></td>
        

                        <td><input type="radio" required name=<%=rs.getString("idp")%> value="1" />Nunca</td>
                        <td><input type="radio" required name=<%=rs.getString("idp")%> value="2" />Raramente</td>
                           <td><input type="radio" required name=<%=rs.getString("idp")%> value="3" />Ocasionalmente</td>
                        <td><input type="radio" required name=<%=rs.getString("idp")%> value="4" />Usualmente</td>
                        <td><input type="radio" required name=<%=rs.getString("idp")%> value="5" />Siempre</td>
                    </tr>
                    <%
                   
                    }
                    %>
            </table>
            <input type="submit" value="enviar" />
        </form>
    </body>
</html>
