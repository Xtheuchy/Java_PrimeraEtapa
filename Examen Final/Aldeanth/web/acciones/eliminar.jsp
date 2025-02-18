<%@page import="java.sql.*" %>
<%@page import="Utilitarios.ConexionBD" %>
<%
try {//Probar el código
    //Guardar los datos en la BD
    //a. Conexion a la BD
    Connection cn = ConexionBD.retornaConexion();
    //b. Leer los datos de la web
    int codigo = Integer.parseInt(request.getParameter("idProducto"));
    //c. Preparar consulta para Insert
    String sql = "delete from productos where idProducto=?";
    PreparedStatement pst = cn.prepareStatement(sql);
        pst.setInt(1, codigo);
    //d. Ejecutar instruccion
    pst.executeUpdate();
    pst.close(); cn.close();
    //e. Redirección a la web principal
    response.sendRedirect("../index.jsp?seccion=Productos.jsp");
    } catch (Exception e) {
    }
%>