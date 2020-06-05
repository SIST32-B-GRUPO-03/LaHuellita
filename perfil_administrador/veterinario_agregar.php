<?php
	include("../menu.php");
?>

<!DOCTYPE html>
<html>
<head>
	<title>Agregar cliente</title>
	    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="../font-awesome/css/all.css">
        <link rel="stylesheet" href="../css/menu-estilos.css">
        <link rel="stylesheet" type="text/css" href="../css/estilos-formularios.css">

        <style type="text/css">
        	/*Form clientes*/

            .bg-form{
	          background-color:  rgb(209,209,208);
	          padding: 10px;
	          width: 50%;
	          height: 100%;
	          margin-left: 250px;
             }

        </style>
</head>
<body>
	<div class="container shadow p-3 mb-5 bg-white rounded">
		<div class="row">
			<div class="col col-lg-12 col-md-8 col-sm-4">
				<div class="bg-form">
			<h4><svg class="bi bi-person-plus-fill" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor"                xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd" d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zm5-6a3 3 0 100-6 3 3 0 000 6zm7.5-3a.5.5 0 01.5.5v2a.5.5 0 01-.5.5h-2a.5.5 0 010-1H13V5.5a.5.5 0 01.5-.5z" clip-rule="evenodd"/>
                            <path fill-rule="evenodd" d="M13 7.5a.5.5 0 01.5-.5h2a.5.5 0 010 1H14v1.5a.5.5 0 01-1 0v-2z" clip-rule="evenodd"/>
                       </svg>Registrar nuevo veterinario</h4>
			<hr class="line">
			<form method="POST" action="clientes_agregar.php">
			<div class="row mt-4 justify-content-center">
				<div class="col-6">
					<label>DUI</label>
					<input type="text" name="DUI" class="form-control">
				</div>
		  </div>
			<div class="row mt-4 justify-content-center">
				<div class="col-6">
					<label>Nombre</label>
					<input type="text" name="Nombre" class="form-control">
				</div>
		  </div>
		  <div class="row mt-4 justify-content-center">
				<div class="col-6">
					<label>Apellido</label>
					<input type="text" name="Apellido" class="form-control">
				</div>
		  </div>
		  <div class="row mt-4 justify-content-center">
				<div class="col-6">
					<label>Usuario</label>
					<input type="number" name="nombre_cliente" class="form-control">
				</div>
		  </div>
		  <div class="row mt-4 justify-content-center">
				<div class="col-6">
					<input type="submit" name="enviarDatosCliente" class="btn btn-forms" value="Registrar">
					<input type="reset" name="cancelar" class="btn btn-forms" value="Limpiar">
				</div>
		  </div>
		</form>
	</div>
</div>
</div>
	</div>
	<!-- jQuery CDN -->
  <script type="text/javascript" src="js/jquery-3.3.1.js"></script>

</body>
</html>