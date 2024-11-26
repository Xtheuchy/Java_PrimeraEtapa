<%
    //variables
    String correo,correo_correcto,contra,contra_correcto;
    //Leer entrada
    correo = request.getParameter("correo");
    contra = request.getParameter("password");
    correo_correcto= "Elvis@gmail.com";
    contra_correcto="123456";
    if (correo_correcto.equals(correo) && contra_correcto.equals(contra)){
       out.println("Inicio de sesion exitosa");
    }
    else{
       out.println("Inicio de sesion fallida");
    }
    
    
    
%>