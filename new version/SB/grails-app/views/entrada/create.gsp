<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="template">
		<g:set var="entityName" value="Entrada de libros" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
		<asset:stylesheet src="application.css"/>
		<asset:javascript src="application.js"/>
	</head>
	<body>
        <div class="container-fluid">
        	<div class="row mt">
        		<div class="col-lg-12">
					<g:if test="${flash.message}">
						<div class="message" role="status">${flash.message}</div>
					</g:if>
					<g:hasErrors bean="${entradaInstance}">
						<ul class="errors" role="alert">
							<g:eachError bean="${entradaInstance}" var="error">
								<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
							</g:eachError>
						</ul>
					</g:hasErrors>
					<g:hasErrors bean="${entradaDetalleInstance}">
						<ul class="errors" role="alert">
							<g:eachError bean="${entradaDetalleInstance}" var="error">
								<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
							</g:eachError>
						</ul>
					</g:hasErrors>
	            	<div class="form-panel">		
	                	<div class="panel-heading">
							<h4><strong>Registrar entrada de libros</strong></h4>
						</div>
						<div class="panel-body">
							<g:form action="save" >
								<fieldset class="form-horizontal style-form">
									<g:render template="form"/>
									
								</fieldset>
				<br> 
				<hr>
				<br> 
				<fieldset>
				
					<div class="col-sm-12 no-padding">
						<div class="col-sm-4 no-padding" >
							<h4> <strong>Conjunto de libros</strong></h4>		
						</div>
						<div class="col-sm-8">
		                     <a href="#" class="addEntrada btn btn-theme03" role="button"><i class="fa fa-plus"></i>Nuevo</a>
		                 </div>
		       		</div>
		       		</fieldset>
	       			<br>
					<br> <fieldset>
					
							<table id="entradaDetallesList" class="table table-bordered" cellspacing="0" width="100%">
								<thead>
									<tr>
										<th>Libro</th>
										<th>Cantidad</th>
									</tr>
								</thead>
								<tbody id="entradaDetallesListTableBody">
									<g:each in="${entradaDetalles}" var="entrada" status="i">
										<tr <g:if test="${!entrada?.id}">newRow="true"</g:if> rowId="${i}">
											<g:if test="${entrada?.id}">  
												<g:hiddenField id="" name="entradaDetalles[$i].id" value="${entrada?.id}"/>
										</g:if>
								</tr>
								</g:each>
								</tbody>
							</table>	
						
						
							<div class="col-xs-12" align="right">
							
								<div   style="display:none;">
									<input class="form-control" type="text" id="counter" name="counter"  value='0' readonly />
								</div>
								
							
							</div>
							</fieldset>
								<fieldset class="buttons">
									<br>
									<button type="submit" class="btn btn-primary" name="create" value="${message(code: 'default.button.create.label', default: 'Create')}">
	  									<i class="fa fa-floppy-o"></i> Crear  
									</button>
								</fieldset>
							</g:form>						
						</div>
						
					</div>
					</div>	
					</div>
					</div>	
			
		<!-- Bootstrap Core JavaScript -->


		<asset:javascript src="jquery-1.8.3.min.js"/>
<script type="text/javascript">

 $(document).ready(function() {

	 $('.addEntrada').click(function(event){
		 event.preventDefault();
		 var allEntradas = $("#entradaDetallesListTableBody tr[rowId]");
	 		var rowId = 0;			
	 		
	 		if( allEntradas.length ) {			
	 			var maxId = 0;			
	         	allEntradas.each(function() {
	             	maxId = Math.max(maxId, parseInt($(this).attr('rowId')));
	         	});
	         	rowId = maxId+1;  
	         	        	            	
	 		} 			
	 		$('#counter').val(rowId+1);
	 		
		 var URL="${createLink(controller:'entrada',action:'newRow')}";
	   $.ajax({
		  type: 'POST',
		  url:URL,
		  data:  { id: rowId},
		  success: function(data){
			  	$("#entradaDetallesListTableBody").append('<tr newRow="true" rowId="' + rowId  + '">'+ data + '</tr>');   
		  	
	     }
	   });
	 });
	 })
 </script>
	</body>
	
</html>


