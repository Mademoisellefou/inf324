<html>
	<head>
		<title>Bandeja de Entrada</title>
        <link href="estilo.css" rel="stylesheet" type="text/css" />
	</head>
	<body>	
		<?php
		include "cabecera.inc.php";     
		session_start();
		include "conexion.inc.php";
		$sql="select * from seguimiento where usuario='".$_SESSION["nombre"]."' ";
		$sql.="and fechafin is null";
		$resultado=mysqli_query($conn, $sql);
		$fila=mysqli_fetch_array($resultado);
		?> 
		<div class="contenido">
			<div class="alineacionc">
				<div class ="formulario">
					<table>
						<?php 
							echo '<tr><td>CI</td><td>: '.$_SESSION["ci"].'</td></tr>';
							echo '<tr><td>Nombre</td><td>: '.$_SESSION["nombre"].'</td></tr>';
							include "date.inc.php";
							echo '<tr><td>Fecha</td><td>: '.$Date.'</td></tr>';
							echo '<tr><td>Hora</td><td>: '.$Time.'</td></tr>';
						?>
					</table>
				</div>
				<div>
					<div>
					<div style="background-color:#002c2c ; color:white;"class="formulario">
						Fecha de Inscripción: <br>
						24-11-21 al 16-11-21
					</div>
					<div style="background:none ; "class="formulario">
					<?php
						if(empty($fila)){
							$sql2="select * from seguimiento where usuario='".$_SESSION["nombre"]."' ";
							$resultado2=mysqli_query($conn, $sql2);
							$fila2=mysqli_fetch_array($resultado2);

							if(empty($fila2)){
								echo '<a style="padding:9px;"class="boton1" href="iniciar.inc.php"> Iniciar inscripcion</a>';
							}else{
								echo 'Tu solicitud ha sido enviada por favor espera los resultados';
							}
						}else{
							echo 'Inscripción iniciada';
						}
					?>
					</div>
					<?php
						$flujo='F1';
						$proceso='P1';
					?>
					</div>
					<div>
					<table class="tabla">
						<?php
						if(!empty($fila)){
							echo '<tr><th>Trámite</th><th>Flujo</th><th>Proceso</th><th>Fecha Inicio</th><th>Acción</th></tr>';
						}
						while($fila)
						{
							echo "<tr>";
							echo "<td>".$fila["notramite"]."</td>";
							echo "<td>".$fila["flujo"]."</td>";
							echo "<td>".$fila["proceso"]."</td>";
							echo "<td>".$fila["fechainicio"]."</td>";
							echo "<td><a ";
							echo "href='desflujo.php?flujo=$fila[flujo]&proceso=$fila[proceso]&notramite=$fila[notramite]'";
							echo ">Mostrar<a/></td>";
							echo "</tr>";
							$fila=mysqli_fetch_array($resultado);
						}	
						?>
					</table>
					</div>
				</div>
			</div>
		</div>

	</body>
</html>
