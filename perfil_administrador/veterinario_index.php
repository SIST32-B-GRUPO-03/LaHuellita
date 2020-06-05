<?php
	include("../menu.php");
?>
<!DOCTYPE html>
<html>
<head>
	<title>Formulario Cliente</title>
	 <!-- Bootstrap CSS CDN -->
        <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="../font-awesome/css/all.css">
        <link rel="stylesheet" href="../css/menu-estilos.css">
        <link rel="stylesheet" type="text/css" href="../css/estilos-formularios.css">
</head>
<body>
	
	<div class="container shadow p-3 mb-5 bg-white rounded">
		<div class="row justify-content-end">
			<div class="col-4 col-lg-4 col-md-6 col-sm-12 col-xs-12">
				<a href="clientes_agregar"><button type="button" class="btn btn-agg" name="agregarCliente"><i class="fas fa-plus"></i>Nuevo veterinario</button></a>
			</div>
		</div>
		<hr class="line">
		<div class="row justify-content-center">
			<div class="col-4 col-lg-4 col-md-6 col-sm-12 col-xs-12">
				<h4 class="title-page">Registro de veterinarios</h4>
			</div>
		</div>
		<div class="table-responsive">
			<table class="table table-striped">
				
					<tr>
				    <th>Id veterinario</th>
					<th>Nombre</th>
					<th>Apellidos</th>
					<th>Número telefónico</th>
					<th>Opciones</th>
					</tr>
				
				</tr>

				
					<tr>
					<td>"Cod/"</td>
					<td>"Cod/"</td>
					<td>"Cod/"</td>
					<td>"Cod/"</td>
					<td><button type="button" class="btn btn-forms" name="verInfoCliente"><i class="far fa-edit"></i>Editar</button></td>
					
					</tr>
			</table>
		</div>
		</div>
	</div>


		

<!-- jQuery CDN -->
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>

       
</body>
</html>