<%@page  import="java.sql.*" %>
<%@page  import="utilitarios.ConexionBD"%>
<%
    try {//Probar el código 
         //Guardar los datos en la BD
         //a. Conexion a la BD
         Connection cn = ConexionBD.retornaConexion();
         //b. Leer los datos de la web
         String nom = request.getParameter("nombre");
         double precio = Double.parseDouble(request.getParameter("precio"));
         //c. Preparar consulta para Insert 
         String sql = "insert into productos values(null,?,?)";
         PreparedStatement pst = cn.prepareStatement(sql);
         pst.setString(1,nom);
         pst.setDouble(2, precio);
         //d. Ejecutar Intruccion
         pst.executeUpdate();
         //e. Redireccion a la pagina principal
         response.sendRedirect("gestion_Productos.jsp");
         pst.close(); cn.close();
        } catch (Exception e) {
        
        }
%>