<?php

        require ("veterinario.php");
        $expedientes = new Expediente();
        $nombre=$_GET["dato"];
        $salida="<table class='table table-striped'>
                <tr>
                <th>Id</th>
                <th>Paciente</th>
                <th>Observaciones</th>
                <th>Sintomas</th>
                <th>Vacunas</th>
                <th>Medicamentos consumidos</th>
                <th>Opciones</th>
                </tr>
            </tr>
                <tr>";
        $expediente=$expedientes->select($nombre);
        if(!$expediente==null){
            while($e=$expediente->fetch_assoc()){
                $salida.="<tr>";
                $salida.="<td>$e[id_expendiente]</td>
                <td>$e[Nombre]</td>
                <td>$e[obervaciones]</td>
                <td>$e[sintomas]</td>
                <td>$e[vacunas]</td>
                <td>$e[consume_medicamento]</td>";
                
                $salida.="<td><button type='button' class='btn btn-forms' values='$e[id_expendiente]' name='verInfoExpnt'><i class='far fa-edit'></i>Editar</button>
                <button type='button' class='btn btn-forms' name='eliminarExpnt'><i class='far fa-trash-alt'></i>Eliminar</button></td>
                
                </tr>";
                
                
            }
        }
        echo $salida;
        
   
				
?>