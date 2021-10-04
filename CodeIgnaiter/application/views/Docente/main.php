<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<?php include "cabecera.php"; ?>
<table id="docentes">
	<thead>
		<tr>
			<th>NRO </th>
            <th>Nombre Completo</th>
			<th>Opciones</th>
		</tr>
		</thead>
		<tbody>
			<?php $number=1; foreach($data as $key => $value): ?>
				<tr>
                        <th scope="row"><?php echo $number; ?></th>
						<?php $number=$number+1; ?>
                        <td><?php echo $value->nombreC; ?></td>
                        <td id="opciones">
						<a id="links" href="<?php echo base_url(); ?>docente/<?php echo $value->iddoc; ?>" class="">EDITAR</a> 
                        <a id="links" href="<?php echo base_url(); ?>docente/delete/<?php echo $value->iddoc; ?>" class="">|    ELIMINAR</a>
                        </td>
						
                </tr>
			<?php endforeach; ?>

		</tbody>


</table>
<br/>
<br/>
<br/>
<br/>
<a class="add" href="http://localhost/Melany/CodeIgnaiter/index.php/nuevo-docente/save">ADICIONAR</a>