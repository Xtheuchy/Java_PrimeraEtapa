package webs;
//1. importar
import clases.Categorias;
public class indexCategorias {

    public static void main(String[] args) {
       //2.- crear obejto
       Categorias cat1 = new Categorias(50,"hogar");
       Categorias cat2 = new Categorias(60,"tecnologia");
       //Los datos del objeto estan encapsuladas (proteccion)
       //cat1. esta bien que no aparesca
       //como modifico datos?
       //1. Que es un constructor --> Crear e inicializar datos al objeto
       //2. Getter y Setter 
       cat1.setDescripcion("Productos para el hogar");
       //Mostrar datos
        System.out.println(cat1.getDescripcion());
        System.out.println(cat1.getNombre());
        System.out.println(cat1.getId());
        
       
    }
    
}
