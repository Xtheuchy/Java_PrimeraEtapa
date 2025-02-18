
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="utilitarios.ConexionBD" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Editar Producto</h1>
        <%
            try {//Recuperar el código de la URL
                int codigo = Integer.parseInt(request.getParameter("id"));
                out.print(codigo);//Mostrar el código
                //Conexiona  la base de datos
                Connection conexion = ConexionBD.retornaConexion();
                PreparedStatement pst = conexion.prepareStatement("select * from productos where id=?");
                pst.setInt(1, codigo); //Agregar dato en el parametro de entrada
                //Ejecutar y retornar en una tabla temporal
                ResultSet tabla = pst.executeQuery();
                //Leer los datos
                tabla.next();
                out.print(tabla.getString("nombre"));
                
                out.print(tabla.getDouble("precio"));
                
                } catch (Exception e) {//Capturando el error
                    out.print(e.getMessage());
            }
        %>
    </body>
</html>
