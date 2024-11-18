
package Evaluacion_continua;

import java.util.Scanner;

public class Caso_1 {
    
    public static void main(String[] args) {
        //Programa para calcular el salario neto
        Scanner teclado = new Scanner(System.in);
        //Solicitamos al usuario que ingrese su sueldo basico y el monto total de ventas
        System.out.println("Ingrese su sueldo basico");
        double SueldoBasico = teclado.nextDouble();
        System.out.println("Ingrese el monto total vendido");
        double MontoVendido = teclado.nextDouble();
        //Calculamos la comisión 
        double Comision = MontoVendido *  0.077;
        //Calculamos el sueldo Bruto
        double SueldoBruto = SueldoBasico + Comision;
        //Calculamos el descuento
        double Descuento = SueldoBruto * 0.122;
        //Calculamos el sueldo neto
        double SueldoNeto = SueldoBruto - Descuento;
        //Finalmente mostramos los resultados
        System.out.println("Su comision es de: " + Comision);
        System.out.println("Su sueldo bruto es de: " + SueldoBruto);
        System.out.println("Su descuento es de: " + Descuento);
        System.out.println("Su sueldo Neto es de: "+ SueldoNeto);
         
    }
    
}
