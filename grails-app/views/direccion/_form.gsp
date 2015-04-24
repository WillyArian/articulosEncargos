<%@ page import="articulosEncargos.Direccion" %>



<div class="fieldcontain ${hasErrors(bean: direccionInstance, field: 'numero', 'error')} required">
	<label for="numero">
		<g:message code="direccion.numero.label" default="Numero" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numero" type="number" value="${direccionInstance.numero}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: direccionInstance, field: 'calle', 'error')} required">
	<label for="calle">
		<g:message code="direccion.calle.label" default="Calle" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="calle" required="" value="${direccionInstance?.calle}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: direccionInstance, field: 'comunidad', 'error')} required">
	<label for="comunidad">
		<g:message code="direccion.comunidad.label" default="Comunidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="comunidad" required="" value="${direccionInstance?.comunidad}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: direccionInstance, field: 'ciudad', 'error')} required">
	<label for="ciudad">
		<g:message code="direccion.ciudad.label" default="Ciudad" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="ciudad" required="" value="${direccionInstance?.ciudad}"/>

</div>

