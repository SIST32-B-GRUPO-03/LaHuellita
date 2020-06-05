<?php
require ("conexion.php");

class Citas extends Conexion{
    private $paciente;
    private $doctor;
    private $fecha;
    private $hora;
    private $estado;
    private $detalles;
    //private $cn;

    //public function __construct(){
        //$this->cn=new Conexion;
    //}
    public function setPaciente($paciente){
        
        $this->paciente=parent::blackList($paciente);
    }
    public function setFecha($fecha){
        $this->fecha=parent::blackList($fecha);
    }
    public function setDoctor($doctor){
        $this->doctor=parent::blackList($doctor);
    }
    public function setHora($hora){
        $this->hora=parent::blackList($hora);
    }
    public function setEstado($estado=Null){
        if($estado==Null){
            $this->estado=1;
        }else{
            $this->estado=parent::blackList($estado);
        }
        
    }
    public function setDetalles($detalles){
        $this->detalles=parent::blackList($detalles);
    }

    public function getPaciente(){
        return $this->paciente;
    }
    
    
    public function insert(){
      $sql="insert into citas (Paciente ,Doctor ,Fecha ,Hora ,Detalles ,Estado ) values ($this->paciente, '$this->doctor', '$this->fecha','$this->hora', '$this->detalles',$this->estado)";
     
      parent::ejecutar($sql);
    }
    public function select(){
        $respuesta = parent::ejecutar("select c.Id_Cita ,m.Nombre ,e.Nombre_Empleado ,e2.Estado ,c.Detalles ,c.Fecha ,c.Hora from citas c inner join mascotas m on m.Id_mascota = c.Paciente 
        inner join empleados e on e.DUI = c.Doctor 
        inner join estados e2 on e2.Id_Estado = c.Estado ");
        return $respuesta;
    }
    public function selectporfecha($fechacita){
        $respuesta = parent::ejecutar("select c.Id_Cita ,m.Nombre ,e.Nombre_Empleado ,e2.Estado ,c.Detalles ,c.Fecha ,c.Hora from citas c inner join mascotas m on m.Id_mascota = c.Paciente 
        inner join empleados e on e.DUI = c.Doctor 
        inner join estados e2 on e2.Id_Estado = c.Estado where c.Fecha ='$fechacita'");
        return $respuesta;
    }
    protected function delete(){}
    protected function modifie(){}

    public function selectDoctores(){
        $respuesta = parent::ejecutar("select DUI , Nombre_Empleado from empleados e where Priviliegios = 2");
        return $respuesta;
    }
    public function selectPacientes(){
        $respuesta = parent::ejecutar("select m.Id_mascota , m.Nombre , c.Nombre_Cliente , c.Apelido_Cliente from mascotas m , clientes c where c.Id_Cliente =m.Dueño");
        return $respuesta;
    }
    

}


?>