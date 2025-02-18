<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="Utilitarios.ConexionBD" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Producto</title>
    </head>
    
    <style>
        body{
            display: flex;
            flex-direction: column;
            justify-content: center;
            height: 690px;
            align-items: center;
            margin: 0;
            padding: 0;
            background-color: #90daf7;
        }
        h1{
            text-align: center;
        }
        .button{
            padding: 5px 15px;
            background-color: blue;
            color: white;
            border:none;
            border-radius: 5px;
        }
        input{
            width: 100%;
            height: 40px;
            padding: 5px;
            border-radius: 5px;
        }
        form{
            background-color: rgb(255, 255, 255);
            width: 400px;
            padding: 30px 50px;
            border-radius: 10px;
            box-shadow: 0 0 10px;
        }
        
    </style>
    <body>
        <h1>Editar Producto</h1>
        <%
            try {//Recuperar el código de la URL
                int codigo = Integer.parseInt(request.getParameter("idProducto"));
                //out.print(codigo);//Mostrar el código
                //Conexiona  la base de datos
                Connection conexion = ConexionBD.retornaConexion();
                PreparedStatement pst = conexion.prepareStatement("select * from Productos where idProducto=?");
                pst.setInt(1, codigo); //Agregar dato en el parametro de entrada
                //Ejecutar y retornar en una tabla temporal
                ResultSet tabla = pst.executeQuery();
                //Leer los datos
                tabla.next();
                out.print("<form action=acciones/actualizar.jsp method=get>");
                out.print("<input hidden type=text name=idProducto value="+tabla.getString("idProducto")+">");
                out.print("<p>Producto :</p><input type=text name=Nombre value="+tabla.getString("Nombre")+">");
                out.print("<p>Precio : </p><input min=1 type=number name=Precio value="+tabla.getDouble("Precio")+">");
                out.print("<p>Imagen : </p><input type=text name=imagen value="+tabla.getString("Imagen")+">");
                out.print("<p> <input class = button type=submit name=actualizar value=Actualizar>");
                out.print("</form>");
                pst.close(); conexion.close();
 
                } catch (Exception e) {//Capturando el error
                    out.print(e.getMessage());
            }
        %>
    </body>
</html>
