package utilitarios;
import java.sql.*;
public class ConexionBD {
    public static void main(String[] args) {
        //Variable
        String baseDatos = "BDtottus.accdb";
        String user = ""; //root en mysql
        String pass = "";
        //Usar controlador de errores
        try {//Codigo a analizar
            //a. cargar el jdbc en el proyecto
            class.forName("net.ucanaccess.jdbc.UcanaccessDriver"); 
            //b conexion a la base de datos
            Connection = DriverManager.getConnection("jdbc:ucanaccess://src\\bd//"+baseDatos);
            //c. mensaje
            System.out.println("Conexion exitosa");
            System.out.println("Conexion es exitosa");
        } catch (Exception e) {//entontrar error
            System.out.println("Error de conexion "+e.getMessage());
        } 
        return Connection;
   }
    
}
