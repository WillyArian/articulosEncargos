<%@ page import="articulosEncargos.Articulo" %>



<div class="fieldcontain ${hasErrors(bean: articuloInstance, field: 'descripcionArticulo', 'error')} required">
	<label for="descripcionArticulo">
		<g:message code="articulo.descripcionArticulo.label" default="Descripcion Articulo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcionArticulo" required="" value="${articuloInstance?.descripcionArticulo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: articuloInstance, field: 'fabricas', 'error')} ">
	<label for="fabricas">
		<g:message code="articulo.fabricas.label" default="Fabricas" />
		
	</label>
	<g:select name="fabricas" from="${articulosEncargos.Fabrica.list()}" multiple="multiple" optionKey="id" size="5" value="${articuloInstance?.fabricas*.id}" class="many-to-many"/>

</div>

