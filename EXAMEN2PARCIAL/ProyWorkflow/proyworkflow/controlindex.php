<?php
include "conexion.inc.php";
$usuario=$_GET["usuario"];
$contrasenia=$_GET["contrasenia"];
$sql="select * from usuarios where ci='".$usuario;
$sql.="' and contrasenia='".$contrasenia."'";
$resultado=mysqli_query($conn, $sql);
$fila=mysqli_fetch_array($resultado);
echo $fila["usuario"]; 
$nombre=$fila["usuario"]; 
if ($fila["ci"]==$usuario and $fila["contrasenia"]==$contrasenia)
{
	session_start();
	$_SESSION["ci"]=$usuario;
	$_SESSION["nombre"]=$nombre;
	if($fila["rol"]=='E'){
		header("Location: bandeja.php");
	}else{
		if($fila["rol"]=='C'){
			$_SESSION["nombre"]='CEI';
			header("Location: bandejaCEI.php");

		}else{
			$_SESSION["nombre"]='Kardex';
			header("Location: bandejaKardex.php");
		}
	}
}
else
{
	header("Location: index.php");
}
?>
