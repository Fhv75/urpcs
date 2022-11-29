# URPC'S Scraper
 Repositorio del Web Scraper de la aplicación URPC'S

 URPC'S es una aplicación construida con HTML, Bootstrap 5.2 y CSS para el front-end, PHP y MySQL para el back-end, y JS como intermediario.
 Tiene el objetivo de facilitar la elección de componentes de hardware para que un usuario sin conocimientos sea capaz de ensamblar su propio computador.

## Requisitos
- XAMPP
- Navegador Web
## Instalación y Ejecución

1. Instalar XAMPP
2. Descargar el código como ZIP
3. Extraer el ZIP dentro del directorio C:\xampp\htdocs
4. Iniciar XAMPP como administrador y activar los modulos "Apache" y "MySQL"
6. Abrir el navegador e ingresar a la url "localhost/phpmyadmin"
7. Hacer click en "importar"
8. Clickear en "Examinar" y subir el archivo db.sql
8. Entrar a la url "localhost/urpcs"

**IMPORTANTE: NO CAMBIAR EL NOMBRE DE LA CARPETA "urpcs"**

## Funcionalidades

- Registro, Inicio y Cierre de Sesión
  - Validación de caracteres y estructura en Nombre y Correo
  - Validación de longitud de la contraseña
  - Validación de campos vacios
  - Validación de cuenta ya registrada

- Redirecciones

- Selección de Gama
  - Almacenaje de elección en el navegador
  
- Extracción y Visualización de los datos de componentes de hardware desde la base de datos de acuerdo a la gama seleccionada
