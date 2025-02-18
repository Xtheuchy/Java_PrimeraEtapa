<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Calculo de Planilla</h1>
        <form action="p_planilla.jsp" method="post">
            <p>
                Sueldo
                <input type="text" name="txtsueldo">    
            </p>
            <p>
                Tipo de Seguro
                <input type="radio" value="onp" name="seguro"> ONP
                <input type="radio" value="afp" name="seguro"> AFP
            </p>
            <p>
                <input type="submit" name="enviar" value="Enviar">
            </p>
        </form>
    </body>
</html>
