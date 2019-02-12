
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="template">
		<g:set var="entityName" value="${message(code: 'cliente.label', default: 'Cliente')}" />
		<asset:stylesheet src="application.css" />
   		<asset:javascript src="application.js" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="container-fluid">
		<div class="row mt" id="create-cliente" >
			<div class="col-lg-12">

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${clienteInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${clienteInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
            	<div class="form-panel">
                	<div class="panel-heading ">
                    	<h4>
                        	<strong>Nuevo Cliente</strong>
                    	</h4>
                	</div>
                	<div class="panel-body">
						<g:form action="save" class= "formCliente" >
							<fieldset class="form">
								<g:render template="form"/>
							</fieldset>
							<fieldset class="buttons">
								<br> <br>
								<div class="col-xs-12" align="right">
									<button type="submit" class="btn btn-primary " name="create"
									value="${message(code: 'default.button.create.label', default: 'Create')}">
									<i class="fa fa-floppy-o"></i> Guardar</button>
									<a class="btn btn-default" href="/biblioteca-client/cliente/list"
														role="button"> Cancelar</a>
					
								</div>
							</fieldset>
						</g:form>
					</div>

			</div>
		</div>
		</div>
	</div>
	<asset:javascript src="jquery-1.8.3.min.js"/>
		<script type="text/javascript">
		$(document).on('click','#invitacion:checked',function(e){
			$('#invitacion').prop('value', true);
		});
		</script>
	</body>
</html>
