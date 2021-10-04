<?php include "cabecera.php"; ?>

<div class="container">
	<h3>Ingrese sus credenciales</h3>
<br>
<form method="POST" action="registro.php">
		Identificativo :
			<br>
			<input  class="input" type="text" name="iddoc" value=""/><br/>
		Password:
		<br>
		<input class="input" type="password" name="password" value=""/><br/>
		<br>
		<input class="button" type="submit" name="ingresar" value="INGRESAR"/>
</form>
		</div>
<?php include "pie.php"; ?>