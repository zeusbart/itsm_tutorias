/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package bd;
import java.sql.*;
public class datos {
    String nc, fecha,hora, asis, cla;
    String bd="dbitsm";
    Connection conexion=null;
    Statement s=null;
    ResultSet tabla=null;
    String usuario="root";
    String pass="1";
    

    @SuppressWarnings("empty-statement")
    int nu=0;
    public void nuevo(String cadenasql){
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection ("jdbc:mysql://localhost/"+bd,usuario,pass);
            s = conexion.createStatement();
        } catch (Exception e)
        { e.printStackTrace();}
        String q=cadenasql;
        try {
            s.executeUpdate(q);
           //----------------------------------
            nu=s.getUpdateCount();
        } catch(SQLException e) {
      e.printStackTrace();
        };
        try{
            s.close();
            conexion.close();

        } catch(SQLException e) {
        e.printStackTrace();
        };
       
     }

public void buscar(String cadena){
        String no=cadena;
        try{
            Class.forName("com.mysql.jdbc.Driver");

            conexion = DriverManager.getConnection ("jdbc:mysql://localhost/"+bd,usuario, pass);
            s = conexion.createStatement();
        } catch (Exception e)
        { e.printStackTrace();}
        String q=cadena;
        try {
            tabla = s.executeQuery(q);
            tabla.next();
            nc=""; fecha=""; hora=""; asis=""; cla="";
            //no=tabla.getString(1)+" Nombre: "+tabla.getString(2)+" Creditos: "+tabla.getString(3);
            nc=tabla.getString(1);
            fecha=tabla.getString(2);
            hora=tabla.getString(3);
            asis=tabla.getString(4);
            cla=tabla.getString(5);
            tabla.close();conexion.close();s.close();

        } catch(SQLException e) {}
          catch(Exception ex){};
           if((no).equals(cadena))no="No está la tabla ";
        //no;la
    }
    public String NC(){
        return nc;
    }
    public String Fecha(){
        return fecha;
    }
    public String Hora(){
        return hora;
    }
    public String Asistencia(){
        return asis;
    }
    public String Clave(){
        return cla;
    }
  
}