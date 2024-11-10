
package Java_evidencia;

import javax.swing.JOptionPane;

public class Selectivas {

    public static void main(String[] args) {
        // Calculadora Basica
        int Option =Integer.parseInt(JOptionPane.showInputDialog("Seleccione una operación:\n1. Sumar\n2. Restar\n3. Multiplicar\n4. Dividir"));
        double nro1 = Double.parseDouble(JOptionPane.showInputDialog("Ingrese un numero: "));
        double nro2 = Double.parseDouble(JOptionPane.showInputDialog("Ingrese un numero: "));
        double resultado;
        switch (Option) {
            case 1:
                resultado=nro1+nro2;    
                JOptionPane.showMessageDialog(null, "El resultado de la suma es: " + resultado);
                break;
            case 2:
                resultado=nro1-nro2;
                JOptionPane.showMessageDialog(null, "El resultado de la Resta es: " + resultado);
                break;
            case 3:
                resultado=nro1*nro2;
                JOptionPane.showMessageDialog(null, "El resultado de la Multiplicacion es: " + resultado);
                break;
            case 4:
                resultado=nro1/nro2;
                JOptionPane.showMessageDialog(null, "El resultado de la Division es: " + resultado);
                break;
            default:
                JOptionPane.showMessageDialog(null, " Esta Operación no existe!!");
                
        }
    }
    
}
