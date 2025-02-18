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
        <style>
            table,tr,td,th{
                border: 1px solid black;
                text-align: center;
            }
        </style>
        <%
            try {//Codigo a analizar
                    //Mostrar la lista de productos
                    Connection conexion = ConexionBD.retornaConexion();
                    PreparedStatement pst = conexion.prepareStatement("select * from productos");
                    ResultSet rs = pst.executeQuery();
                    //Motrar los datos en la pagina web
                    out.print("<table>");
                    out.print("<tr>");
                    out.print("<th> Código </th> <th> Producto </th> <th> Precio </th> <th> Editar </th> <th> eliminar </th>");
                    while (rs.next()) {                            
                            out.print("<tr>");
                            out.print("<td>" + rs.getInt("id")); 
                            out.print("<td>" +rs.getString("nombre"));
                            out.print("<td>" +rs.getDouble("precio"));
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
