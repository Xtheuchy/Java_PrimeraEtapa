
package Java_evidencia;

import javax.swing.JOptionPane;

public class Condicionales {

    public static void main(String[] args) {
        // Aplicación para Convertir Notas Numéricas en Letras
        int Nota = Integer.parseInt(JOptionPane.showInputDialog("Ingrese su NOTA: "));
        String Calificacion;
        if ( Nota>=0 && Nota<=11){
            Calificacion="C";
        }
        else if(Nota>=12 && Nota<=14){
            Calificacion="B";
        }
        else if(Nota>=15 && Nota<=17){
            Calificacion="A";
        }
        else if(Nota>=18 && Nota<=20){
            Calificacion="AD";
        }
        else{
            System.out.println("Error esta NOTA es invalida");
            return;
        }        
        System.out.println("Tu calificacion literal es " + Calificacion);
    }
    
}
