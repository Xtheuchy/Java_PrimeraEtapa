
package Evaluacion_continua;
import java.util.Scanner;
public class Caso_2 {

    public static void main(String[] args) {
        //Mensaje de bienvenida
        System.out.println("==================");
        System.out.println("Libreria Pelicano ");
        System.out.println("==================");
        //Configuracion para capturar la entrada de datos
        Scanner teclado = new Scanner(System.in);
        //Solicitar eleccion de libro al usuario
        System.out.println("""
                           Que libro desea adquirir?
                           El ser excelente [1]
                           El secreto de las 7 semillas [2]
                           El espejo del lider [3]
                           Ingrese el numero correspondiente a su eleccion!""");
        int Eleccion = teclado.nextInt();
        //Solicitar metodo de pago
        System.out.println("""
                           Donde desea realizar el pago?
                           Efectuar pago en sede [1]
                           Efectuar pago en domicilio [2]""");
        int EfectuarPago = teclado.nextInt();
        //Solicitar cantidad de libros al usuario
        System.out.println("Ingrese la cantidad de libros que desea adquirir");
        int Cantidad = teclado.nextInt();
        
        //Programa principal
        //Si el pago se raliza en sede
        if (EfectuarPago == 1){
            System.out.println("El precio Unitario del libro es de: " + Precio(Eleccion));
            System.out.println("El total a pagar es de : " + (Precio(Eleccion) * Cantidad));
        }
        //Si el pago se realiza a domicilio (Incluye un incremento del 3%)
        else if (EfectuarPago == 2){
            double Incremento = Precio(Eleccion) * 0.03;
            double PrecioUnitario = Precio(Eleccion) + Incremento;
            System.out.println("El precio unitario por libro es de: " + PrecioUnitario);
            System.out.println("El total a pagar es de: "+ (PrecioUnitario*Cantidad));
        }
            
    }
    //Metodo para obtener el precio del libro según la elección
    static int Precio( int opcion){
        int costo = 0;
        switch (opcion) {
            case 1: costo = 10; break;
            case 2: costo = 9; break;
            case 3: costo = 15 ; break;
        }
        return costo;
    }
    
}
