<%@ page import="articulosEncargos.Clientes" %>



<div class="fieldcontain ${hasErrors(bean: clientesInstance, field: 'limiteCredito', 'error')} required">
	<label for="limiteCredito">
		<g:message code="clientes.limiteCredito.label" default="Limite Credito" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="limiteCredito" value="${fieldValue(bean: clientesInstance, field: 'limiteCredito')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientesInstance, field: 'descuento', 'error')} required">
	<label for="descuento">
		<g:message code="clientes.descuento.label" default="Descuento" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="descuento" value="${fieldValue(bean: clientesInstance, field: 'descuento')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientesInstance, field: 'direcciones', 'error')} ">
	<label for="direcciones">
		<g:message code="clientes.direcciones.label" default="Direcciones" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${clientesInstance?.direcciones?}" var="d">
    <li><g:link controller="direccion" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="direccion" action="create" params="['clientes.id': clientesInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'direccion.label', default: 'Direccion')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: clientesInstance, field: 'saldo', 'error')} required">
	<label for="saldo">
		<g:message code="clientes.saldo.label" default="Saldo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="saldo" value="${fieldValue(bean: clientesInstance, field: 'saldo')}" required=""/>

</div>

