<div class="col-md-12">
	<div class="row">

		<div class="col-md-6">
			<div class="form-group">
				<div class="fieldcontain ${hasErrors(bean: salidaInstance, field: 'motivoSalida', 'error')} required">
					<label class="col-sm-4 col-sm-4 contmotivoSalida-label">Motivo Salida*</label>
					<div class="col-sm-8">
						<g:select class="form-control" id="motivoSalida" name="motivoSalidaId" from="${motivoSalidas}" optionKey="id" optionValue="descripcion" required="" value="${salidaInstance?.motivoSalida?.id}"/>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-6" style="display:none;">
			<div class="form-group">
				<label class="col-sm-2 col-sm-2 contmotivoSalida-label">Fecha*</label>
				<div class="col-sm-10">
					<g:formatDate date="${new Date()}" class="form-control" name="date" type="date" value="${salidaInstance?.fecha}" /></div>
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-group">
				<label class="col-sm-2 col-sm-2 contmotivoSalida-label">Descripcion*</label>
				<div class="col-sm-10">
					<g:textField class="form-control" placeholder="Ingrese una descripcion" maxlength="50" required = "true" type = "text" name="descripcion" value="${salidaInstance?.descripcion}"/>
				</div>
			</div>
		</div>

	</div>

</div>