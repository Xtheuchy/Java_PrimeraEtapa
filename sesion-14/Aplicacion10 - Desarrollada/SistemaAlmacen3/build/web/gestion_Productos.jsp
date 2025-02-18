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
        <h1>Gestion de productos</h1>        
        <p>
            <a href="registrar.jsp">Agregar producto</a>
        </p>
        <%
          try {//C+odigo a analizar
                 //Mostrar la lista de Productos
                 Connection  conexion = ConexionBD.retornaConexion();
                 PreparedStatement pst = conexion.prepareStatement("select * from productos");
                 ResultSet rs  = pst.executeQuery();
                 //Mostrar los datos en la pagina web
                 out.print("<table border=1>");
                 out.print("<tr>");
                 out.print("<th>Código  <th>Producto <th>Precio <th>Editar <th>Eliminar");
                 while(rs.next()){
                    out.print("<tr>");
                    out.print("<td>"+rs.getInt("id"));
                    out.print("<td>"+rs.getString("nombre"));
                    out.print("<td>"+rs.getDouble("precio"));
                    out.print("<td><a href=\"editar.jsp?id="+rs.getInt("id")+"\">Editar");
                    out.print("<td><a href=\"eliminar.jsp?id="+rs.getInt("id")+"\">Eliminar");
                 }
                 out.print("</table>");
              } catch (Exception e) {//Encontrar el error
                  System.out.println(e.getMessage());
            }
        %>
    </body>
</html>
