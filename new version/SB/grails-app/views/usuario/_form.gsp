
<div class="row">

	<div class="col-md-6">
		<div class="form-group">
			<label class="col-sm-2 col-sm-2 control-label">Nombre*</label>
			<div class="col-sm-10">
				<g:textField class="form-control" placeholder="Ingrese un nombre" maxlength="50" required = "true" type = "text" name="name" value="${usuarioInstance?.name }"/>
			</div>
		</div>
	</div>
	<div class="col-md-6">
		<div class="form-group">
			<label class="col-sm-2 col-sm-2 control-label">Usuario*</label>
			<div class="col-sm-10">
				<g:textField class="form-control" placeholder="Ingrese el nombre de usuario" maxlength="50" required = "true" type = "text" name="username" value="${usuarioInstance?.username }"/>
			</div>
		</div>
	</div>
	<div class="col-md-6">
		<div class="form-group">
			<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'role', 'error')} required">
				<label class="col-sm-2 col-sm-2 control-label">Rol*</label>
				<div class="col-sm-10">
					<g:select class="form-control" id="role" name="roleId" from="${rols}"  optionValue="authority"  optionKey="id" value="${roleInstance?.id}"/>
				</div>
			</div>
		</div>
	</div>
	<div class="col-md-6">
		<div class="form-group">
			<label class="col-sm-2 col-sm-2 control-label">Contraseña*</label>
			<div class="col-sm-10">	
				<g:textField class="form-control" placeholder="Ingrese una contraseña" maxlength="50" required = "true" type = "text" name="password" value="${usuarioInstance?.password}"/>
			</div>
		</div>
	</div>
	
	
	
	
	
	
	
	
</div>

