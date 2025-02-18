<%@page import="java.sql.*" %>
<%@page import="Utilitarios.ConexionBD" %>

<%
try {//Probar el código
    //Guardar los datos en la BD
    //a. Conexion a la BD
    Connection cn = ConexionBD.retornaConexion();
    //b. Leer los datos de la web
    String nom = request.getParameter("nombres");
    String dni = request.getParameter("dni");
    int edad = Integer.parseInt(request.getParameter("edad")); 
    //c. Preparar consulta para Insert
    String sql = "insert into cliente values(null,?,?,?)";
    PreparedStatement pst = cn.prepareStatement(sql);
        pst.setString(1, nom);
        pst.setString(2, dni);
        pst.setInt(3, edad);
    //d. Ejecutar instruccion
    pst.executeUpdate();
    //e. Redirección a la web principal
    response.sendRedirect("Gestionar_Clientes.jsp");
    pst.close(); cn.close();
    } catch (Exception e) {
    }
%>
