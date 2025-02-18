<%@page import="java.sql.*" %>
<%@page import="Utilitarios.ConexionBD" %>

<%
try {//Probar el código
    //Guardar los datos en la BD
    //a. Conexion a la BD
    Connection cn = ConexionBD.retornaConexion();
    //b. Leer los datos de la web
    String nom = request.getParameter("nombre");
    Double precio = Double.parseDouble(request.getParameter("precio")); 
    String imagen = request.getParameter("imagen");
    //c. Preparar consulta para Insert
    String sql = "insert into productos values(null,?,?,?)";
    PreparedStatement pst = cn.prepareStatement(sql);
        pst.setString(1, nom);
        pst.setDouble(2, precio);
        pst.setString(3, imagen);
    //d. Ejecutar instruccion
    pst.executeUpdate();
    //e. Redirección a la web principal
    response.sendRedirect("../index.jsp?seccion=Productos.jsp");
    pst.close(); cn.close();
    } catch (Exception e) {
    }
%>
