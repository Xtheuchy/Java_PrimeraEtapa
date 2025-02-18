package EvaluacionContinua2;

import java.sql.*;
import java.io.*;

public class GestionPostulantes {

    // Método para agregar un postulante
    public static void agregarPostulante(String apellido, String nombre, String genero, String ocupacion, String curriculo, int edad) {
        String sql = "INSERT INTO postulante (apellidos, nombre, genero, ocupacion, curriculo, edad) VALUES (?, ?, ?, ?, ?, ?)";
        try (Connection connection = ConexionBaseDatos.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, apellido);
            statement.setString(2, nombre);
            statement.setString(3, genero);
            statement.setString(4, ocupacion);
            statement.setString(5, curriculo);
            statement.setInt(6, edad);
            statement.executeUpdate();
            System.out.println("Postulante agregado exitosamente.");
        } catch (SQLException e) {
            System.out.println("Error al agregar postulante: " + e.getMessage());
        }
    }

    // Método para obtener todos los postulantes
    public static void obtenerPostulantes() {
        String sql = "SELECT * FROM postulante";
        try (Connection connection = ConexionBaseDatos.getConnection();
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery(sql)) {
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String apellido = resultSet.getString("apellidos");
                String nombre = resultSet.getString("nombre");
                String genero = resultSet.getString("genero");
                String ocupacion = resultSet.getString("ocupacion");
                String curriculo = resultSet.getString("curriculo");
                int edad = resultSet.getInt("edad");
                System.out.println("ID: " + id + ", Nombre: " + nombre + " " + apellido + ", Género: " + genero + ", Ocupación: " + ocupacion + ", Edad: " + edad);
            }
        } catch (SQLException e) {
            System.out.println("Error al obtener postulantes: " + e.getMessage());
        }
    }

    // Método para actualizar un postulante
    public static void actualizarPostulante(int id, String apellido, String nombre, String genero, String ocupacion, String curriculo, int edad) {
        String sql = "UPDATE postulante SET apellidos = ?, nombre = ?, genero = ?, ocupacion = ?, curriculo = ?, edad = ? WHERE id = ?";
        try (Connection connection = ConexionBaseDatos.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, apellido);
            statement.setString(2, nombre);
            statement.setString(3, genero);
            statement.setString(4, ocupacion);
            statement.setString(5, curriculo);
            statement.setInt(6, edad);
            statement.setInt(7, id);
            statement.executeUpdate();
            System.out.println("Postulante actualizado exitosamente.");
        } catch (SQLException e) {
            System.out.println("Error al actualizar postulante: " + e.getMessage());
        }
    }

    // Método para eliminar un postulante
    public static void eliminarPostulante(int id) {
        String sql = "DELETE FROM postulante WHERE id = ?";
        try (Connection connection = ConexionBaseDatos.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, id);
            statement.executeUpdate();
            System.out.println("Postulante eliminado exitosamente.");
        } catch (SQLException e) {
            System.out.println("Error al eliminar postulante: " + e.getMessage());
        }
    }

    // Método para buscar un postulante por ID
    public static void buscarPostulantePorId(int id) {
        String sql = "SELECT * FROM postulante WHERE id = ?";
        try (Connection connection = ConexionBaseDatos.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, id);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                String apellido = resultSet.getString("apellidos");
                String nombre = resultSet.getString("nombre");
                String genero = resultSet.getString("genero");
                String ocupacion = resultSet.getString("ocupacion");
                String curriculo = resultSet.getString("curriculo");
                int edad = resultSet.getInt("edad");
                System.out.println("ID: " + id + ", Nombre: " + nombre + " " + apellido + ", Género: " + genero + ", Ocupación: " + ocupacion + ", Edad: " + edad);
            } else {
                System.out.println("No se encontró un postulante con ID " + id);
            }
        } catch (SQLException e) {
            System.out.println("Error al buscar postulante: " + e.getMessage());
        }
    }

    // Método principal para manejar las consultas por consola usando BufferedReader
    public static void main(String[] args) {
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        String accion;

        try {
            System.out.println("Elige una acción: agregar, mostrar, actualizar, eliminar, buscar");
            accion = reader.readLine().trim();

            switch (accion) {
                case "agregar":
                    System.out.println("Ingrese el apellido del postulante:");
                    String apellido = reader.readLine();

                    System.out.println("Ingrese el nombre del postulante:");
                    String nombre = reader.readLine();

                    System.out.println("Ingrese el género del postulante:");
                    String genero = reader.readLine();

                    System.out.println("Ingrese la ocupación del postulante:");
                    String ocupacion = reader.readLine();

                    System.out.println("Ingrese el currículum del postulante:");
                    String curriculo = reader.readLine();

                    System.out.println("Ingrese la edad del postulante:");
                    int edad = Integer.parseInt(reader.readLine());

                    agregarPostulante(apellido, nombre, genero, ocupacion, curriculo, edad);
                    break;

                case "mostrar":
                    obtenerPostulantes();
                    break;

                case "actualizar":
                    System.out.println("Ingrese el ID del postulante a actualizar:");
                    int id = Integer.parseInt(reader.readLine());

                    System.out.println("Ingrese el nuevo apellido:");
                    apellido = reader.readLine();

                    System.out.println("Ingrese el nuevo nombre:");
                    nombre = reader.readLine();

                    System.out.println("Ingrese el nuevo género:");
                    genero = reader.readLine();

                    System.out.println("Ingrese la nueva ocupación:");
                    ocupacion = reader.readLine();

                    System.out.println("Ingrese el nuevo currículum:");
                    curriculo = reader.readLine();

                    System.out.println("Ingrese la nueva edad:");
                    edad = Integer.parseInt(reader.readLine());

                    actualizarPostulante(id, apellido, nombre, genero, ocupacion, curriculo, edad);
                    break;

                case "eliminar":
                    System.out.println("Ingrese el ID del postulante a eliminar:");
                    id = Integer.parseInt(reader.readLine());
                    eliminarPostulante(id);
                    break;

                case "buscar":
                    System.out.println("Ingrese el ID del postulante a buscar:");
                    id = Integer.parseInt(reader.readLine());
                    buscarPostulantePorId(id);
                    break;

                default:
                    System.out.println("Acción no válida. Usa: agregar, mostrar, actualizar, eliminar o buscar.");
                    break;
            }

        } catch (IOException | NumberFormatException e) {
            System.out.println("Error al leer la entrada o procesar los datos: " + e.getMessage());
        }
    }
}
