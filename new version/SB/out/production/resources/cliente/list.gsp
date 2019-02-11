<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="template">
		<g:set var="entityName" value="${message(code: 'cliente.label', default: 'Cliente')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		<asset:stylesheet src="application.css" />
   		<asset:javascript src="application.js" />
	</head>
	<body>
    <h3></h3>
    <div class="col-md-12">
        <div class="row">
            <div class="col-md-12">
                <div class="content-panel" >
                    <div class="col-md-12">
                        <div class="col-sm-4">
                            <h4><i class="fa fa-angle-right"></i> Lista de Clientes</h4>
                            <hr>
                        </div>
                        <div class="col-sm-8">
                            <a class="btn btn-theme03" href="/Sistema-Biblioteca/cliente/create"
                               role="button"><i class="fa fa-plus"></i> Nuevo Cliente</a>
                        </div>
<<<<<<< HEAD

                    </div>
=======
                    </div>
                	</div>
                    <div class="row">
>>>>>>> eda329afa484f2a869bd0b1eb27eba218f3f7fdb
                    ${tom}

                        	<table id="list-cliente" class="table table-striped table-advance table-hover" cellspacing="0"
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
	</body>
</html>
