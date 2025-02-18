<%@ page import="java.sql.*" %>
<%@page import="Utilitarios.ConexionBD" %>
<%
    try {
        // Capturar los datos del formulario
        String nombreProducto = request.getParameter("producto");
        int cantidad = Integer.parseInt(request.getParameter("cantidad"));
        double precioUnitario = Double.parseDouble(request.getParameter("precio"));
        double total = cantidad * precioUnitario;

        // Conectar a la base de datos
        Connection conexion = ConexionBD.retornaConexion();

        // Buscar el ID del producto según su nombre
        String sqlProducto = "SELECT idProducto FROM productos WHERE Nombre = ?";
        PreparedStatement pstProducto = conexion.prepareStatement(sqlProducto);
        pstProducto.setString(1, nombreProducto);
        ResultSet rsProducto = pstProducto.executeQuery();

        if (rsProducto.next()) {
            int idProducto = rsProducto.getInt("idProducto"); // Obtener el ID del producto

            // Insertar la venta en la tabla venta
            String sqlVenta = "INSERT INTO venta (idProducto, cantidad, precioUnitario, total) VALUES (?, ?, ?, ?)";
            PreparedStatement pstVenta = conexion.prepareStatement(sqlVenta);
            pstVenta.setInt(1, idProducto);
            pstVenta.setInt(2, cantidad);
            pstVenta.setDouble(3, precioUnitario);
            pstVenta.setDouble(4, total);
            pstVenta.executeUpdate();
            out.print("Venta registrada correctamente.");
            pstVenta.close();
        } else {
            out.print("Error: Producto no encontrado.");
        }

        // Cerrar conexiones
        rsProducto.close();
        pstProducto.close();
        conexion.close();
        response.sendRedirect("../index.jsp?seccion=ventas.jsp");
    } catch (Exception e) {
        out.print("Error: " + e.getMessage());
    }
%>
