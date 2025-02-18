<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="Utilitarios.ConexionBD" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestion de clientes</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    </head>
    <style>
        *{
            margin: 0;
            padding: 0
        }
        body{
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 20px;
        }
        h1{
            margin: 10px;
        }
        table{
            border-spacing: 0px 10px;
        }
        th{
            width: 150px;
            font-size: 18px;
            background-color: whitesmoke;
            padding: 6px 0;
            border: 1px solid white;
        }
        td{
            height: 30px;
            padding: 5px 0;
            text-align: center;
            background-color: wheat;
        }
        .bor{
            border-right: 2px solid black;
            text-align: center;
            align-self: center;
            font-weight: bold;
            font-size: 16px;
        }
        .agregar{
            padding: 10px 15px;
            background-color: blue;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
            border:none;
        }
        .editar{
            padding: 5px 15px;
            background-color: blue;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        .eliminar{
            padding: 5px 15px;
            background-color: red;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        dialog{
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);  
            padding: 20px;
            width: 400px;  
            border: 2px solid #ccc;
            border-radius: 10px;
            background-color: white;
            text-align: center;
        }
        input{
            margin-top: 10px;
            padding: 5px;
            border-radius: 5px;
        }
        button{
            transition: 0.2s;
        }
        button:hover{
            transform: scale(1.02);
        }
        button:active{
            transform: scale(1);
        }
    </style>
    <body>
        <h1>Gestión de Clientes</h1>
        <button class="agregar" onclick="document.getElementById('agregarCliente').showModal()"><i class="fa-solid fa-user-plus"></i> Agregar Cliente</button>
        <dialog id="agregarCliente">
            <h1>Registro de Clientes</h1>
            <form action="guardar.jsp">
                <p>
                    <input required type="text" name="nombres" placeholder="Nombre completo">
                </p>
                <p>
                    <input required type="text" name="dni" placeholder="DNI">
                </p>
                 <p>
                    <input required type="text" name="edad" placeholder="Edad">
                </p>
                <p>
                    <input type="submit" value="Guardar">
                </p>
            </form>
        </dialog>   
        <%
          try {//C+odigo a analizar
                 //Mostrar la lista de Productos
                 Connection  conexion = ConexionBD.retornaConexion();
                 PreparedStatement pst = conexion.prepareStatement("select * from cliente");
                 ResultSet rs  = pst.executeQuery();
                 //Mostrar los datos en la pagina web
                 out.print("<table >");
                 out.print("<tr>");
                 out.print("<th>Código  <th>nombres <th>dni <th>edad <th>Editar <th>Eliminar");
                 while(rs.next()){
                    out.print("<tr>");
                    out.print("<td class=bor>"+rs.getInt("id"));
                    out.print("<td class=bor>"+rs.getString("nombres"));
                    out.print("<td class=bor>"+rs.getString("dni"));
                    out.print("<td class=bor>"+rs.getInt("edad"));
                    out.print("<td><a class=\"editar\" href=\"editar.jsp?id="+rs.getInt("id")+"\"><i class=\"fa-solid fa-pen-to-square\"></i> Editar</a>");
                    out.print("<td><a class=\"eliminar\"  href=\"eliminar.jsp?id="+rs.getInt("id")+"\"><i class=\"fa-solid fa-trash\"></i> Eliminar  </a>");
                 }
                 out.print("</table>");
              } catch (Exception e) {//Encontrar el error
                  System.out.println(e.getMessage());
            }
        %>
    </body>
</html>
