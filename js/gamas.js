$("#nomUsuario").html(" " + localStorage.getItem("usrName"));

$("#alto").on("click", () => {
    redireccion(1);
})
$("#medio").on("click", () => {
    redireccion(2);
})
$("#bajo").on("click", () => {
    redireccion(3);
})

function redireccion(eleccion) {
    localStorage.setItem("eleccion", eleccion);
    setTimeout(() => {
                    window.location.href = "../vistas/componentes.html"; 
                    window.clearTimeout(this);
                }, 500);
}