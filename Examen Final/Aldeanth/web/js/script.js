document.addEventListener("DOMContentLoaded", function () {
                    let params = new URLSearchParams(window.location.search);
                    let seccion = params.get("seccion");

                    console.log("Sección en URL al cargar:", seccion); // Depuración

                    if (seccion) {
                        cargarSeccion(seccion); // Carga solo la sección dentro de #contenido
                    }
                });

                // Detectar cuando el usuario usa los botones "Atrás" o "Adelante"
                window.onpopstate = function (event) {
                    if (event.state && event.state.pagina) {
                        console.log("Cambiando a la sección:", event.state.pagina);
                        cargarSeccion(event.state.pagina);
                    }
                };
function cargarSeccion(pagina) {
                fetch(pagina)
                    .then(response => response.text())
                    .then(data => {
                        document.getElementById("contenido").innerHTML = data;
                        history.pushState({ pagina: pagina }, "", "?seccion=" + pagina);
                    })
                    .catch(error => console.log("Error al cargar la página:", error));
            }

