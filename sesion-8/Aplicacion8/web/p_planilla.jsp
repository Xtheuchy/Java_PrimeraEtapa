<%
    //Variables
    double sueldo,monto,descuento;
    String seguro;
    //Entrada (Leer datos)
    sueldo = Double.parseDouble(request.getParameter("txtsueldo"));
    seguro = request.getParameter("seguro");
    //Proceso
    //if  --  para evaluar la opción
    if (seguro.equals("onp")){
        descuento = sueldo*0.13;
        out.print("El descuento es: " + descuento);
    }
        else{
        descuento = sueldo*0.11;
        out.print("El descuento es: " + descuento);
    }
    out.print("El sueldo actual es : "+ (sueldo - descuento));
%>