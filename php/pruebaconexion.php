<?php
require("conexion.php");

class casa extends Conexion{
    function asd(){
    
        $respuesta = parent::ejecutar("select DUI , Nombre from empleados e where Priviliegios = 2");
        
        return $respuesta;
    }
}
$hola=new casa;
//$sa=$hola->asd();


     echo "<select class='form-control'>";
	
	$doctores=$hola->asd();
	//$doctor=$doctores->fetch_assoc();
	while($doctor=$doctores->fetch_assoc()){
		echo "<option value=''>$doctor[Nombre]</option>";
		//echo "$doctor[Nombre]";
	}
    echo "</select>";
				

?>
