<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="nav">
		<g:set var="entityName" value="${message(code: 'cliente.label', default: 'Cliente')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		<asset:stylesheet src="application.css" />
   		<asset:javascript src="application.js" />
	</head>
	<body>
		<div class="container col-md-9">
        	<div class="row">
            	<div class="panel panel-default">
                	<div class="panel-heading ">
                		<div class="row">
	                    	<h4 class="col-md-10">
	                        	<strong>Lista de Clientes</strong>
	                    	</h4>
                    		<g:link action="create" class="btn btn-primary" >
                         	<i class="fa fa-plus"></i>  Nuevo Cliente </g:link></td>
                         </div>
                	</div>
                    <div class="row">
                    ${tom}
                    	<div class="col-sm-12">
                        	<table id="list-cliente" class="table table-bordered" cellspacing="0"
                                width="100%">
                            	<thead>
                                    <tr>
                                        <g:sortableColumn property="nombre" title="Nombre" />
                                        <g:sortableColumn property="apellido" title="Apellido" />
                                        <g:sortableColumn property="ci" title="CI" />
                                        <g:sortableColumn property="telefono" title="Teléfono" />
                                       
                                        <g:sortableColumn property="accion" title="Acción" />
                                    </tr>
                                </thead>
                                <tbody>
                                    <g:each in="${clienteInstanceList}" status="i"
                                        var="clienteInstance">
                                        <tr>
                                            <td>
                                                ${fieldValue(bean: clienteInstance, field: "nombre")}
                                            </td>
                                            
                                            <td>
                                                ${fieldValue(bean: clienteInstance, field: "apellido")}
                                            </td>
                                            
                                            <td>
                                                ${fieldValue(bean: clienteInstance, field: "ci")}
                                            </td>
                                            
                                            <td>
                                                ${fieldValue(bean: clienteInstance, field: "telefono")}
                                            </td>
                                            
                                            <td width="80" class="center"><g:link action="edit"
                                                class="btn btn-success" id="${clienteInstance.getId()}">
                                                 <i class="fa fa-pencil-square-o"></i> Editar</g:link>
                                                 </td>
                                            </tr>

                                    </g:each>
                                
								</tbody>
						</table>
						<div class="pagination">
							<g:paginate total="${clienteInstanceTotal}" />
						</div>
					</div>
				</div>              
        	</div>
    	</div>
    </div>
	</body>
</html>
