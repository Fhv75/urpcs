<?php 
    require_once '../db/conn.php';
    require '../db/crud.php';
    session_start();
    $crud = new Crud($pdo);

    if(isset($_POST["regSubmit"])) {
        $nombre = $_POST["regNombre"];
        $correo = $_POST["regCorreo"];
        $contrasenia = $_POST["regPw"];

        $isSuccess = $crud->regUsuario($nombre, $contrasenia, $correo);
        echo $isSuccess;
    }
    else if(isset($_POST["logSubmit"])) {
        $correo = $_POST["logCorreo"];
        $contrasenia = $_POST["logPw"];

        $isSuccess = $crud->verifLogin($correo, $contrasenia);
        if($isSuccess[0] == "success") {
            $_SESSION["ID"] = $correo;
            $_SESSION["Nombre"] = $isSuccess[1];
        }
        echo json_encode($isSuccess);

    } else if(isset($_POST["sessionVerif"])) {
        if(isset($_SESSION["ID"])) {
            echo "true";
        } 

    } else if(isset($_POST["cerrarSesion"])) {
        session_destroy();

    } else if(isset($_POST["elec"])) {
        $isSuccess = $crud->obtenerDatosComponentes($_POST["gama"], $_POST["tabla"]);

        echo $isSuccess;
    }
?>