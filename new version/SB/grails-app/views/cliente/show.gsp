<%@ page import="com.sd.uni.biblioteca.cliente.ClienteController" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="template">
		<g:set var="entityName" value="${message(code: 'cliente.label', default: 'Cliente')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="container-fluid >
			<g:if test="${flash.message}">
				<div class="alert alert-warning" role="status">${flash.message}</div>
			</g:if>
        	<div class="row mt">
				<div class="col-md-12">

					<div class="showback">
						<h4><i class="fa fa-angle-right"></i> Información de la categoria</h4>
						<hr>
						<div class="row">
							<div class="col-md-6">
								<g:if test="${categoriaInstance?.descripcion}">
									<label><strong>Descripcion: </strong></label>
									<g:fieldValue class="form-control" bean="${categoriaInstance}"  field="descripcion"/>
								</g:if>
							</div>

						</div>

						<div class="row">
							<div class="col-md-6">
								<g:if test="${clienteInstance?.nombre}">
									<label><strong>Nombre: </strong></label>
									<g:fieldValue class="form-control" bean="${clienteInstance}"  field="nombre"/>
								</g:if>
							</div>
							<div class="col-md-6">
								<g:if test="${clienteInstance?.apellido}">
									<label><strong>Apellido: </strong></label>
									<g:fieldValue class="form-control" bean="${clienteInstance}"  field="apellido"/>
								</g:if>
							</div>
							<div class="col-md-6">
								<g:if test="${clienteInstance?.correo}">
									<label><strong>Correo: </strong></label>
									<g:fieldValue class="form-control" bean="${clienteInstance}"  field="correo"/>
								</g:if>
							</div>
							<div class="col-md-6">
								<g:if test="${clienteInstance?.direccion}">
									<label><strong>Dirección: </strong></label>
									<g:fieldValue class="form-control" bean="${clienteInstance}"  field="direccion"/>
								</g:if>
							</div>
							<div class="col-md-6">
								<g:if test="${clienteInstance?.ci}">
									<label><strong>CI:</strong></label>
									<g:fieldValue class="form-control" bean="${clienteInstance}"  field="ci"/>
								</g:if>
							</div>
							<div class="col-md-6">
								<g:if test="${clienteInstance?.telefono}">
									<label><strong>Teléfono: </strong></label>
									<g:fieldValue class="form-control" bean="${clienteInstance}"  field="telefono"/>
								</g:if>
							</div>
							<div class="col-md-6">
								<g:if test="${clienteInstance?.ruc}">
									<label><strong>RUC: </strong></label>
									<g:fieldValue class="form-control" bean="${clienteInstance}"  field="ruc"/>
								</g:if>
							</div>
							</div>
						</div>
						<g:form>
							</br>
							<div class="col-xs-12" align="right">
								<fieldset class="buttons">
									<g:link class="btn btn-success" action="edit" id="${clienteInstance?.id}"><i class="fa fa-pencil-square-o"></i> Editar</g:link>

								</fieldset>
							</div>
						</g:form>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
