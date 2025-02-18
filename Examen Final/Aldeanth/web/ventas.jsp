<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="Utilitarios.ConexionBD"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/styles.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    </head>
    <body>
        <main class="contenedor-ventas">
            <h1 class="titulo-gestion"><i class="fa-solid fa-chart-line"></i> Gestión de Ventas</h1>
            <article class="Registro-Ventas">
                <form class="formulario-registro" action="acciones/registrarVenta.jsp">
                    <h1><i class="fa-solid fa-cart-shopping"></i> Registrar Ventas : </h1>
                    <label for="#">Producto : </label>
                    <select name="producto" id="producto" required>
                        <optgroup label="🍦 Helados">
                            <option value="Helado de Fresa">Helado de Fresa</option>
                            <option value="Helado de Cafe">Helado de Café</option>
                            <option value="Helado de Aguaymanto">Helado de Aguaymanto</option>
                        </optgroup>
                        <optgroup label="🥤 Bebidas">
                            <option value="Chicha jora">Chicha de jora</option>
                            <option value="Chicha Morada">Chicha morada</option>
                            <option value="Pisco Sour">Pisco Sour</option>
                        </optgroup>
                    </select>
                    <label for="#">Cantidad : </label>
                    <input min="1" name="cantidad" type="number" placeholder="Cantidad" required><br>
                    <label for="#">Precio Unitario (S/.):</label>
                    <input min="1" id="precio" name="precio" type="number" placeholder="Precio unitario" required>
                    <button><i class="fa-solid fa-plus"></i> Registrar Venta</button>
                </form>
                <section class="contenedor-tabla">
                    <h2><i class="fa-solid fa-file"></i> Resumen de Ventas</h2>
                    <div class="tabla">
                        <%
                            try {//C+odigo a analizar
                               //Mostrar la lista de Productos
                               Connection  conexion = ConexionBD.retornaConexion();
                               PreparedStatement pst = conexion.prepareStatement("SELECT v.idVenta, p.Nombre AS producto, v.cantidad, v.precioUnitario, v.total,v.fecha FROM venta v INNER JOIN productos p ON v.idProducto = p.idProducto order by fecha desc;");
                               ResultSet rs  = pst.executeQuery();
                               //Mostrar los datos en la pagina web
                               out.print("<table id=\"tablaVentas\" >");
                               out.print("<tr>");
                               out.print("<th>Producto</th>  <th>Cantidad</th> <th>Precio Unitario</th> <th>Total</th> <th>Fecha</th>");
                               while(rs.next()){
                                  out.print("</tr>");
                                  out.print("<td hidden class=bor>"+rs.getInt("idVenta") + "</td>");
                                  out.print("<td>"+rs.getString("Producto") + "</td>");
                                  out.print("<td>"+rs.getInt("cantidad") + "</td>");
                                  out.print("<td> S/. "+rs.getDouble("precioUnitario") + "</td>");
                                  out.print("<td> S/. "+rs.getDouble("total") + "</td>");
                                  out.print("<td>"+rs.getDate("fecha") + "</td>");
                               }
                               out.print("</table>");
                            } catch (Exception e) {//Encontrar el error
                                System.out.println(e.getMessage());
                          }
                      %>
                  </div>
                  <button onclick="document.getElementById('popup').showModal()" class="boton-total"><i class="fa-solid fa-sack-dollar"></i> Ver Monto del día</button>
                  <dialog id="popup" class="dialog-venta">
                      <h1>Monto total de hoy:</h1>
                      <%
                        //Mostrar la lista de Productos
                            Connection  conexion = ConexionBD.retornaConexion();
                            PreparedStatement pst = conexion.prepareStatement("SELECT SUM(total) AS Total_Generado FROM venta where fecha = CURDATE()");
                            ResultSet totalResultSet = pst.executeQuery();
                            
                            while (totalResultSet.next()){
                            out.print("<p>S/. "+totalResultSet.getDouble("Total_Generado") + "</p>");
                          }
                      %>
                      <button class="close" onclick="document.getElementById('popup').close()"><i class="fa-solid fa-xmark"></i> Cerrar</button>
                  </dialog>
                </section>
            </article>
        </main>
    <script src="js/script.js"></script>
    </body>
</html>
