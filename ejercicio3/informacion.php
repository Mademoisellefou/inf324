<?php include "cabecera.php"; ?>
<h1>
<?php
echo $_GET["materia"];
$departamento = array(
    1  => "CHUQUISACA",
    2  => "LA PAZ",
    3  => "COCHABAMBA",
    4  => "ORURO",
    5  => "POTOSI",
    6  => "TARIJA",
    7  => "SANTA CRUZ",
    8  => "BENI",
    9  => "PANDO"
);
?>
</h1>
<table id="notas">
    <tr>
    <th>Departamento</th>
    <th>Media</th>
    </tr>
<?php
	$tipo=$_GET["materia"];
	if ($_GET["materia"]!="")
	{
        include "conexion.inc.php";
        for ($i = 1; $i <= 9; $i++) {
            // departamento
            echo "<tr>";
            echo "<td>".$departamento[$i]."</td>";
            $sql="select IFNULL(avg(n.notafinal),0) as media";
            $sql.=" from nota n,persona  p";
            $sql.=" where p.CI=n.CI and n.sigla='".$_GET["materia"]."' ";
            $sql.=" and p.departamento=".$i;
            $resultado=mysqli_query($conn, $sql);
            $fila=mysqli_fetch_array($resultado);
		    $media=$fila["media"];
            echo "<td>".$media."</td>";
            echo "</tr>";
        }
	}
?>
</table>