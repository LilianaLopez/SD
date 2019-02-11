
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="template">
		<g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
       <div class="container-fluid">
        	<div class="row mt">
        		<div class="col-lg-12">
	            	<div class="form-panel">		
	                	<div class="panel-heading">
							<h4><strong>Editar Informacion</strong></h4>
						</div>
						<div class="panel-body">
							<g:form action="update" id="${usuarioInstance.getId()}" >
								<fieldset class="form-horizontal style-form">
									<g:render template="form"/>
								</fieldset>
								<fieldset class="buttons">
									<br>
									<button type="submit" class="btn btn-success" name="update" id="${usuarioInstance.getId()}"   >
	  									<i class="fa fa-pencil"></i> Actualizar
									</button>
								</fieldset>
							</g:form>						
						</div>
					</div>
				</div>
			</div>
		</div>
		
   
    <!-- Bootstrap Core JavaScript -->
    <script src=" ${request.contextPath}/template/js/bootstrap.min.js"></script>

</html>
