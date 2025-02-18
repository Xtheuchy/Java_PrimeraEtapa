package vista;
import java.sql.*;
import utilitarios.ConexionBD;
public class InsertarProducto {
    public static void main(String[] args) {
        try {
            //paso 1. conexion a la base de datos
            Connection cn = ConexionBD.getConexion();
            //Paso2 Preparar SQL insert
            PreparedStatement pst = cn.prepareStatement("insert into productos values (null,'leche',5,50)");
            //Paso 3 Ejecutar
            pst.executeUpdate();//Actualizar data
            System.out.println("inserto el producto");
        } catch (Exception e) {
            System.err.println("Error");
        }
    }
    
}
