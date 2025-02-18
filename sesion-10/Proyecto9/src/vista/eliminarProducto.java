package vista;
import java.sql.*;
import utilitarios.ConexionBD;

public class eliminarProducto {
    
    public static void main(String[] args) {
        try {
            //paso 1. conexion a la base de datos
            Connection cn = ConexionBD.getConexion();
            //Paso2 Preparar SQL insert
            PreparedStatement pst = cn.prepareStatement("delete from productos where id=3");
            //Paso 3 Ejecutar
            pst.executeUpdate();//Actualizar data
            System.out.println("Elimino el producto con id=3");
        } catch (Exception e) {
            System.err.println("Error al eliminar" + e.getMessage());
        }
    }
    
}
