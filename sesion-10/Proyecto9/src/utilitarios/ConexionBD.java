package utilitarios;
//Importar las Librerias de JDBC
//para usar las clases para conección a Base de datos
import java.sql.*;
public class ConexionBD {
    public static Connection getConexion(){
        //0. Variable para retornar la conexion
        Connection conexion=null;
        //1. Variables para las credenciales
        String bd="BDTottus.accdb";
        String user="";//root en mysql
        String pass="";//123  en mysql
        //2. Usar el controlador de errores
        try {//Código a probar o encontrar algún error
            //a. Cargar el Driver JDBC para Access
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            //En caso quiere conectar la App a Mysql utilizar:
            //Class.forName("com.mysql.jdbc.Driver");
            //b. conexion a la BD de Access
            conexion = DriverManager.getConnection("jdbc:ucanaccess://src\\bd//"+bd);
            //En caso quiere conectar a Mysql utilizar:
            //Connection  cn2 = DriverManager.getConnection("jdbc:mysql://localhost/Bdtottus",user,pass);
            //c. Mensaje de confirmación de conexion
            System.out.println("Conexion es exitosa");
        } catch (Exception e) {//En caso exista un error mostrar el error
            System.out.println("Error de conexion "+ e.getMessage());
        }//Retornando la conexion
        return conexion;
    }
}

