function getSession() { 
    return $.ajax({
        method: "POST",
        dataType: "text",
        url: "/urpcs/rutas/servidor.php",
        data: {
            "sessionVerif": "hola",
        }
    }).done((respuesta) => {
        if (respuesta != "true" && window.location.href != "http://localhost/urpcs/index.html" && window.location.href != "http://localhost/urpcs/") {
            window.location.replace("403.html");
        }
    })
}

async function verificar() {
    try {
        const respuesta = await getSession();
    } catch(e) {
        console.log(e);
    }
}

verificar();