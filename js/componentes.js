
let tablas = ["cpu", "placa_madre", "gpu", "memoria", "almacenamiento", "psu", "gabinete"];
const gama = localStorage.getItem("eleccion");
let g;

switch (gama) {
    case '1': g = "ALTA"; break;
    case '2': g = "MEDIA"; break;
    case '3': g = "BAJA"; break;
}
$("#texto-gama").append(g);


let tg = document.getElementsByClassName("contenido");
let imgs = document.getElementsByClassName("cmp");
let urls = document.getElementsByClassName("url");
let j = 0;

async function getComponentes(t) {
    let respuesta;
    try {
        respuesta = await 
        $.ajax({
            method: "POST",
            dataType: "json",
            url: "../rutas/servidor.php",
            data: {
                "elec": "hola",
                "gama": gama,
                "tabla": t,
            },
            error: () => {console.log("error")},
            success: () => {console.log("success")}
        })
    } catch (error) {
        console.log(error);
    }
    
    return respuesta;
}

async function f()
{
    let k = 0, i = 0;
    let gm;
    
    switch (gama) {
        case '1': 
            gm = "alto"; 
            break;
        case '2': 
            gm = "medio"; 
            break;
        case '3': 
            gm = "bajo"; 
            break;
    }
    
    for (const t of tablas) {
        let ruta = "../img/componentes/" + gm + "/"+t+".jpg";
        $(imgs[k]).attr("src", ruta);
        
        let respuesta = await getComponentes(t);
        
        let precio = respuesta['precio'];
        let url = respuesta['url_amazon'];
                
        if (respuesta.hasOwnProperty("certificacion")) {
            let c = respuesta['certificacion'];
            delete respuesta['certificacion'];
            respuesta.certificacion = c;
        }
        if (respuesta.hasOwnProperty("factor_forma")) {
            let f = respuesta['factor_forma'];
            delete respuesta['factor_forma'];
            respuesta.factor_forma = f;
        }
        
        delete respuesta['precio'];
        respuesta.precio = precio;
        delete respuesta['url_amazon'];
        respuesta.url_amazon = url;
        
        arr = Object.values(respuesta);
        
        for (i = 0; i < Object.keys(respuesta).length - 1; i++) {
            $(tg[j++]).append(arr[i]);
        }

        $(urls[k]).attr("href", arr[i]);
        k++;
    }
}

f();

$("#volver").on("click", () => {
    window.location.href = "../vistas/gamas.html"; 
})