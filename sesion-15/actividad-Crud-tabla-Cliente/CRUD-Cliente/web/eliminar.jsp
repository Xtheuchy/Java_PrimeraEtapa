<%@page import="java.sql.*" %>
<%@page import="Utilitarios.ConexionBD" %>
<%
try {//Probar el código
    //Guardar los datos en la BD
    //a. Conexion a la BD
    Connection cn = ConexionBD.retornaConexion();
    //b. Leer los datos de la web
    String codigo = request.getParameter("id");
    //c. Preparar consulta para Insert
    String sql = "delete from cliente where id=?";
    PreparedStatement pst = cn.prepareStatement(sql);
        pst.setString(1, codigo);
    //d. Ejecutar instruccion
    pst.executeUpdate();
    //e. Redirección a la web principal
    response.sendRedirect("Gestionar_Clientes.jsp");
    pst.close(); cn.close();
    } catch (Exception e) {
    }
%>