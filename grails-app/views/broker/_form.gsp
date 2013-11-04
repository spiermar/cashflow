<%@ page import="com.martinspier.cashflow.Broker" %>



<div class="form-group ${invalid ? 'error' : ''} required">
	<label class="control-label" for="name">
		<g:message code="broker.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<div class="controls">
		<g:textField name="name" required="" value="${brokerInstance?.name}"/>
		<g:if test="${invalid}"><span class="help-block">${errors.join('<br>')}</span></g:if>
	</div>
</div>

<div class="form-group ${invalid ? 'error' : ''} ">
	<label class="control-label" for="address">
		<g:message code="broker.address.label" default="Address" />
		
	</label>
	<div class="controls">
		<g:select id="address" name="address.id" from="${com.martinspier.cashflow.Address.list()}" optionKey="id" value="${brokerInstance?.address?.id}" class="many-to-one" noSelection="['null': '']"/>
		<g:if test="${invalid}"><span class="help-block">${errors.join('<br>')}</span></g:if>
	</div>
</div>

<div class="form-group ${invalid ? 'error' : ''} ">
	<label class="control-label" for="phone">
		<g:message code="broker.phone.label" default="Phone" />
		
	</label>
	<div class="controls">
		<g:textField name="phone" value="${brokerInstance?.phone}"/>
		<g:if test="${invalid}"><span class="help-block">${errors.join('<br>')}</span></g:if>
	</div>
</div>

