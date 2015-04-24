
<%@ page import="articulosEncargos.CabeceraPedido" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cabeceraPedido.label', default: 'CabeceraPedido')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-cabeceraPedido" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-cabeceraPedido" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list cabeceraPedido">
			
				<g:if test="${cabeceraPedidoInstance?.fechaPedido}">
				<li class="fieldcontain">
					<span id="fechaPedido-label" class="property-label"><g:message code="cabeceraPedido.fechaPedido.label" default="Fecha Pedido" /></span>
					
						<span class="property-value" aria-labelledby="fechaPedido-label"><g:formatDate date="${cabeceraPedidoInstance?.fechaPedido}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${cabeceraPedidoInstance?.clientes}">
				<li class="fieldcontain">
					<span id="clientes-label" class="property-label"><g:message code="cabeceraPedido.clientes.label" default="Clientes" /></span>
					
						<g:each in="${cabeceraPedidoInstance.clientes}" var="c">
						<span class="property-value" aria-labelledby="clientes-label"><g:link controller="clientes" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${cabeceraPedidoInstance?.direcciones}">
				<li class="fieldcontain">
					<span id="direcciones-label" class="property-label"><g:message code="cabeceraPedido.direcciones.label" default="Direcciones" /></span>
					
						<g:each in="${cabeceraPedidoInstance.direcciones}" var="d">
						<span class="property-value" aria-labelledby="direcciones-label"><g:link controller="direccion" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:cabeceraPedidoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${cabeceraPedidoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
