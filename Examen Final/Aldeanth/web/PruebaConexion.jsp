<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="Utilitarios.ConexionBD" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Prueba Conexion</title>
    </head>
    <body>
        <h1>Probar la conexion a la BD</h1>
        <%  //Obteniendo la conexion a la base de datos 
            // Retorna null (No se conecto)
            Connection conexion = ConexionBD.retornaConexion();
            if (conexion.isClosed())
                out.print("No hay conexion");
                else
                out.print("Conexión Satisfactoria");            
        %>
    </body>
</html>
