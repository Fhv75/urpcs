function goTo(id)
{
    document.getElementById(id).scrollIntoView();
}

const funFacts = [
    "El primer computador pesaba más de 28 toneladas",
    "Alrededor del 90% de las divisas del mundo solo existen en computadores",
    "El primer mouse fue hecho de madera",
    "Alrededor del 70% de los desarrolladores de virus trabajan para sindicatos de crimen organizado",
    "Algunas de las más famosas marcas de computadores comenzaron sus operaciones en garajes",
    "Las personas pestañean menos cuando estan usando un computador",
    "Se desarrollan unos 6000 nuevos virus cada mes",
    "El virus 'MyDoom' es el virus que más dinero ha costado desarrollar en toda la historia",
    "El primer disco duro de 1 Gigabyte se vendió en 40000 dolares",
    "Pronto los computadores podrán averiguar lo que piensan los perros",
]

function getFact()
{
    document.getElementById("fun-fact").innerHTML = 
        "\n" + funFacts[Math.floor(Math.random() * 10)] + ".";
}
