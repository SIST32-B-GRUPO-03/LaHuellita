<?php 
    require ("conexion.php");
     class Expediente extends Conexion {
        private $nomMacota;
        private $observacion;
        private $sintoma;
        private $vacunas;
        private $consume;


        public function setNomascota($nomMacota){
            $this->nomMacota=parent::blaclist($nomMacota);
        }
        public function setObservaciones($observacion){
            $this->observacion=parent::blacklist($observacion);
        }
        public function setSintomas($sintoma){
            $this->sintoma=parent::blacklist($sintoma);
        }
        public function setVacuna($vacunas){
            $this->vacunas=parent::blacklist($vacunas);
        }
        public function setConsume($consume){
            $this->consume=parent::blacklist($consume);
        }


        public function getNomascota(){
            return $this->nomMacota;
        }
        public function getObservaciones(){
            return $this->observacion;
        }
        public function getSintomas(){
            return $this->sintoma;
        }
        public function getVacunas(){
            return $this->vacunas;
        }
        public function getConsume(){
            return $this->consume;
        }


        public function insert(){
            $sql = "INSERT INTO expediente_mascota
            (mascota_nombre, obervaciones, sintomas, vacunas, consume_medicamento)VALUES('$this->nomMascota','$this->observacion',
            '$this->sintoma','$this->vacunas','$this->consume')";

            parent::ejecutar($sql);
           
        }

        public function selectNombre(){
           $respuesta = parent::ejecutar("select Nombre, Id_mascota from mascotas");
           //while ($m=$respuesta->fetch_assoc()) {
            //echo "<option value='$m[Id_mascota]'>$m[Nombre]</option>";
           //}
            return $respuesta->fetch_assoc();

            /*select m.Nombre, Id_mascota from mascotas
           */ 
        }
     }
     
         
     
     
?>