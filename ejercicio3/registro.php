
<?php include "cabecera.php"; 
    echo "<h3>Bienvenid(o/a)</h3>";
	include "conexion.inc.php";
    if($_POST["iddoc"]!="" && $_POST["password"]!=""){
        // iddoc 1028
        $iddoc=$_POST["iddoc"];
        // password 12ab
        $password=$_POST["password"];
        $sql="select m.sigla from docente d,materia m where d.iddoc=".$iddoc." and m.iddoc=d.iddoc and d.password='".$password."'";
        $resultado=mysqli_query($conn, $sql);

            if($resultado->num_rows === 0)
            {
            echo "<h3>Lo sentimos pero no tiene materias hasta el momento</h3>";
            }
            else
            {
                echo "<div class='container'>";
                echo "<table  id='notas' class='tnota'>";
                echo     "<tr>";
                echo         "<th>SIGLA</th>";
                echo         "<th>INFORMACION</th>";
                echo     "</tr>";
                    while($fila=mysqli_fetch_array($resultado)) {
                    echo "<tr>";
                    echo "<td>".$fila["sigla"]."</td>";
                    echo "<td>";
                    $url="informacion.php?materia=".$fila["sigla"];
                    echo "<a href=".$url.">media</a>";
                    echo"</td>";
                    echo "</tr>";
                }
                echo "</table>";
                echo "</div>";
            } 
    }
    else{
        header("Location: index.php");
    }
include "pie.php";
?>
