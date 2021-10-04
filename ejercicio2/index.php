<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/form.css">
    <title>Ingreso</title>
    
</head>
<body>
<div id="container">
<h1> Login </h1>
		<form method="POST" action="validar.php">
			<label for="">Usuario:</label>
			<input type="text" name="usuario" value=""><br>
            <label for="">Password:</label>
			<input type="password" name="password" value=""><br>
			<input type="submit" name="enviar" value="Enviar">
           
		</form>
</div>
</body>
</html>