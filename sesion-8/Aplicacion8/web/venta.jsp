<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <style>
            h3{
                color: blue;
                font-family:arial;
            }
        </style>
        <form action="p_venta.jsp">
            <h3> Producto : </h3>
            <select name="productos">
                <option value="polo">Polo</option>
                <option value="camisa">Camisa</option>
                <option value="zapatilla">Zapatilla</option>
                <option value="sombrero">sombrero</option>
            </select>
            <h3>Cantidad: </h3>
            <input type="text" name="cantidad"><br><br>
            <input type="submit" value="Calcular">
        </form>
    </body>
</html>
