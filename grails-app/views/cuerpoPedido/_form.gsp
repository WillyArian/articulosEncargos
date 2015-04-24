<%@ page import="articulosEncargos.CuerpoPedido" %>



<div class="fieldcontain ${hasErrors(bean: cuerpoPedidoInstance, field: 'cantidad', 'error')} required">
	<label for="cantidad">
		<g:message code="cuerpoPedido.cantidad.label" default="Cantidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cantidad" type="number" value="${cuerpoPedidoInstance.cantidad}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: cuerpoPedidoInstance, field: 'articulos', 'error')} ">
	<label for="articulos">
		<g:message code="cuerpoPedido.articulos.label" default="Articulos" />
		
	</label>
	<g:select name="articulos" from="${articulosEncargos.Articulo.list()}" multiple="multiple" optionKey="id" size="5" value="${cuerpoPedidoInstance?.articulos*.id}" class="many-to-many"/>

</div>

