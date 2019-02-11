
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="template">

<title>Autor</title>
<asset:stylesheet src="application.css" />
<asset:javascript src="application.js" />
</head>
<body >
<h3></h3>
<div class="col-md-12">
<div class="row">
	<div class="col-md-12">
		<div class="content-panel" >
			<div class="col-md-12">
			<div class="col-sm-4">
			<h4><i class="fa fa-angle-right"></i> Lista de Autores</h4>
	       <hr>
	       </div>
	       	<div class="col-sm-8">
                        <a class="btn btn-theme03" href="/autor/create"
                        role="button"><i class="fa fa-plus"></i> Nuevo Autor</a>
                        </div>
	       </div>
			<g:if test="${flash.message}">
				<div class="message" role="status">
					${flash.message}
				</div>
				</g:if>
		<!--EL BUSCAR -->
			<div class="col-md-12">
				<g:form action="list" class="form-search">
					<div class="input-group col-md-4">
						<input type="text" name="text" class="form-control" maxlength="50" value="${text}"
							   placeholder="Buscar" /> <span
							class="input-group-btn">
						<button class="btn btn-info" name="list" value="Buscar">
							<span class=" glyphicon glyphicon-search"></span>
						</button>
					</span>
					</div>
				</g:form>
			</div>
			<!--END BUSCAR -->
				<table   id="list-report" class="table table-striped table-advance table-hover" cellspacing="0" width="100%">
					<thead >
					<tr>
						<g:sortableColumn property="descripcion" title="Descripcion" />
						<td>Acciones</td>
					</tr>
					</thead>
					<tbody id="updateMe">
						<g:each in="${autorInstanceList}" var="autorInstance" >
							<tr >
								<td>
									<g:fieldValue class="form-control" bean="${autorInstance}" field="nombre"/>
								</td>
								<td class="center">
									<g:link action="edit" class="btn btn-success" id="${autorInstance.getId()}"><i class="fa fa-pencil"></i> Editar</g:link>
								</td>
							</tr>
						</g:each>
								
					</tbody>
				</table>
				<div class="pagination"></div>
			<g:render template="/layouts/paginate"/>
			</div>
		</div>
	</div>
</div>
</body>
</html>