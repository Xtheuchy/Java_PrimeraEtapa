
package Java_evidencia;


public class Procedimientos {
    //Rutina diaria de una persona
    public static void main(String[] args) {
      //Programa principal
        System.out.println("=== Iniciando rutina ===");
        Despertar();
        prepararDesayuno();
        aseoPersonal();
        Caminar();
        Trabajando();
        Caminar();
        horaAlmuerzo();
        Caminar();
        Trabajando();
        Caminar();
        ejercicio();
        prepararCena();
        Durmiendo();

    }
    static void Despertar(){
        System.out.println("Despertando..");
    }
    static void prepararDesayuno(){
        System.out.println("preparando el desayuno");
    }
    static void aseoPersonal(){
        System.out.println("Aseo Personal:");
        System.out.println("1. Cepillo de dientes");
        System.out.println("2. Jabón corporal");
        System.out.println("3. Desodorante");
    }
    static void Caminar(){
        System.out.println("Caminando...");    
    }
    static void Trabajando(){
        System.out.println("trabajando");
    }
    static void horaAlmuerzo(){
        System.out.println("Almorzando");
    }
    static void ejercicio(){
        System.out.println("Haciendo Ejercicio");
    }
    static void prepararCena(){
        System.out.println("preparando la cena");
    }
    static void Durmiendo(){
        System.out.println("Durmiendo");
    }
}
