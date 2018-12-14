<%@ page contentType="text/html;charset=UTF-8"%>

<div class="row">
	<div class="col-md-11">
		<div class="form-group">
			<label>Nombre: <span class="required-indicator">*</span></label><br> 
				<input class="form-control" type="text" maxlength="50"
				id="nombre" name="nombre" placeholder="Ingrese un nombre" value="${contactoInstance?.nombre }" />
		</div>
		<div class="form-group">
			<label>Apellido: <span class="required-indicator">*</span></label><br> 
				<input class="form-control" type="text" maxlength="50"
				id="apellido" name="apellido" placeholder="Ingrese un apellido" value="${contactoInstance?.apellido }" />
		</div>
		<div class="form-group">
			<label>Correo: <span class="required-indicator">*</span></label><br> 
				<input class="form-control" type="text" maxlength="30"
				id="correo" name="correo" placeholder="Ingrese un correo" value="${contactoInstance?.correo }" />
		</div>
		<div class="form-group">
			<label>Teléfono: </label><br> 
				<input class="form-control" type="text" maxlength="20"
				id="telefono" name="telefono" placeholder="Ingrese un telefono" value="${contactoInstance?.telefono }" />
		</div>
		<div class="form-group">
			<label>Mensaje: <span class="required-indicator">*</span></label><br> 
				<g:textArea class="form-control" rows="5" cols="40" class="form-control"
			id="mensaje" name="mensaje" maxlength="250"
			placeholder="Ingrese su mensaje" value="${contactoInstance?.mensaje }"/>
		</div>
	</div>
</div>




