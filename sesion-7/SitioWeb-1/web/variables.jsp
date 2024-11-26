<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Variables en sitio web</h1>
        <% 
           int nota1=15,nota2=14;
           out.println((nota1+nota2)/2);
        %>
    </body>
</html>
