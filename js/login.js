$("#logLP").on("click", () => {
    $("#logResp").hide();
})

$("#logSubmit").on("click", () => {
    $("#logResp").show();

    const data = new Map();

    data.set("Correo Electrónico", $("#logCorreo").val().toLowerCase());
    data.set("Contraseña", $("#logPw").val());

    let flag = true;

    let msg = "<div>";

    for (let [key, valor] of data.entries()) {
        if(valor == "") {
            msg += "<h6>El campo " + key + " es obligatorio.</h6>";
            flag = false;
        }
    }
    msg+= "</div>";

    if (flag) {
        $.ajax({
            method: "POST",
            dataType: "json",
            url: "../urpcs/rutas/servidor.php",
            data: {
                /* "Inicializo" valores del arreglo $_POST */
                "logSubmit": "hola",
                "logCorreo": data.get("Correo Electrónico"),
                "logPw": data.get("Contraseña"),
            },
        }).done((respuesta) => {
            if(respuesta[0] == "success") {

                $("#logResp").removeClass("error");
                $("#logResp").addClass("success");

                msg = '<p>Inicio de Sesión exitoso. Redirigiendo...</p>';
                msg = $(msg);
                msg.addClass("py-2 px-3");

                setTimeout(() => {
                    window.location.href = "../urpcs/vistas/gamas.html"; 
                    window.clearTimeout(this);
                }, 1000);

                localStorage.setItem("usrName", respuesta[1]);

            } else if (respuesta[0] == "error") {

                $("#logResp").removeClass("success");
                $("#logResp").addClass("error");

                msg = '<p>Correo o Contraseña Incorrectos.</p>';
                msg = $(msg);
                msg.addClass("py-2 px-3");

            } else {
                $("#logResp").removeClass("success");
                $("#logResp").addClass("error");

                msg = '<p>Ocurrio un problema grave. Contacte al administrador.</p>';
                msg = $(msg);
                msg.addClass("py-2 px-3");

            }
            $("#logResp").html(msg)
        })
        
    } else {
        $("#logResp").removeClass("success");
        $("#logResp").addClass("error");

        msg = $(msg);
        msg.addClass("pt-3 pb-2 px-5");

        $("#logResp").html(msg)
    }
});
