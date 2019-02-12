<g:each in="${salidaInstanceList}" status="i" var="salidaInstance" >
	<tr >
		<td>
			<g:fieldValue class="form-control" bean="${salidaInstance}" field="motivoSalida.descripcion"/>
		</td>
		<td>
			<g:fieldValue class="form-control" bean="${salidaInstance}" field="fecha"/>
		</td>
		<td>
			<g:fieldValue class="form-control" bean="${salidaInstance}" field="descripcion"/>
		</td>
		<%--  <td>${fieldValue(bean: usuarioInstance, field: "usuario.id")}</td>        --%>
		<td class="center">
			<g:link action="show" class="btn btn-primary" id="${salidaInstance.getId()}"><i class="fa fa-eye"></i> Ver Detalle</g:link>
			<g:link action="edit" class="btn btn-success" id="${salidaInstance.getId()}"><i class="fa fa-pencil"></i> Editar</g:link>
		</td>
	</tr>
</g:each>