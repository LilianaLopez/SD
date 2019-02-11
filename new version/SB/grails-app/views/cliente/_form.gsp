<%@ page contentType="text/html;charset=UTF-8"%>

<div class="row">
	<div class="col-md-11">
		<div class="col-md-6">
			<div class="form-group">
				<label>Nombre: <span class="required-indicator">*</span></label><br>
				<input class="form-control" type="text" maxlength="50"
					   id="nombre" name="nombre" placeholder="Ingrese un nombre" value="${clienteInstance?.nombre }" />
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-group">
				<label>Apellido: <span class="required-indicator">*</span></label><br>
				<input class="form-control" type="text" maxlength="50"
					   id="apellido" name="apellido" placeholder="Ingrese un apellido" value="${clienteInstance?.apellido }" />
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-group">
				<label>Correo:</label><br>
				<input class="form-control" type="text" maxlength="30"
					   id="correo" name="correo" placeholder="Ingrese un correo" value="${clienteInstance?.correo }" />
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-group">
				<label>Dirección: <span class="required-indicator">*</span></label><br>
				<input class="form-control" type="text" maxlength="100"
					   id="direccion" name="direccion" placeholder="Ingrese una direccion" value="${clienteInstance?.direccion }" />
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-group">
				<label>C.I.: </span></label><br>
				<input type="number" class="form-control" min="1" max="2147483646"
					   id="ci" name="ci" placeholder="Ingrese un ci" value="${clienteInstance?.ci }" />
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-group">
				<label>Teléfono: <span class="required-indicator">*</span></label><br>
				<input class="form-control" type="text"
					   id="telefono" name="telefono" placeholder="Ingrese un telefono" value="${clienteInstance?.telefono }" />
			</div>
		</div>

			<div class="form-group">
				<label>RUC: </span></label><br>
				<input class="form-control" type="text"
					   id="ruc" name="ruc" placeholder="Ingrese un ruc" value="${clienteInstance?.ruc }" />
			</div>

		<div class="checkbox">
			<br><br><br><label><b>Le gustaria ser informado sobre nuestras invitaciones especiales?</b></label>
			<label>
				<input type="checkbox"
					   id="invitacion" name="invitacion" value="${clienteInstance?.invitacion }" />
				Aceptar</label>
		</div>
	</div>
</div>




