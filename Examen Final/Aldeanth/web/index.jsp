<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Aldeanth</title>
        <link href="css/styles.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    </head>
    <body>
        <main>
            <aside class="Navbar">
                <picture class="contenedor-logo">
                    <img class="logo" src="Imagen/Aldeanth.png" alt="">
                </picture>
                <ul class="contenedor-menu">
                    <li><a href="index.jsp"><i class="fa-solid fa-house"></i> Inicio</a></li>
                    <li><a href="#" onclick="cargarSeccion('ventas.jsp')"><i class="fa-solid fa-chart-line"></i> Gestión de Ventas </a></li>
                    <li><a href="#" onclick="cargarSeccion('Productos.jsp')"><i class="fa-solid fa-box"></i> Productos</a></li>
                    <li><a class="proximamente" href="#"><i class="fa-solid fa-users"></i>
                            <div>próximamente</div> Gestión de Empleados
                        </a></li>
                    <li><a class="proximamente" href="#"><i class="fa-solid fa-right-to-bracket"></i>
                            <div>próximamente</div> Cerrar Sesión
                        </a></li>
                </ul>
            </aside>
            <section id="contenido">
                <section class="sobre">
                    <h1 class="sobre-titulo">
                       <i class="fa-solid fa-ice-cream"></i> SOBRE NOSOTROS <i class="fa-solid fa-whiskey-glass"></i>
                    </h1>
                    <section class="sobre-cuadros">
                        <picture>
                            <img src="https://cdn.pixabay.com/photo/2021/01/18/12/49/ice-cream-5928048_1280.jpg" alt="">
                        </picture>
                        <div class="cuadro">
                            <h1 class="cuadro-titulo">
                                FRESCO & ÚNICO
                            </h1>
                            <p class="p-cuadro">
                                Bienvenidos a Aldeanth, un rincón donde los sabores auténticos del Perú cobran vida en forma
                                de helados y bebidas artesanales. Nuestro nombre es un reflejo de quienes estamos detrás de
                                este proyecto, combinando nuestra esencia y pasión por lo que hacemos.

                                Desde el año pasado, como un pequeño negocio, nos hemos dedicado a crear productos naturales
                                y llenos de historia, utilizando ingredientes de alta calidad y recetas artesanales. Cada
                                helado y bebida que ofrecemos es un homenaje a la tradición y riqueza de nuestro país.

                                Si buscas algo refrescante y diferente, con el verdadero sabor del Perú, ¡Aldeanth es el
                                lugar perfecto para ti!
                            </p>
                        </div>
                        <picture>
                            <img src="https://cdn.pixabay.com/photo/2021/10/12/22/24/mulled-wine-6704928_1280.jpg" alt="">
                        </picture>
                    </section>
                </section>
            </section>
        </main>
        <script src="js/script.js"></script>
    </body>
</html>
