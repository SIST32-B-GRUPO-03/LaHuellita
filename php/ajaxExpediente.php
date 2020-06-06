<?php

        require ("veterinario.php");
        $expedientes = new Expediente();
        $salida="table class='table table-striped'>
                <tr>
                <th>Id</th>
                <th>Paciente</th>
                <th>Observaciones</th>
                <th>Sintomas</th>
                <th>Vacunas</th>
                <th>Medicamentos consumidos</th>
                </tr>
            </tr>
                <tr>";
        $expediente=$expedientes->select();
        if(!$expediente==null){
            while($e=$expediente->fetch_assoc()){
                $salida.="<tr>";
                $salida.="<td>$e[id_expediente]</td>
                <td>$e[mascota_nombre]</td>
                <td>$e[obervaciones]</td>
                <td>$e[sintomas]</td>
                <td>$e[vacunas]</td>
                <td>$e[consume_medicamento]</td>";
                $salida.="<td><button type='button' class='btn btn-forms' name='verInfoExpnt'><i class='far fa-edit'></i>Editar</button></td>
                </tr>";
                
            }
        }
        
   
				
?>