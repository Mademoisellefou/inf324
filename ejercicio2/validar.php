<link rel="stylesheet" href="css/style.css">
<?php
    include "conectar.inc.php";
    if($_POST["usuario"]!="" && $_POST["password"]!=""){
        $usuario=$_POST["usuario"];
        $password=$_POST["password"];
        $sql="select * from usuario where usuario='".$usuario."' and password='".$password."'";
        $resultado=mysqli_query($conn, $sql);
        $fila=mysqli_fetch_array($resultado);
        if($fila["CI"]==""){
            header("Location: index.php");
        }
        else{
            $sql="select * from nota where CI=".$fila["CI"];
            $notas=mysqli_query($conn, $sql);
            // obtener nombre de la persona
            $sql="select * from persona where CI=".$fila["CI"];
            $resultado=mysqli_query($conn, $sql);
            $dato=mysqli_fetch_array($resultado);
            echo "<div class='container'>";
                echo "<h1>Bienvenido</h1>";
                echo "<h2>".$dato["nombre"]."</h2>";
                echo "<table  id='nota' >";
                        echo "<tr>";
                            echo "<th>MATERIA</th>";
                            echo "<th>PRIMER NOTA</th>";
                            echo "<th>SEGUNDA NOTA</th>";
                            echo "<th>TERCERA NOTA</th>";
                            echo "<th>NOTA FINAL</th>";
                        echo "</tr>";

                        while($fila=mysqli_fetch_array($notas)) {
                        echo "<tr>";
                        echo "<td>".$fila["sigla"]."</td>";
                        echo "<td>".$fila["nota1"]."</td>";
                        echo "<td>".$fila["nota2"]."</td>";
                        echo "<td>".$fila["nota3"]."</td>";
                        echo "<td>".$fila["notafinal"]."</td>";
                        echo "</tr>";
                        }
                echo "</table>";
            echo "</div>";





        }
   }
   else{
    header("Location: index.php");
   }


?>


