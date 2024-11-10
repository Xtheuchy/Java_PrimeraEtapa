
package a_procedimientos;

public class a_ProcedimientoVoid {
    //Variable gobal
    static double tarifa; //Lo puedes Usar en N lugares (Programas)
    public static void main(String[] args) {
        //Procedimientos Void 
        //No retornan valores
        //A. Crear variables Locales (Solo se puede usar en main)
        double horas=48,sueldo=0;
        //b. Calcular el sueldo
        //Lamar al sub programa
        CalcularTarifa(2);
        //Calcular el salario
        sueldo=horas*tarifa;
        //c. Mostrar el resultado
        System.out.println("Total a pagar " + sueldo);
        
    }
    //Aplicacion que calcula la tarifa 
    static void CalcularTarifa(int categoria){
        //Determinar la tarifa 
        switch (categoria) {
            case 1: tarifa=70;
                   break;
            case 2: tarifa=50;
                     break;
            default:
                throw new AssertionError();
        }
    }
    
}
