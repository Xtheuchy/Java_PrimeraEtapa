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
        <%
            try {//Probar codigo
                    //1. recuperar el codigo
                    int idProducto = Integer.parseInt(request.getParameter("idProducto"));
                    // 2. conexion a BD
                    Connection cn = ConexionBD.retornaConexion();
                    //3. preparar consulta 
                    String sql = "UPDATE Productos SET  Nombre=?, Precio=? , imagen=? where idProducto=?";                   
                    PreparedStatement pst = cn.prepareStatement(sql);
                    //Agregar los parametros de entrada
                    pst.setString(1, request.getParameter("Nombre"));
                    pst.setDouble(2, Double.parseDouble(request.getParameter("Precio")));
                    pst.setString(3, request.getParameter("imagen"));
                    pst.setInt(4, idProducto);
                    //4.- Ejecutar a la BD
                    pst.execute();
                    //5 ir a la pagina principal
                    response.sendRedirect("../index.jsp?seccion=Productos.jsp");
            } catch (Exception e) {
                out.print(e);
                }
        %>
    </body>
</html>
