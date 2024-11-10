
package a_procedimientos;
//1. Importar a la clase Scanner
import java.util.Scanner;
//Es para ingresar datos por el teclado

public class c_Ventas {

    public static void main(String[] args) {
        //Crear un Objeto a partir de la clase Scanner
        Scanner teclado=new Scanner(System.in);
        //a. Crear variables
        int cantidad,codigo;
        //b. Leer datos
        System.out.println("Ingrese el codigo del Producto");
        codigo = teclado.nextInt();
        System.out.println("Ingrese la cantidad");
        cantidad = teclado.nextInt();
        //c. Hallar el monto
        System.out.println(CalcularPrecio(codigo)*cantidad);
        System.out.println(DeterminarRegalo(cantidad));
        
       
    }
    //1.- Crear un programa calcular precio
    static double CalcularPrecio(int codigo){
        double precio=0; //Variable local
        switch (codigo) {
            case 1: precio=15; break;
            case 2: precio=17.5; break;
            case 3: precio=20; break;
            
        }
        return precio;
    }
    
    //Programa que determina el regalo
    static String DeterminarRegalo(int cantidad){
        if (cantidad<=25)
            return "Lapicero";
        else 
            return "Microfono";
    }
    
}
