
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="Utilitarios.ConexionBD" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar cliente</title>
    </head>
    
    <style>
        body{
            display: flex;
            flex-direction: column;
            align-items: center;
            margin: 0;
            padding: 0;
        }
        .button{
            padding: 5px 15px;
            background-color: blue;
            color: white;
            border:none;
            border-radius: 5px;
        }
        input{
            padding: 5px;
            border-radius: 5px;
        }
        form{
            background-color: skyblue;
            padding: 30px 50px;
            border-radius: 10px;
        }
    </style>
    <body>
        <h1>Editar Clientes</h1>
        <%
            try {//Recuperar el código de la URL
                int codigo = Integer.parseInt(request.getParameter("id"));
                //out.print(codigo);//Mostrar el código
                //Conexiona  la base de datos
                Connection conexion = ConexionBD.retornaConexion();
                PreparedStatement pst = conexion.prepareStatement("select * from cliente where id=?");
                pst.setInt(1, codigo); //Agregar dato en el parametro de entrada
                //Ejecutar y retornar en una tabla temporal
                ResultSet tabla = pst.executeQuery();
                //Leer los datos
                tabla.next();
                out.print("<form action=actualizar.jsp method=get>");
                out.print("<input hidden type=text name=id value="+tabla.getString("id")+">");
                out.print("<p>Nombres : </p><input type=text name=nombres value="+tabla.getString("nombres")+">");
                out.print("<p>DNI : </p><input type=text name=dni value="+tabla.getString("dni")+">");
                out.print("<p>Edad : </p><input type=text name=edad value="+tabla.getString("edad")+">");
                out.print("<p> <input class = button type=submit name=actualizar value=Actualizar>");
                out.print("</form>");
                pst.close(); conexion.close();
 
                } catch (Exception e) {//Capturando el error
                    out.print(e.getMessage());
            }
        %>
    </body>
</html>
