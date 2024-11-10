
package fundamentosJava;

import javax.swing.JOptionPane;

public class b_selectivas {

    public static void main(String[] args) {
        // Aplicación que nos diga que dia de semana, ejemplo "Martes"
        // 1. Variables
        int Dia;
        //2.- Entrada
        Dia = 2;
        //3.- procesa 
        switch (Dia) {
            case 1:
                System.out.println("Lunes");
                break;
            case 2:
                System.out.println("Martes");
                break;
            case 3:
                System.out.println("Miercoles");
                break;
            case 4:
                System.out.println("Jueves");
                break;
            default:
                System.out.println("No es un día valido");
        }
    }
    
}
