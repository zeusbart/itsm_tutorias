<%-- 
    Document   : resp_pit
    Created on : 18/07/2014, 01:34:10 PM
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
        <form action="guard_resp_pit.jsp" method="POST">
        
            <center> <h2> EVALUACION DE LA ACCION TUTORIAL</h2></center>
            La evaluación que se presentan a continuación tiene la finalidad de evaluar el Programa Institucional de Tutoría como la percepción que tienen los tutorados del programa. 
<br>I.-   Para evaluar el desempeño en la Tutoría.
<br>II.-  Para evaluar las dificultades de la Acción Tutorial.  
<br><strong>Marca con una cruz la opción con la que más te identifiques.</strong>

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
           
                    ResultSet rs = st.executeQuery("SELECT * FROM cpit");
                    while (rs.next()) { %> 
                    <tr>
                        <td><center><h3><%out.println(rs.getString("idp"));%></h3></center></td>
                        <td><%out.println(rs.getString("pregunta")); %></td>
        

                        <td><input type="radio" required name=<%=rs.getString("idp")%> value="1" />Siempre</td>
                        <td><input type="radio" required name=<%=rs.getString("idp")%> value="2" />Casi Siempre</td>
                        <td><input type="radio" required name=<%=rs.getString("idp")%> value="3" />A veces</td>
                        <td><input type="radio" required name=<%=rs.getString("idp")%> value="4" />Casi nunca</td>
                        <td><input type="radio" required name=<%=rs.getString("idp")%> value="5" />Nunca</td>
                    </tr>
                    <%
                   
                    }
                    %>
            </table>
            <input type="submit" value="enviar" />
        </form>
    </body>
</html>
