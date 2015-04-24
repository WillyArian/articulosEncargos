
<%@ page import="articulosEncargos.Clientes" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'clientes.label', default: 'Clientes')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-clientes" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-clientes" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list clientes">
			
				<g:if test="${clientesInstance?.limiteCredito}">
				<li class="fieldcontain">
					<span id="limiteCredito-label" class="property-label"><g:message code="clientes.limiteCredito.label" default="Limite Credito" /></span>
					
						<span class="property-value" aria-labelledby="limiteCredito-label"><g:fieldValue bean="${clientesInstance}" field="limiteCredito"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientesInstance?.descuento}">
				<li class="fieldcontain">
					<span id="descuento-label" class="property-label"><g:message code="clientes.descuento.label" default="Descuento" /></span>
					
						<span class="property-value" aria-labelledby="descuento-label"><g:fieldValue bean="${clientesInstance}" field="descuento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientesInstance?.direcciones}">
				<li class="fieldcontain">
					<span id="direcciones-label" class="property-label"><g:message code="clientes.direcciones.label" default="Direcciones" /></span>
					
						<g:each in="${clientesInstance.direcciones}" var="d">
						<span class="property-value" aria-labelledby="direcciones-label"><g:link controller="direccion" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${clientesInstance?.saldo}">
				<li class="fieldcontain">
					<span id="saldo-label" class="property-label"><g:message code="clientes.saldo.label" default="Saldo" /></span>
					
						<span class="property-value" aria-labelledby="saldo-label"><g:fieldValue bean="${clientesInstance}" field="saldo"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:clientesInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${clientesInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
