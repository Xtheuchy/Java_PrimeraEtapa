<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="utilitarios.ConexionBD" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>
    <body>
        <h1>Gestión de Productos</h1>
        <p>
            <a href="registrar.jsp" class="btn btn-primary">Agregar Producto</a>
        </p>
        
        <%
          try {//C+odigo a analizar
                 //Mostrar la lista de Productos
                 Connection  conexion = ConexionBD.retornaConexion();
                 PreparedStatement pst = conexion.prepareStatement("select * from productos");
                 ResultSet rs  = pst.executeQuery();
                 //Mostrar los datos en la pagina web
                 out.print("<table >");
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
        
        
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>
