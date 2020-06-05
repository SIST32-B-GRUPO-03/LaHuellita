<?php
    require ("conexion.php");

    class Clientes extends Conexion{
        private $nombre;
        private $apellido;
        private $telefono;

       // public function setNombre($nombre){
       //     $this->nombre=parent::blackList($nombre);
       // }
       // public function setApellido($apellido){
       //     $this->apellido=parent::blackList($apellido);
       // }
       // public function setTelefono($telefono){
       //     $this->telefono=parent::blackList($telefono);
      //  }
        public function insert($nombre,$apellido,$telefono){

            $this->nombre=parent::blackList($nombre);
            $this->apellido=parent::blackList($apellido);
            $this->telefono=parent::blackList($telefono);

            $sql="INSERT INTO clientes
            (Nombre_Cliente, Apelido_Cliente, Telefono)
            VALUES('$this->nombre', '$this->apellido', '$this->telefono')";
            parent::ejecutar($sql);     
        }
        public function select($name){
            $sql="SELECT Id_Cliente, Nombre_cliente, Apelido_Cliente, Telefono FROM clientes where Nombre_cliente like '%$name%'";
            return parent::ejecutar($sql);
        }
    }
?>