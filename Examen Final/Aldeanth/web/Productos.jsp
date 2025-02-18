<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="Utilitarios.ConexionBD"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/style.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    </head>
    <body>
         <main class="contenedor-producto">
            <h1 class="titulo-productos">
                <i class="fa-solid fa-box"></i> Productos Disponibles
            </h1>
             <div class="add">
                <button onclick="document.getElementById('popup').showModal()"><i class="fa-solid fa-plus"></i> AGREGAR PRODUCTO</button>
            </div>
            <dialog id="popup" class="dialog-producto">
                <form class="agregar-producto" action="acciones/registrar.jsp">
                    <h1>Registro de Productos</h1>
                    <label>Nombre Del Producto : </label>
                    <input type="text" name="nombre" required placeholder="Nombre del producto"><br>
                    <label>Precio : </label>
                    <input type="text" name="precio" required placeholder="S/. 00"><br>
                    <label>Imagen : </label>
                    <input type="text" name="imagen" required placeholder="http://www.example.com/imagen.jpg"><br>
                    <button><i class="fa-solid fa-plus"></i> Registrar</button>
                </form>
                <button class="close" onclick="document.getElementById('popup').close()"><i class="fa-solid fa-xmark"></i> Cerrar</button>
            </dialog>
            <article class="contenedor-cuadro-producto">
                    <%
                        try {//Codigo a analizar
                               //Mostrar la lista de Productos
                               Connection  conexion = ConexionBD.retornaConexion();
                               PreparedStatement pst = conexion.prepareStatement("select * from productos");
                               ResultSet rs  = pst.executeQuery();
                               //Mostrar los datos en la pagina web
                               while(rs.next()){
                                  out.print("<section class=\"card-producto\">");
                                  out.print("<picture>");
                                  out.print("<img src='" + rs.getString("imagen") + "' alt='Imagen'>");
                                  out.print("</picture>");
                                  out.print("<p hidden>"+rs.getInt("idProducto"));
                                  out.print("<div class=\"nombre-producto\">");
                                  out.print("<h1>"+rs.getString("Nombre")+"</h1>");
                                  out.print("<p> S/. "+rs.getDouble("Precio")+"</p>");
                                  out.print("</div>");
                                  out.print("<div class=\"Opciones-producto\">");
                                  out.print("<li class=editar ><a  href='editar.jsp?idProducto=" + rs.getInt("idProducto") + "'><i class=\"fa-solid fa-pen-to-square\"></i> Editar</a></li>");
                                  out.print("<li><a href='acciones/eliminar.jsp?idProducto=" + rs.getInt("idProducto") + "'><i class=\"fa-solid fa-trash\"></i> Eliminar</a></li>");
                                  out.print("</div>");
                                  out.print("</section>");
                               }
                            } catch (Exception e) {//Encontrar el error
                                System.out.println(e.getMessage());
                          }
                    %>
            </article>
        </main>
    </body>
</html>
