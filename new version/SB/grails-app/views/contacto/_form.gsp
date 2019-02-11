<%@ page contentType="text/html;charset=UTF-8"%>

<div class="row">
	<div class="col-md-11">
		<div class="form-group">
			<label><Strong>Nombre: </label></Strong><br>
				<input class="form-control" type="text" maxlength="50"
				id="nombre" name="nombre" value="${contactoInstance?.nombre }" />
		</div>
		<div class="form-group">
			<label><Strong>Apellido: </Strong></label><br>
				<input class="form-control" type="text" maxlength="50"
				id="apellido" name="apellido"  value="${contactoInstance?.apellido }" />
		</div>
		<div class="form-group">
			<label><Strong>Correo:</Strong> </label><br>
				<input class="form-control" type="text" maxlength="30"
				id="correo" name="correo" value="${contactoInstance?.correo }" />
		</div>
		<div class="form-group">
			<label><Strong>Telefono: </Strong></label><br>
				<input class="form-control" type="text" maxlength="20"
				id="telefono" name="telefono" value="${contactoInstance?.telefono }" />
		</div>
		<div class="form-group">
			<label><Strong>Mensaje: </Strong></label><br>
				<g:textArea class="form-control" rows="5" cols="40" class="form-control"
			id="mensaje" name="mensaje" maxlength="250"
			value="${contactoInstance?.mensaje }"/>
		</div>
	</div>
</div>




