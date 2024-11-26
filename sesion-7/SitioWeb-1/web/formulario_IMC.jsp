<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <style>
            h1{
                color:red;
            }
        </style>
        <h1>Calcular el indice de masa corporal</h1>
        <form action="proceso_IMC.jsp" method="get">
            <input type="text" name="talla" placeholder="Ingrese estatura">
            <input type="text" name="peso" placeholder="Ingrese peso">
            <input type="submit" name="calcular" value="calcular">
        </form>
    </body>
</html>
