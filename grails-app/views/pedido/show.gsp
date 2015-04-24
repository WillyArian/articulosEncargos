
<%@ page import="articulosEncargos.Pedido" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pedido.label', default: 'Pedido')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-pedido" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-pedido" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list pedido">
			
				<g:if test="${pedidoInstance?.cabeceras}">
				<li class="fieldcontain">
					<span id="cabeceras-label" class="property-label"><g:message code="pedido.cabeceras.label" default="Cabeceras" /></span>
					
						<g:each in="${pedidoInstance.cabeceras}" var="c">
						<span class="property-value" aria-labelledby="cabeceras-label"><g:link controller="cabeceraPedido" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${pedidoInstance?.cuerpos}">
				<li class="fieldcontain">
					<span id="cuerpos-label" class="property-label"><g:message code="pedido.cuerpos.label" default="Cuerpos" /></span>
					
						<g:each in="${pedidoInstance.cuerpos}" var="c">
						<span class="property-value" aria-labelledby="cuerpos-label"><g:link controller="cuerpoPedido" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${pedidoInstance?.fabricas}">
				<li class="fieldcontain">
					<span id="fabricas-label" class="property-label"><g:message code="pedido.fabricas.label" default="Fabricas" /></span>
					
						<g:each in="${pedidoInstance.fabricas}" var="f">
						<span class="property-value" aria-labelledby="fabricas-label"><g:link controller="fabrica" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:pedidoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${pedidoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
