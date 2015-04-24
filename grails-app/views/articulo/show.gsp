
<%@ page import="articulosEncargos.Articulo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'articulo.label', default: 'Articulo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-articulo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-articulo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list articulo">
			
				<g:if test="${articuloInstance?.descripcionArticulo}">
				<li class="fieldcontain">
					<span id="descripcionArticulo-label" class="property-label"><g:message code="articulo.descripcionArticulo.label" default="Descripcion Articulo" /></span>
					
						<span class="property-value" aria-labelledby="descripcionArticulo-label"><g:fieldValue bean="${articuloInstance}" field="descripcionArticulo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${articuloInstance?.fabricas}">
				<li class="fieldcontain">
					<span id="fabricas-label" class="property-label"><g:message code="articulo.fabricas.label" default="Fabricas" /></span>
					
						<g:each in="${articuloInstance.fabricas}" var="f">
						<span class="property-value" aria-labelledby="fabricas-label"><g:link controller="fabrica" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:articuloInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${articuloInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
