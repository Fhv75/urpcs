# URPC'S
 Repositorio del Web Scraper de la aplicación URPC'S

 URPC'S es una aplicación construida con HTML, Bootstrap 5.2 y CSS para el front-end, PHP y MySQL para el back-end, y JS como intermediario.
 Tiene el objetivo de facilitar la elección de componentes de hardware para un usuario sin conocimientos que desea ensamblar su propio computador.

## Requisitos
- XAMPP
- Navegador Web
## Instalación y Ejecución

1. Instalar XAMPP
2. Descargar el código como ZIP
3. Extraer el ZIP dentro del directorio C:\xampp\htdocs
4. Cambiar el nombre de la carpeta "urpcs-main" a "urpcs"
5. Iniciar XAMPP como administrador y activar los modulos "Apache" y "MySQL"
6. Abrir el navegador e ingresar a la url "localhost/phpmyadmin"
7. Hacer click en "importar"
8. Hacer click en "Examinar" y subir el archivo db.sql
9. Entrar a la url "localhost/urpcs"

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
