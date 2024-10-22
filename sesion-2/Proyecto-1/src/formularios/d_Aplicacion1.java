
package formularios;

import javax.swing.JOptionPane;

public class d_Aplicacion1 {

    public static void main(String[] args) {
        //App que calcule el IMC
        //1. Variables
       double peso, estatura, imc;
       //2. Entrada de datos
       peso=  Double.parseDouble(JOptionPane.showInputDialog("Peso") ) ;
       estatura=  Double.parseDouble(JOptionPane.showInputDialog("Estatura") ) ;
       //Proceso
       imc = peso / (estatura*estatura);
       //Salida
        System.out.println("Su IMC es " + imc);
    }
    
}
