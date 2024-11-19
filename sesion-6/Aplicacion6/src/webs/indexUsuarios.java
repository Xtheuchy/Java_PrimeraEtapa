package webs;
import clases.Usuario;
public class indexUsuarios {

    public static void main(String[] args) {
       //crear objetos
       //objeto o clase
       Usuario user1 = new Usuario();
       Usuario user2 = new Usuario();
       //b. Asignar datos al objeto
       user1.dni="44";
       user1.nombre="Carlos";
       //c. mostrar al usuario
        System.out.println(user1.dni + " " + user1.nombre);
    }
    
}
