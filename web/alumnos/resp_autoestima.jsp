<%-- 
    Document   : resp_autoestima
    Created on : 18/07/2014, 09:13:31 AM
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
        
        <center><h2> TEST DE AUTOESTIMA </h2></center>
        <form action="guard_resp_autoestima.jsp" method="POST">
    
            <table width="100%" border="1">
    <%
                    bd.conectar otra=new bd.conectar();
                    Statement st = otra.getConnection().createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
                    st = otra.getConnection().createStatement();
           
                    ResultSet rs = st.executeQuery("SELECT * FROM cautoestima");
                    while (rs.next()) { %> 
                <tr>
                    <td width="5%" rowspan="5"><center><H2><%out.println(rs.getString("idp"));%></H2></center></td>
                    <td colspan="2" bgcolor="#CCCCCC"><strong><%out.println(rs.getString("pregunta")); %></strong></td>
  </tr>
  <tr>
    <td width="86%"><%out.println(rs.getString("r1"));%></td>
    <td width="9%">A(<input type="radio" required name=<%=rs.getString("idp")%> value="A" />)</td>
  </tr>
  <tr>
    <td><%out.println(rs.getString("r2"));%></td>
    <td>B(<input type="radio" required name=<%=rs.getString("idp")%> value="B" />)</td>
  </tr>
  <tr>
    <td><%out.println(rs.getString("r3"));%></td>
    <td>C(<input type="radio" required name=<%=rs.getString("idp")%> value="C" />)</td>
  </tr>
  <tr>
    <td><%out.println(rs.getString("r4"));%></td>
    <td>D(<input type="radio" required name=<%=rs.getString("idp")%> value="D" />)</td>
  </tr>
     <%   
         }
         %>
</table>
<input type="submit" value="Enviar" />
    </form>
    </body>
</html>
