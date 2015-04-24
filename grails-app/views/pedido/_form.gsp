<%@ page import="articulosEncargos.Pedido" %>



<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'cabeceras', 'error')} ">
	<label for="cabeceras">
		<g:message code="pedido.cabeceras.label" default="Cabeceras" />
		
	</label>
	<g:select name="cabeceras" from="${articulosEncargos.CabeceraPedido.list()}" multiple="multiple" optionKey="id" size="5" value="${pedidoInstance?.cabeceras*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'cuerpos', 'error')} ">
	<label for="cuerpos">
		<g:message code="pedido.cuerpos.label" default="Cuerpos" />
		
	</label>
	<g:select name="cuerpos" from="${articulosEncargos.CuerpoPedido.list()}" multiple="multiple" optionKey="id" size="5" value="${pedidoInstance?.cuerpos*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'fabricas', 'error')} ">
	<label for="fabricas">
		<g:message code="pedido.fabricas.label" default="Fabricas" />
		
	</label>
	<g:select name="fabricas" from="${articulosEncargos.Fabrica.list()}" multiple="multiple" optionKey="id" size="5" value="${pedidoInstance?.fabricas*.id}" class="many-to-many"/>

</div>

