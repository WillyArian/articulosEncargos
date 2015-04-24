<%@ page import="articulosEncargos.Fabrica" %>



<div class="fieldcontain ${hasErrors(bean: fabricaInstance, field: 'existencia', 'error')} required">
	<label for="existencia">
		<g:message code="fabrica.existencia.label" default="Existencia" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="existencia" required="" value="${fabricaInstance?.existencia}"/>

</div>

