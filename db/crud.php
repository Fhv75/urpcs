<?php
    class Crud {
        private $db;
        function __construct($conn) {
            $this->db = $conn;
        }
        public function regUsuario($nombre, $contrasenia, $correo) {
            try {
                $sql = "INSERT into usuario
                        VALUES (:nombre, :contrasenia, :correo)";

                $stmt = $this->db->prepare($sql);

                $stmt->bindparam(':correo', $correo);
                $stmt->bindparam(':contrasenia', $contrasenia);
                $stmt->bindparam(':nombre', $nombre);

                $stmt->execute();
                return "success";
            }
            catch (PDOException $e) {
                /* echo $e->getMessage(); */
                return $e->getCode();
            }
        }

        public function verifLogin($correo, $contrasenia) {
            try {
                $sql = "SELECT * FROM usuario 
                        WHERE correo = :correo AND contrasenia = :contrasenia";
    
                $stmt = $this->db->prepare($sql);
                $stmt->bindparam(':correo', $correo);
                $stmt->bindparam(':contrasenia', $contrasenia);

                $stmt->execute();

                $nFilas = $stmt->rowCount();

                if ($nFilas == 1) {
                    return array(
                        "success", 
                        $stmt->fetch(PDO::FETCH_OBJ)->nombre
                    );
                }
                else if ($nFilas == 0) {
                    return array("error", "");
                }
                else {
                    return array("BIGERROR", "");
                }

            } catch (PDOException $e) {
                return $e->getCode();
            }
        }

        public function obtenerDatosComponentes($gama, $tabla) {
            try {
                
                if ($tabla == "psu") {
                    $colSql = "SELECT COLUMN_NAME FROM 
                            INFORMATION_SCHEMA.COLUMNS WHERE (TABLE_NAME = 'psu' OR TABLE_NAME = 'factor_forma' OR TABLE_NAME = 'certificacion') 
                            AND COLUMN_NAME NOT IN ('SKU', 'id_gama', 'id_modelo', 'id', 'id_factor_forma', 'id_certificacion', 'tipo')";

                    $stmt = $this->db->prepare($colSql);
                    $stmt->execute();

                    $sql = "SELECT ";
                    while ($n = $stmt->fetch(PDO::FETCH_OBJ)) {
                        $sql = $sql . $n->COLUMN_NAME . ", ";
                    }

                    $sql = substr($sql, 0, -2);
                    $sql = $sql . " FROM psu 
                                    INNER JOIN factor_forma ON psu.id_factor_forma = factor_forma.id 
                                    INNER JOIN certificacion ON psu.id_certificacion = certificacion.id 
                                    WHERE id_gama = :gama";

                } else if ($tabla == "gabinete" || $tabla == "placa_madre") {
                    $colSql = "SELECT COLUMN_NAME FROM 
                            INFORMATION_SCHEMA.COLUMNS WHERE (TABLE_NAME = '$tabla' OR TABLE_NAME = 'factor_forma') 
                            AND COLUMN_NAME NOT IN ('SKU', 'id_gama', 'id_modelo', 'id', 'id_factor_forma')";

                    $stmt = $this->db->prepare($colSql);
                    $stmt->execute();
                    
                    $sql = "SELECT ";
                    while ($n = $stmt->fetch(PDO::FETCH_OBJ)) {
                        $sql = $sql . $n->COLUMN_NAME . ", ";
                    }
                    
                    $sql = substr($sql, 0, -2);
                    $sql = $sql . " FROM $tabla
                                    INNER JOIN factor_forma ON $tabla.id_factor_forma = factor_forma.id 
                                    WHERE id_gama = :gama";

                } else {

                    $colSql = "SELECT COLUMN_NAME FROM 
                            INFORMATION_SCHEMA.COLUMNS WHERE (TABLE_NAME = '$tabla') 
                            AND COLUMN_NAME NOT IN ('SKU', 'id_gama', 'id_modelo', 'id', 'tipo')";
                    
                    $stmt = $this->db->prepare($colSql);
                    $stmt->execute();

                    $sql = "SELECT ";
                    while ($n = $stmt->fetch(PDO::FETCH_OBJ)) {
                        $sql = $sql . $n->COLUMN_NAME . ", ";
                    }
                    $sql = substr($sql, 0, -2);
                    $sql = $sql . " FROM $tabla WHERE id_gama = :gama";

                }

                $stmt = $this->db->prepare($sql);
                $stmt->bindparam(':gama', $gama);

                
                $stmt->execute();
                $res = $stmt->fetch(PDO::FETCH_OBJ);

                echo json_encode($res);
            }
            catch (PDOException $e) {
                return $e->getCode();
            }
        }
    }
?>