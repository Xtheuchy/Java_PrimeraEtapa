package webs;
//1. importar la clase
import clases.Productos;

public class indexProductos {

    public static void main(String[] args) {
        // crear objetos
        Productos objeto1 = new Productos();
        Productos tablet = new Productos();
        // se crean la cantidad deseada
        //2. estableciendo valores
        objeto1.nombre="computadora";
        objeto1.precio=5600;
        tablet.nombre="tableta";
        tablet.precio=50;
        //3. mostrar datos
        System.out.println(tablet.nombre);
    }
    
}
