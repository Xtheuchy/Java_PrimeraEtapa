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
        <h1>Probar la conexion a la BD</h1>
        <%
            //Obteniendo conexion a la base de datos
            //Retoran null (No se conecto)
            Connection conexion = ConexionBD.retornaConexion();
            if (conexion.isClosed())
                out.print("No hay conexion");
                else
                out.print("Conexion exitosa");
        %>
    </body>
</html>
