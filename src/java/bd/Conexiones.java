package bd;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import java.sql.*;
import java.util.regex.*;
/**
 *
 * @author Administrador
 */
public class Conexiones {
Connection conexion=null;
       Statement s=null;
       ResultSet tabla=null;
    public Conexiones(){
        //conexion=new Connection();
    }
    public void conectar(){
        try{
            Class.forName("org.gjt.mm.mysql.Driver");

           conexion = DriverManager.getConnection ("jdbc:mysql://localhost/sicofin","root", "");
            s = conexion.createStatement();
        } catch (Exception e)
        { e.printStackTrace();}
    }

   // @SuppressWarnings("empty-statement")
    public void desconectar(){
        try {
            conexion.close();s.close();tabla.close();
        } catch(SQLException e) {} catch(Exception ex){};
    }

    public int ejecutar(String sqlcadena) {//ejecuta cualquier comando que le sea enviado, agregar, eliminar, modificar
            int retorno = 0;
            try
            {
                conectar();
                s.executeUpdate(sqlcadena);
                retorno=s.getUpdateCount();
            }
            catch (Exception e)
            {
                e.printStackTrace();
            }
            finally
            {
                desconectar();
            }
            return retorno;
        }

        public ResultSet consulta(String busq)//para hacer busquedas y rotarnar resultados
        {
            try
            {
                conectar();
                tabla=s.executeQuery(busq);
            }
            catch (Exception e)
            {
                e.printStackTrace();
            }
            return tabla;//se retorna la tabla
        }
}
