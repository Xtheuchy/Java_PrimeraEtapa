<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Inicio de sesión</h1>
        <form method="get" action="Proceso_login.jsp">
            <input type="text" name="correo" placeholder="Ingrese su correo: ">
            <input type="text" name="password" placeholder="Ingrese contraseña">
            <input type="submit" name="Proceso" value="Iniciar">
        </form>
    </body>
</html>
