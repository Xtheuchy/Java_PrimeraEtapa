package vista;
//1. Importar la clase "ConexionBD"
import utilitarios.ConexionBD;

public class PruebaConexion {
    public static void main(String[] args) {
        var conexion = ConexionBD.getConexion();
        if (conexion!=null) //Evaluando si la variable teine valor
            System.out.println("Conexión exitosa");
        else
            System.out.print("Error al conectarse");        
    }    
}

