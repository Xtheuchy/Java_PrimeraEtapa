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
                    int id = Integer.parseInt(request.getParameter("id"));
                    // 2. conexion a BD
                    Connection cn = ConexionBD.retornaConexion();
                    //3. preparar consulta 
                    String sql = "UPDATE cliente SET  nombres=?, dni=? , edad=? where id=?";                   
                    PreparedStatement pst = cn.prepareStatement(sql);
                    //Agregar los 3 parametros de entrada
                    pst.setString(1, request.getParameter("nombres"));
                    pst.setString(2, request.getParameter("dni"));
                    pst.setInt(3, Integer.parseInt(request.getParameter("edad")));
                    pst.setInt(4, id);
                    //4.- Ejecutar a la BD
                    pst.execute();
                    //5 ir a la pagina principal
                    response.sendRedirect("Gestionar_Clientes.jsp");
            } catch (Exception e) {
                out.print(e);
                }
        %>
    </body>
</html>
