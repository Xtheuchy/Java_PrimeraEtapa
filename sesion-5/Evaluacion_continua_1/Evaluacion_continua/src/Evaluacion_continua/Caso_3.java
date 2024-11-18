
package Evaluacion_continua;

import java.util.Scanner;

public class Caso_3 {
public static void main(String[] args) {
       // Crear un objeto Scanner para capturar la entrada del usuario
        Scanner teclado = new Scanner(System.in);
        // Mostrar mensaje de bienvenida
        MostrarMensaje("Bienvenido al sistema de calculo de pensiones y descuentos!");
        // Solicitar al usuario que ingrese su categoria de pension
        System.out.println("Ingrese su categoria: ");
        String Category = teclado.next();
        // Calcular y mostrar la pensión según la categoría ingresada
        System.out.println("Tu pension es de " + pension(Category));
        // Solicitar al usuario que ingrese su promedio
        System.out.println("Ingresa tu promedio");
        int promedio = teclado.nextInt();
        // Calcular el descuento en la pensión basado en el promedio
        double reduccion =pension(Category) * Descuento(promedio);
        System.out.println("Tu descuento es de "+ reduccion);
        // Calcular la nueva pensión aplicando el descuento
        double PensionActual = pension(Category)-reduccion;
        System.out.println("Tu Nueva pension es de "+ PensionActual);
        // Mostrar mensaje de despedida
        MostrarMensaje("Gracias por usar el sistema de pensiones\nHasta pronto!");
    }
    // Método para mostrar un mensaje enmarcado con una línea decorativa
    static void MostrarMensaje(String msj){
        System.out.println("================================================================");
        System.out.println(msj);
        System.out.println("================================================================");
    }
    // Método para obtener la pensión basada en la categoría del usuario
    static double pension(String Categoria){
        double Pension = 0;
        switch (Categoria) {
            case "AA1":Pension = 750; break;
            case "AA2":Pension = 655; break;
            case "BB1":Pension = 420; break;
            case "CC1":Pension = 350.50; break;
        }
        return Pension;// Retorna el valor de la pensión basado en la categoría
    }
     // Método para calcular el descuento basado en el promedio del usuario
    static double Descuento(int promedio){
        double Descuento;
        if (promedio<11 && promedio>=0)
            Descuento = 0;
        else if (promedio<15 && promedio>=11)
            Descuento = 0.075;
        else if (promedio<18 && promedio>=15)
            Descuento = 0.113;
        else if (promedio<=20 && promedio>=18)
            Descuento = 0.1402;
        else 
            Descuento = 0;
        return Descuento; // Retorna el porcentaje de descuento
    }
}
