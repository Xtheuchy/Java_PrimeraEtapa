package utilitarios;
//1. Importar Libreria JDBC
import java.sql.*;

public class ConexionBD {
    //2. Crear una programa que retorne la conexion
    public static Connection retornaConexion(){
        //a. Variables
        Connection cn = null;
        try {//Controlar errores
            //Conectar a Mysql
            Class.forName("com.mysql.cj.jdbc.Driver"); //Reconocer el Driver
            cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/almacen2","root","12345");
            //Conectar en Access
            //Class.forName("net.ucanaccess.jdbc.UcanaccessDriver"); //Reconocer Driver
            //cn = DriverManager.getConnection("jdbc:ucanaccess://c://almacen.accdb");
            
        } catch (Exception e) {//Mostrar el error
            System.out.println("Error de conexio " + e);
        }
        return cn;
    }
}