
package fundamentosJava;

import javax.swing.JOptionPane;

public class a_Condicionales {

    public static void main(String[] args) {
         //instrucciones condicionales
         //Instrucción if
         //Aplicación que determine el estado del alumno "Aprobado" o "jalado"
         //1.- Variables
         double nota=19;
         String estado;
         //2.- Proceso
         if (nota>=14)
             estado = "Aprobado";
         else{
             estado= "Jalado";
             System.out.println("Lo siento");
         }
         System.out.println("Su estado es " + estado);
    }
    
}
