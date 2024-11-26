<%
    //1.- Variables
    double peso,talla,imc;
    //2. Entrada (Leer los datos)
    peso = Double.parseDouble(request.getParameter("peso")) ;
    talla = Double.parseDouble(request.getParameter("talla")) ;
    //3. proceso
    imc=peso/(talla*talla);
    //4. salida
    out.println("El imc es: "+imc);
%>