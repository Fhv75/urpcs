$("#regLP").on("click", () => {
    $("#regResp").hide();
})

$("#regSubmit").on("click", () => {
    $("#regResp").show();
    const data = new Map();
    data.set("Nombre", $("#regNombre").val());
    data.set("Correo Electrónico", $("#regCorreo").val().toLowerCase());
    data.set("Contraseña", $("#regPw").val());
    data.set("Confirmar Contraseña", $("#confPw").val());
    var msg = "<div>";
    /* Si flag = true, el AJAX se ejecuta. */
    flag = true;    
    
    /* Itero sobre el mapa "data", y revisa si es que alguna key tiene un valor vacio */
    for (let [key, valor] of data.entries()) {
        if(valor == "") {
            msg += "<h6>El campo " + key + " es obligatorio.</h6>";
            flag = false;
        }
    }
    /* Evita añadir el mensaje si el campo esta vacio */
    if (data.get("Nombre").length != 0) {
        if (validateName(data.get("Nombre")) == false) {
            msg += "<h6>Tu nombre no puede tener caracteres especiales</h6>";
            flag = false;
        }
    }

    /* Evita añadir el mensaje si el campo esta vacio */
    if (!data.get("Correo Electrónico").isEmpty) {
        if (validateEmail(data.get("Correo Electrónico")) == false) {
            msg += "<h6>El correo ingresado no es válido</h6>";
            flag = false;
        }
    }

    /* Evita el mensaje si los campos estan vacios */
    if (data.get("Contraseña").length != 0 && data.get("Confirmar Contraseña").length != 0) {
        if (data.get("Contraseña") != data.get("Confirmar Contraseña")) {
            msg += "<h6>Las contraseñas no coinciden</h6>";
            flag = false;
        } else if (data.get("Contraseña").length < 8 || data.get("Contraseña").length > 32 ) {
            msg += "<h6>Tu contraseña debe tener enter 8 y 32 caracteres</h6>";
            flag = false;
        }
    }

    msg+= "</div>";
    
    if (flag) {
        $.ajax({
            method: "POST",
            dataType: "text",
            url: "../urpcs/rutas/servidor.php",
            data: {
                /* "Inicializo" valores del arreglo $_POST */
                "regSubmit": "hola",
                "regNombre": data.get("Nombre"),
                "regCorreo": data.get("Correo Electrónico"),
                "regPw": data.get("Contraseña"),
            }
        }).done((respuesta) => {
            if (respuesta == "success") {
                /* Remuevo las clases "error" o "success" en caso de que alguna de ellas ya se haya añadido antes */
                $("#regResp").removeClass("error");
                $("#regResp").addClass("success");

                msg = '<p>Registro exitoso.</p>';
                msg = $(msg);
                msg.addClass("py-2 px-3");
                $("#regNombre").val("");
                $("#regCorreo").val("");
                $("#regPw").val("");
                $("#confPw").val("");
            }
            else if (respuesta == 23000) {
                $("#regResp").removeClass("success");
                $("#regResp").addClass("error");

                msg = "<p>Ya existe una cuenta registrada con este correo electrónico.</p>";
                msg = $(msg);
                msg.addClass("py-2 px-5");
            }
            else {              
                $("#regResp").removeClass("success");
                $("#regResp").addClass("error");

                msg = "<p>Hubo un error en el proceso de registro.</p>";
                msg = $(msg);
                msg.addClass("py-2 px-3");
                
                console.log(respuesta);
            }
            $("#regResp").html(msg)
        })

    }
    else {
        $("#regResp").removeClass("success");
        $("#regResp").addClass("error");
        msg = $(msg);
        msg.addClass("px-4 pt-3 pb-2");
        $("#regResp").html(msg);
    }
});

function validateEmail(email) {
  var re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  return re.test(email);
}

function validateName(name) {
    var re = /^[^ !"`'#%&,:;<>=@{}~\$\(\)\*\+\/\\\?\[\]\^\|]+$/;
    return re.test(name);
}

/* 
    TODO: Limpiar inputs despues de un registro exitoso
    TODO: Borrar mensaje de error / exito al hacer click en boton registro  
*/