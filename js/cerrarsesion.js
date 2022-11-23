function cerrarSesión() { 
    return $.ajax({
        method: "POST",
        url: "../rutas/servidor.php",
        data: {
            "cerrarSesion": "hola",
        }
    }).done((respuesta) => {
        localStorage.clear();
        window.location.replace("../index.html");
    })
}

async function cerrar() {
    try {
        const respuesta = await cerrarSesión();
    } catch(e) {
        console.log(e);
    }
}

$("#cerrar").on("click", () => {
    cerrar();
})