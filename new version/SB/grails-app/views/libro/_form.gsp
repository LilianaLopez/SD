
<div class="row">

	<div class="col-md-6">
		<div class="form-group">
			<label class="col-sm-2 col-sm-2 control-label">Nombre*</label>
			<div class="col-sm-10">
				<g:textField type="text" maxlength="100"  placeholder=" Ingrese el nombre"  class="form-control" required="" name="nombre" value="${libroInstance?.nombre }"/>
			</div>
		</div>
	</div>
	
	<div class="col-md-6">
		<div class="form-group">
			<label class="col-sm-2 col-sm-2 control-label">Año*</label>
			<div class="col-sm-10">
				<g:textField  class="form-control" type="number" maxlength="4" placeholder=" Año del libro" required="true" name="anho" value="${libroInstance?.anho }"/>
			</div>
		</div>
	</div>
	<div class="col-md-6">
		<div class="form-group">
			<div class="fieldcontain ${hasErrors(bean: libroInstance, field: 'autor', 'error')} required">
				<label class="col-sm-2 col-sm-2 control-label">Autor*</label>
				<div class="col-sm-10">
					<g:select class="form-control" id="autor" name="autorId" from="${autors}" optionKey="id" optionValue="nombre" required="" value="${autorInstance?.autor?.id}"/>
				</div>
			</div>
		</div>
	</div>
	<div class="col-md-6">
		<div class="form-group">
			<div class="fieldcontain ${hasErrors(bean: libroInstance, field: 'categoria', 'error')} required">
				<label class="col-sm-2 col-sm-2 control-label">Categoria*</label>
				<div class="col-sm-10">
					<g:select class="form-control" id="categoria" name="categoriaId" from="${categorias}" optionKey="id" optionValue="descripcion" required="" value="${categoriaInstance?.categoria?.id}"/>
				</div>
			</div>
		</div>
	</div>
	
	<div class="col-md-6">
		<div class="form-group">
			<label class="col-sm-2 col-sm-2 control-label">Cantidad*</label>
			<div class="col-sm-4">
				<g:textField type="number" maxlength="50" class="form-control" placeholder="Ingrese la cantidad"  required="true" name="cantidad" value="${libroInstance?.cantidad }" disabled="${mode == 'edit'}"/>
			</div>
		</div>
	</div>

</div>
