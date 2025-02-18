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
        <%
            try {//Probar codigo
                    //1. recuperar el codigo
                    int id = Integer.parseInt(request.getParameter("id"));
                    // 2. conexion a BD
                    Connection cn = ConexionBD.retornaConexion();
                    //3. preparar consulta 
                    String sql = "UPDATE productos SET  nombre=?, precio=? where id=?";                   
                    PreparedStatement pst = cn.prepareStatement(sql);
                    //Agregar los 3 parametros de entrada
                    pst.setString(1, request.getParameter("producto"));
                    pst.setDouble(2, Double.parseDouble(request.getParameter("precio")));
                    pst.setInt(3, id);
                    //4.- Ejecutar a la BD
                    pst.execute();
                    //5 ir a la pagina principal
                    response.sendRedirect("gestion_Productos.jsp");
            } catch (Exception e) {
                out.print(e);
                }
        %>
    </body>
</html>
