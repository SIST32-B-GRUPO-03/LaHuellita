<?php
 session_start();

require ("conexion.php");
class inicioSesion extends Conexion{

    private $user;
    private $pass;
    private $DUI;
    private $Nombre;
    private $privilegios;
    private $apellido;
   
    public function setUser($user){
        $this->user=$user;
    }
    public function setPass($pass){
        $this->pass=md5(base64_encode($pass));
    }
    public function setDUI($DUI){
        $this->DUI=$DUI;
    }
    public function setNombre($Nombre){
        $this->Nombre=$Nombre;
    }
    public function setPrivilegios($privilegios){
        $this->privilegios=$privilegios;
    }
    public function setApellido($apellido){
        $this->apellido=$apellido;
    }

    public function Consulta(){
      //if(!($this->user || $this->pass)){
      //    echo "entro";
          $datos=parent::ejecutar("select usuario ,contrasenia, Priviliegios from empleados where usuario = '".$this->user."'");
          if(!$datos==null){
              //while($m=$datos->fetch_assoc()){
                  $m=$datos->fetch_assoc();
                  //echo $this->pass."===>".$m["contrasenia"];
                  if($this->pass==$m["contrasenia"]){
                      echo "exito";
                      $_SESSION["usuario"]=$this->user;
                      $_SESSION["pass"]=$this->pass;
                      $_SESSION["Priviliegios"]=$m["Priviliegios"];
                      switch($_SESSION["Priviliegios"]){
                          case 1:
                          break;
                          case 2:
                          break;
                          case 3:
                            header("location:perfil_secretarios/citas_agregar.php");
                        break;
                    }
                    //header("location:../perfil.php");
                    
                }else{
                    echo "Contraseña incorrecta";
                }
                //}
                
            }else{
                echo"Usuario no encontrado";
            }
       // }
            
    }
    public function registrar(){
        $sql="INSERT INTO empleados
        (DUI, Nombre_Empleado, Apellido, Priviliegios, usuario, contrasenia)
        VALUES('$this->DUI', '$this->Nombre', '$this->apellido', $this->privilegios, '$this->user', '$this->pass')";
        try{
            parent::ejecutar($sql);
            header("location:index.php");
        }catch(Exception $ex){
            echo $ex;
        }
        
    }
    public function privilegios(){
        $sql="SELECT Id_Privilegios, Usuario
        FROM privilegios";
        return parent::ejecutar($sql);
    }
}
?>