<%@ page import="com.sd.uni.biblioteca.salida.SalidaController" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="template">
		<g:set var="entityName" value="${message(code: 'salida.label', default: 'Salida')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="col-md-12">
		<h3></h3>
        <div class="row">
        	<div class="col-md-12">
            	<div class="showback">
                	<h4><i class="fa fa-angle-right"></i> Información de Salida de Libros</h4>
                	<hr>
						<div class="row">
							<div class="col-md-6">
								<g:if test="${salidaInstance?.motivoSalida}">
								<label><strong>Motivo: </strong></label>
								<g:fieldValue class="form-control" bean="${salidaInstance}" field="motivoSalida.descripcion"/>
								</g:if>
							</div>
						
							<div class="col-md-6">
								<label><strong>Descripcion:</strong></label>
								<g:fieldValue class="form-control" bean="${salidaInstance}" field="descripcion"/>
							</div>
						</div>
						<br>
						<br>
						<div class="row">
							<div class="col-md-12">
								<table id="salidaDetallesList" class="table table-bordered" cellspacing="0" width="100%">
										<thead>
											<tr>
												<th>Libro</th>
												<th>Cantidad</th>
											</tr>
										</thead>
										<tbody id="salidaDetallesListTableBody">
											<g:each in="${salidaDetalles}" var="detalle" status="i">
											<g:if test="${detalle.salida?.id.equals(salidaInstance?.id)}">
												<tr>
												<td>
		                                                ${detalle.libro?.nombre}
		                                            </td>
		                                            
		                                            <td>
		                                                ${fieldValue(bean: detalle, field: "cantidad")}
		                                            </td>
		                                            
												</tr>
												</g:if>
										</g:each>
										</tbody>
									</table>	
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<g:form>
									<br>
									<fieldset class="buttons">
									<g:link class="btn btn-success" action="edit" id="${salidaInstance.getId()}"><i class="fa fa-pencil"></i> Editar</g:link>
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


