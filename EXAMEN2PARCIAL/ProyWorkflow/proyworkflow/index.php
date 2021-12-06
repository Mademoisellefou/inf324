<html>
	<head>
		<title>CEI</title>
        <link href="estilo.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
        <?php include "cabecera.inc.php";?>   
        <div class="formulario"> 
            <form action="controlindex.php" method="GET">
            <div style="width:80%; margin: 20 auto">
                    <div class="borde">
                        <div class="alineacion">
                            <div class="img">
                                <img style="width:50;" src="./images/usuario.png"/> 
                            </div>
                            <input type="text" name="usuario" value="" placeholder="Usuario CI" required>
                        </div>
                    </div>
                    
                    <div class="borde">
                        <div class="alineacion">
                            <div class="img">
                                <img style="width:50;" src="./images/passwd.png"/> 
                            </div>
                            <input type="password" name="contrasenia" value="" placeholder="Password" required>
                        </div>
                    </div>
                    <br>
                <button type="submit" class="boton1">
                   Ingresar
                </button>
            </div>
                </form>
        </div>
    </body>
</html>






