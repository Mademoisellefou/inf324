<div class="contenido">
			<div class="alineacionc">
                <div class ="formulario">
                    <div style="padding:20;" class="borde">
                    <br>Observación: 
                    <?php
                    echo $observacion;
                    ?>
                    </div>
                    
                    <br>
                    <b>Corrige los datos del Frente:</b> <br><br>
                    <div style="height: 34;" class="borde">
                        <div class="alineacion">
                            <div style="width: 150;">
                               Nombre 
                            </div>
                            <input style="height: 34;" type="text" name="nombrefrente" value="<?php echo $fila_c["nombre"] ?>" placeholder="Nombre completo" required>
                        </div>
                    </div> <br>
                    <div style="height: 34;" class="borde">
                        <div class="alineacion">
                            <div style="width: 150;">
                               Sigla
                            </div>
                            <input style="height: 34;" type="text" name="sigla" value="<?php echo $fila_c["sigla"] ?>" placeholder="Ejemplo: GOT" required>
                        </div>
                    </div> <br>
				</div>
                <!-- /== -->
                <div class ="formulario"><br>
                <b>Cargos:</b> <br><br>
                <hr>
                    <div class="fondosc"> 
                    Secretaria Ejecutiva <br><br>
                    <div style="height: 34;" class="borde">
                        <div class="alineacion">
                            <div style="width: 150;">
                               1er 
                            </div>
                            <input style="height: 34;" type="text" name="1ejecutivo" value="<?php echo $fila_c["1ejecutivo"] ?>" placeholder="Nombre completo" required>
                        </div>
                    </div> <br>
                    <div style="height: 34;" class="borde">
                        <div class="alineacion">
                            <div style="width: 150;">
                               2do  
                            </div>
                            <input style="height: 34;" type="text" name="2ejecutivo" value="<?php echo $fila_c["2ejecutivo"] ?>" placeholder="Nombre completo" required>
                        </div>
                    </div> <br>
                    <div style="height: 34;" class="borde">
                        <div class="alineacion">
                            <div style="width: 150;">
                               3er  
                            </div>
                            <input style="height: 34;" type="text" name="3ejecutivo" value="<?php echo $fila_c["3ejecutivo"] ?>" placeholder="Nombre completo" required>
                        </div>
                    </div> <br>
                    Honorable Consejo Facultativo <br><br>
                    <div style="height: 34;" class="borde">
                        <div class="alineacion">
                            <div style="width: 150;">
                               1° titular
                            </div>
                            <input style="height: 34;" type="text" name="1hcf" value="<?php echo $fila_c["1hcf"] ?>" placeholder="Nombre completo" required>
                        </div>
                    </div> <br>
                    <div style="height: 34;" class="borde">
                        <div class="alineacion">
                            <div style="width: 150;">
                               2° titular 
                            </div>
                            <input style="height: 34;" type="text" name="2hcf" value="<?php echo $fila_c["2hcf"] ?>" placeholder="Nombre completo" required>
                        </div>
                    </div> <br>
                    Consejo Académico Facultativo <br><br>
                    <div style="height: 34;" class="borde">
                        <div class="alineacion">
                            <div style="width: 150;">
                               1° titular
                            </div>
                            <input style="height: 34;" type="text" name="1caf" value="<?php echo $fila_c["1caf"] ?>" placeholder="Nombre completo" required>
                        </div>
                    </div> <br>
                    Honorable Consejo de Carrera <br><br>
                    <div style="height: 34;" class="borde">
                        <div class="alineacion">
                            <div style="width: 150;">
                               1° titular
                            </div>
                            <input style="height: 34;" type="text" name="1hcc" value="<?php echo $fila_c["1hcc"] ?>" placeholder="Nombre completo" required>
                        </div>
                    </div> <br>
                    <div style="height: 34;" class="borde">
                        <div class="alineacion">
                            <div style="width: 150;">
                               2° titular
                            </div>
                            <input style="height: 34;" type="text" name="2hcc" value="<?php echo $fila_c["2hcc"] ?>" placeholder="Nombre completo" required>
                        </div>
                    </div> <br>
                    <div style="height: 34;" class="borde">
                        <div class="alineacion">
                            <div style="width: 150;">
                               3° titular
                            </div>
                            <input style="height: 34;" type="text" name="3hcc" value="<?php echo $fila_c["3hcc"] ?>" placeholder="Nombre completo" required>
                        </div>
                    </div> <br>
                    Consejo Académico de Carrera <br><br>
                    <div style="height: 34;" class="borde">
                        <div class="alineacion">
                            <div style="width: 150;">
                               1° titular
                            </div>
                            <input style="height: 34;" type="text" name="1cac" value="<?php echo $fila_c["1cac"] ?>" placeholder="Nombre completo" required>
                        </div>
                    </div> <br>
       
                    </div>
                    <!--  -->
                </div>
			</div>
		</div>