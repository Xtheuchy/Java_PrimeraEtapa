package Utilitarios;
import java.sql.*;

public class ConexionBD {
    //2. creaun un prgrama que retorne la coonexion
    
    public static Connection retornaConexion(){
        //a. Variables 
        Connection cn = null;
        try {//controlar un error
            //Conectar a Mysql
            Class.forName("com.mysql.cj.jdbc.Driver");
            cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/almacen","root","12345");
        } catch (Exception e) {//Mostrar el Error
            System.out.println("Error de conexion" + e);
        }
        return cn;
    }
}
