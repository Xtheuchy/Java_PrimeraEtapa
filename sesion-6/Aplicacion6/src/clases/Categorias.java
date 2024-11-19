package clases;

public class Categorias {
    //a. Atributos
    //Encapsulamiento, pilar de POO
    // sirve para proteger datos
    private int id;
    private String nombre;
    private String descripcion;
    //Estan encaptulado :)
    //b. crear constructor
    public Categorias(int cod , String nom){
        this.id=cod;
        this.nombre=nom;
    }
    //c. Getter (obtener) setter (modificar datos)

    public int getId() { //obtener
        return id;
    }

    public void setId(int id) { //modificar
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
}
