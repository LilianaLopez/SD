
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="template">
		<g:set var="entityName" value="${message(code: 'contacto.label', default: 'Contacto')}" />
		<asset:stylesheet src="application.css" />
   		<asset:javascript src="application.js" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="col-md-12">
		<div id="create-contacto" class="container col-md-9" role="main">
			<g:if test="${flash.message}">
			<div class="alert alert-warning" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${contactoInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${contactoInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<div class="row">
            	<div class="form-panel">
                	<div class="panel-heading ">
                    	<h4>
                        	<strong>Envíenos su mensaje</strong>
                    	</h4>
					<p>
                	</div>
                	<div class="panel-body">
                		<p>

       			 		</p>
       			 		<div class="col-md-12">

						<g:form action="save" class= "formContact">
							<fieldset class="form">
								<g:render template="form"/>
							</fieldset>
							<fieldset class="buttons">
								<br> <br>
								<div class="col-xs-12" align="right">
									<button type="submit" class="btn btn-primary " name="create"
									value="${message(code: 'default.button.create.label', default: 'Create')}">
									<i class="fa fa-floppy-o"></i> Enviar</button>
									<a class="btn btn-default" href="/biblioteca-client/contacto/create"
														role="button"> Cancelar</a>
					
								</div>
							</fieldset>
						</g:form>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
	</body>
</html>
