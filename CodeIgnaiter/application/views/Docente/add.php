<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<?php include "cabecera.php"; ?>
<div class="container">
<h1>Nuevo Docente</h1>
<form action="<?php echo base_url(); ?>nuevo-docente/save"  method="POST">
    <label for="fname">Nombre completo:</label>
    <input type="text" id="nombreC" name="nombreC" 
    placeholder="Nombre completo" value="<?php echo set_value('nombreC'); ?>">
    <label for="fname">Password:</label>
    <label for="">👁️mayor a 8 caracters</label>
    <input type="text" id="password" name="password" 
    placeholder="password" value="<?php echo set_value('password'); ?>">
    <input type="submit" value="REGISTRARSE">
  </form>
</div>
<?php include "footer.php"; ?>
