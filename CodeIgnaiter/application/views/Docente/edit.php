<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<?php include "cabecera.php"; ?>
<div class="container">
<form action="<?php echo base_url(); ?>docente/update/<?php echo $iddoc; ?>"  method="POST">
    <label for="fname">Nombre:</label>
    <input type="text" id="nombreC" name="nombreC" 
    placeholder="nombreC" value="<?php echo $nombreC; ?>">
    <input type="submit" value="GUARDAR">
  </form>
</div>
  <?php include "footer.php"; ?>