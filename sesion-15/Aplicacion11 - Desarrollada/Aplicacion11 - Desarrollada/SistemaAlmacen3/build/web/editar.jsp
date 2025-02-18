
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
                out.print("<form action=modificar.jsp method=get>");
                out.print("<input hidden type=text name=id value="+tabla.getString("id")+">");
                out.print("<p>Nombre<input type=text name=producto value="+tabla.getString("nombre")+">");
                out.print("<p>Precio<input type=text name=precio value="+tabla.getDouble("precio")+">");
                out.print("<p> <input type=submit name=actualizar value=Actualizar>");
                out.print("</form>");
                pst.close(); conexion.close();
 
                } catch (Exception e) {//Capturando el error
                    out.print(e.getMessage());
            }
        %>
    </body>
</html>
