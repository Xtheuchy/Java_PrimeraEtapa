<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro de productos</h1>
        <form action="guardar.jsp">
            <p>
                <input type="text"  name="nombre" placeholder="Producto">
            </p>
            <p>
                <input type="text"  name="precio" placeholder="precio">
            </p>
            <p>
                <input type="submit"  value="Guardar">
            </p>
        </form>
    </body>
</html>
