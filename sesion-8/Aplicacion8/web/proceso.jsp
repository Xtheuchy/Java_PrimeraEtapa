<% 
  //Codigo Java 
  //Funcionalidad a la pagina para poder realizar suma, conexion a BD
  
  //Leer datos
  double monto = Double.parseDouble(request.getParameter("txtventa"));
  //Procesar datos
  out.print("<h2> El IGV es:");
  out.print(monto*0.18);
  
%>