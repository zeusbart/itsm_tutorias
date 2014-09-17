<%@page import="java.sql.Connection, java.sql.DriverManager, java.sql.ResultSet, java.sql.Statement, java.util.*;"%>
<%@page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
 

<table width="100%" border="0" cellpadding="0" cellspacing="0" class="formulario">
                    
                <tr>
                    <td>Clave</td>
                    <td>Materia</td>
                    
                    <td>Lunes</td>
                    <td>Martes</td>
                    <td>Docente</td>
                    <td>Asignar</td>
                </tr>
                <%                
                    
                     bd.conectar otra=new bd.conectar();
                    String np="2141";
                    String plan;
                    int carre=Integer.parseInt(request.getParameter("carrera"));
                    String nco=request.getParameter("nc");// = "13E40019"; //request.getParameter("nc");
                    String n, ap, am="ds";
                    Statement st = otra.getConnection().createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
                    st = otra.getConnection().createStatement();
                        ResultSet rs = st.executeQuery("select dalumn.aluctr, dalumn.alunom,dalumn.aluapp,dalumn.aluapm,dlista.matcve,dmater.matnom,dgrupo.gpocve,dgrupo.percve,dgrupo.lunhra, dgrupo.marhra, dgrupo.miehra,dgrupo.juehra, dgrupo.viehra,dperso.pernom, dperso.perape from dalumn, dlista, dmater, dgrupo, dperso where dalumn.aluctr = dlista.aluctr && dlista.matcve = dgrupo.matcve && dlista.gpocve=dgrupo.gpocve && dmater.matcve = dgrupo.matcve && dgrupo.pdocve=dlista.pdocve && dgrupo.percve=dperso.percve && dlista.pdocve='"+np+"' && dgrupo.carcve='"+carre+"' AND dalumn.aluctr =  '"+nco+"'");
                        while (rs.next()) {
                        n=rs.getString("dlista.matcve");
                %>
                    
                    <tr>
                        <td><%out.println("<a href=\"asiste.jsp?clave="+rs.getString("dlista.matcve")+"\">"+rs.getString("dlista.matcve")+"</a><br>");%></td>
                        <td><%out.println(rs.getString("dmater.matnom"));%></td>
                        <td><%out.println(rs.getString("dgrupo.lunhra"));%></td>
                        <td><%out.println(rs.getString("dgrupo.marhra"));%></td>
                        <td><%out.println(rs.getString("dperso.pernom"));%></td>
                        <td><input type="checkbox" name=<%=rs.getString("dlista.matcve")%> value="ON" /></td>
                        <!--<td><input type="checkbox" name=<%=rs.getString("dlista.matcve")%> value="No" /></td>-->
                    </tr>
                    <%
                    //out.println(rs.getString("nom"));
                    }
                    
                    %>
                    </table>
                    
                    
                      