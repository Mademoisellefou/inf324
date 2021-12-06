<html>
	<head>
		<title>CEI</title>
        <link href="estilo.css" rel="stylesheet" type="text/css" />
	</head>
<body>
	<?php
	include "cabecera.inc.php";
	include "conexion.inc.php";
	$flujo=$_GET["flujo"];
	$proceso=$_GET["proceso"];
	$notramite=$_GET["notramite"];

	if(empty($flujo)){
		$inicio=$_GET["inicio"];
		$id=$_GET["id"];
		include 'condicional.php';
	}else{
	$sql="select * from flujoproceso where flujo='".$flujo."' and proceso='".$proceso."'";
	$resultado=mysqli_query($conn, $sql);
	$fila=mysqli_fetch_array($resultado);
	include $fila['formulario'].'.cab.inc.php';
	include 'botones.php';
	}
	?>

</body>
</html>