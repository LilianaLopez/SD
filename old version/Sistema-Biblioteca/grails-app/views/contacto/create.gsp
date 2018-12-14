
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="nav">
		<g:set var="entityName" value="${message(code: 'contacto.label', default: 'Contacto')}" />
		<asset:stylesheet src="application.css" />
   		<asset:javascript src="application.js" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		
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
            	<div class="panel panel-default">
                	<div class="panel-heading ">
                    	<h4>
                        	<strong>Contáctanos</strong>
                    	</h4>
                	</div>
                	<div class="panel-body">
                		<p>
	       			 		</br>	       			 		
	       			 		<div class="col-md-6">
	       			 		</br>Contanos en que podemos ayudarte y nos ponemos en contacto con vos!!</br>
	       			 		</br>Completá el formulario y estaremos respondiendo 
	       			 		tu contacto por medio de correo electrónico.
	       			 		</div>
	       			 		<div class="col-md-6">
	       			 		<g:img dir="images" file="restaurante-la-casona.jpg" width="260" height="120" align="right"/> 
	       			 		</div>
	       			 		</br></br></br>
	       			 		
       			 		</p>
       			 		<div class="col-md-12">
       			 		</br></br>
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
	</body>
</html>
