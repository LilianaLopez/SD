<%@ page import="com.sd.uni.biblioteca.cliente.ClienteController" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="template">
		<g:set var="entityName" value="${message(code: 'cliente.label', default: 'Cliente')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="container  col-md-9">
			<g:if test="${flash.message}">
				<div class="alert alert-warning" role="status">${flash.message}</div>
			</g:if>
        	<div class="row">
            	<div class="panel panel-default">		
                	<div class="panel-heading">
						<div class="row">
	                    	<h4 class="col-md-10">
	                        	<strong>Cliente</strong>
	                    	</h4>
                    		<g:link action="create" class="btn btn-primary" >
                         	<i class="fa fa-plus"></i>  Nuevo Cliente </g:link></td>
                         </div>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-md-6">
								<g:if test="${clienteInstance?.nombre}">
									<label>Nombre<span class="required-indicator">*</span></label>
									<g:fieldValue class="form-control" bean="${clienteInstance}"  field="nombre"/>
								</g:if>
								<g:if test="${clienteInstance?.apellido}">
									<label>Apellido<span class="required-indicator">*</span></label>
									<g:fieldValue class="form-control" bean="${clienteInstance}"  field="apellido"/>
								</g:if>
								<g:if test="${clienteInstance?.correo}">
									<label>Correo<span class="required-indicator">*</span></label>
									<g:fieldValue class="form-control" bean="${clienteInstance}"  field="correo"/>
								</g:if>
								<g:if test="${clienteInstance?.direccion}">
									<label>Dirección<span class="required-indicator">*</span></label>
									<g:fieldValue class="form-control" bean="${clienteInstance}"  field="direccion"/>
								</g:if>
								<g:if test="${clienteInstance?.ci}">
									<label>CI<span class="required-indicator">*</span></label>
									<g:fieldValue class="form-control" bean="${clienteInstance}"  field="ci"/>
								</g:if>
								<g:if test="${clienteInstance?.telefono}">
									<label>Teléfono<span class="required-indicator">*</span></label>
									<g:fieldValue class="form-control" bean="${clienteInstance}"  field="telefono"/>
								</g:if>
								<g:if test="${clienteInstance?.ruc}">
									<label>RUC<span class="required-indicator">*</span></label>
									<g:fieldValue class="form-control" bean="${clienteInstance}"  field="ruc"/>
								</g:if>
							</div>
						</div>
						<g:form>
							</br>
							<div class="col-xs-12" align="right">
								<fieldset class="buttons">
									<g:link class="btn btn-success" action="edit" id="${clienteInstance?.id}"><i class="fa fa-pencil-square-o"></i> Editar</g:link>
									<a class="btn btn-default" href="/biblioteca-client/cliente/list" role="button"><i class="fa fa-reply"></i> Ir a lista</a>
								</fieldset>
							</div>
						</g:form>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
