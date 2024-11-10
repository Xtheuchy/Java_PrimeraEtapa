
package fundamentosJava;

public class d_procedimientos {

    public static void main(String[] args) {
        // Aplicación esta conformada por pequeñas aplicaciones
        // Zona de ejecución (Inicio)
        System.out.println("Heroe de Dota");
        //Llamar al Programa
        Avanzar(); Avanzar();
        LanzarPoder();
        Avanzar();
    }
    
    //Procedimientos, Tecnica para dividir la app en pequeñas partes
    static void LanzarPoder(){
        System.out.println("Lanzando el Mega poder");
        System.out.println("Lanzamiento multiple");
    }
    static void Avanzar(){
        System.out.println("Avanzando ...");
    }
}
