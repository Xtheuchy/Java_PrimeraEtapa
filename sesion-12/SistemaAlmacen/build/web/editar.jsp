<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="Utilitarios.ConexionBD" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Editar Producto</h1>
        <%
            try {//Recuperar el codigo de la URL
                    int codigo = Integer.parseInt(request.getParameter("id"));
                    out.print(codigo); //Mostrar el codigo
                    //Conexion a la base de dato
                    Connection conexion = ConexionBD.retornaConexion();
                    PreparedStatement pst = conexion.prepareStatement("select * from productos where id = ?");
                    pst.setInt(1, codigo); //Agregar dato en el parametro de entrada 
                    
                    //Ejecutar y retornar en una tabla temporal
                    ResultSet tabla = pst.executeQuery();
                    //Leer los datos
                    tabla.next();
                    out.print(tabla.getString("nombre"));
                    out.print(tabla.getString("precio"));

                } catch (Exception e) {
                    out.println(e.getMessage());
                }
        %>
    </body>
</html>
