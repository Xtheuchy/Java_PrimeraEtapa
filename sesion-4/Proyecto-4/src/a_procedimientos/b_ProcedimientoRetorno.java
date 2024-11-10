
package a_procedimientos;

public class b_ProcedimientoRetorno {
    //Zona principal
    public static void main(String[] args) {
        //Zona de ejecucion
        //Llamar al programa
        System.out.println(chikiplun(5) + 20); //El Void no retorna valores
        //Crear variable
        int X ;
        X = chikiplun(2);
        System.out.println(X);
    }
    static int chikiplun(int num){
        return num*2;
    }
}
