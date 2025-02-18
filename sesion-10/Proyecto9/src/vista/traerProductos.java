package vista;
//1.- importar librerias
//2.- importar jdbc
import java.sql.*; //se podra usar los codigos 
                   //connection  Preparedstatement
import utilitarios.ConexionBD;
public class traerProductos {
    public static void main(String[] args) {
        try {
            //A. conexion a la base de datos
            Connection cn = ConexionBD.getConexion();
            //B. preparar consulta
            PreparedStatement pst =cn.prepareStatement("select * from productos");
            //C. ejecutar la consulta
            ResultSet tabla = pst.executeQuery();
            //D. mostrando datos 
            while (tabla.next()) {   
                System.err.println(tabla.getInt("id"));
                System.err.println(tabla.getString("nombre"));
                System.err.println(tabla.getDouble("precio"));
                System.err.println(tabla.getInt("cantidad"));
            }
        } catch (Exception e) {
            System.out.println("Error de consulta " + e.getMessage());
        }
    }
}
