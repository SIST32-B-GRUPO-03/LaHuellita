<?php
require ("Clientes.php");

$nombre=$_GET["dato"];
$Clientes= new Clientes();
$salida='<table class="table table-striped">
				
<tr>
<th>Id cliente</th>
<th>Nombre</th>
<th>Apellidos</th>
<th>Número telefónico</th>
<th>Opciones</th>
</tr>

</tr>';
					
		$Cliente=$Clientes->select($nombre);
		if (!$Cliente==null) {
			
			while($m=$Cliente->fetch_assoc()){
				$salida.= "<tr>";
				$salida.= "
				<td>$m[Id_Cliente]</td>
				<td>$m[Nombre_cliente]</td>
				<td>$m[Apelido_Cliente]</td>
				<td>$m[Telefono]</td>";
				$salida.= "<td><button type='button' class='btn btn-forms' name='verInfoCliente'><i class='far fa-edit'></i>Editar</button></td>
                </tr>";
            }
        }
                
		echo $salida.="</tr>";
   
?>