package vista;
import java.sql.*;
import utilitarios.ConexionBD;

public class actualizaProductos {
    
    public static void main(String[] args) {
        try {
            //paso 1. conexion a la base de datos
            Connection cn = ConexionBD.getConexion();
            //Paso2 Preparar SQL insert
            PreparedStatement pst = cn.prepareStatement("update productos set nombre='y' where id=3;");
            //Paso 3 Ejecutar
            pst.executeUpdate();//Actualizar data
            System.out.println("Actualizo el producto con id=·");
        } catch (Exception e) {
            System.err.println("Error al actualizar " + e.getMessage());
        }
    }
    
}
