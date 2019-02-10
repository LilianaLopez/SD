<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="template">
		<g:set var="entityName" value="${message(code: 'cliente.label', default: 'Cliente')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="edit-cliente" class="container col-md-9" role="main">
			
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
			<div class="row">
            	<div class="panel panel-default">
                	<div class="panel-heading ">
                    	<div class="row">
	                    	<h4 class="col-md-10">
	                        	<strong>Editar Cliente</strong>
	                    	</h4>
                    		<g:link action="create" class="btn btn-primary" >
                         	<i class="fa fa-plus"></i>  Nuevo Cliente </g:link></td>
                         </div>
                	</div>
                	<div class="panel-body">
						<g:form method="post" action="update" class= "formCliente"  >
							<g:hiddenField id= "id" name="id" value="${clienteInstance?.id}" />
							<fieldset class="form">
								<g:render template="form"/>
							</fieldset>
							<br> <br>
							<div class="col-xs-12" align="right">
								<fieldset class="buttons">
									<button type="submit" class="btn btn-primary " name="edit" value="${clienteInstance?.id}">
										<i class="fa fa-floppy-o"></i> Guardar
									</button>
									<a class="btn btn-default" href="/biblioteca-client/cliente/list" role="button"> Cancelar</a>
								</fieldset>
							</div>
						</g:form>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
