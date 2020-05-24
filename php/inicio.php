<?php
require ("conexion.php");
class inicioSesion extends Conexion{
    private $datos;
    private $user;
    private $pass;

    public function setUser($user){
        $this->user=$user;
    }
    public function setPass($pass){
        $this->pass=$pass;
    }

    public function Consulta(){
        setcookie("user","",time()+3600);
        setcookie("pass","",time()+3600);

        $datos=parent::ejecutar("select usuario ,contrasenia from empleados where contrasenia = ".md5($this->pass));
        if(!$datos==null){
            while($m=$datos->fetch_assoc()){
                if($this->user==$m["usuario"]){
                    echo "exito";
                }else{
                    echo "fracaso";
                }
            }
        }
       
    }

    
}

$inicio= new inicioSesion;
$inicio->Consulta();



?>