<%
    String producto;
    double precio = 0;
    int cantidad;
    producto = request.getParameter("productos");
    cantidad = Integer.parseInt(request.getParameter("cantidad"));
    if (producto.equals("polo")){
        precio=100;
        out.print("Resultado : " + cantidad * precio);
    }
    else if(producto.equals("camisa")){
        precio = 120;
        out.print("Resultado : " + cantidad * precio);
    }
    
%>

