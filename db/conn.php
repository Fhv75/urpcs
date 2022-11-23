<?php
    $host = "localhost";
    $db = "urpc's";
    $user = "root";
    $pass = "";
    $charset = "utf8mb4";
    
    $dsn = "mysql:host=$host;
            dbname=$db;
            charset=$charset";
            
    try {
        $pdo = new PDO($dsn, $user, $pass)
        /* Reporte de errores de PDO (lanza excepciones) */;
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch (PDOException $e) {
        echo $e->getMessage();
        throw new PDOException($e->getCode(), $e->getMessage());
    }
?>