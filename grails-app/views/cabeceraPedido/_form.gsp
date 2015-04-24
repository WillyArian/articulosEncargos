<%@ page import="articulosEncargos.CabeceraPedido" %>



<div class="fieldcontain ${hasErrors(bean: cabeceraPedidoInstance, field: 'fechaPedido', 'error')} required">
	<label for="fechaPedido">
		<g:message code="cabeceraPedido.fechaPedido.label" default="Fecha Pedido" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaPedido" precision="day"  value="${cabeceraPedidoInstance?.fechaPedido}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: cabeceraPedidoInstance, field: 'clientes', 'error')} ">
	<label for="clientes">
		<g:message code="cabeceraPedido.clientes.label" default="Clientes" />
		
	</label>
	<g:select name="clientes" from="${articulosEncargos.Clientes.list()}" multiple="multiple" optionKey="id" size="5" value="${cabeceraPedidoInstance?.clientes*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cabeceraPedidoInstance, field: 'direcciones', 'error')} ">
	<label for="direcciones">
		<g:message code="cabeceraPedido.direcciones.label" default="Direcciones" />
		
	</label>
	<g:select name="direcciones" from="${articulosEncargos.Direccion.list()}" multiple="multiple" optionKey="id" size="5" value="${cabeceraPedidoInstance?.direcciones*.id}" class="many-to-many"/>

</div>

