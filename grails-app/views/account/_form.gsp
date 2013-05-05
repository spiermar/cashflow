<%@ page import="com.martinspier.cashflow.Account" %>

<div class="control-group ${invalid ? 'error' : ''} required">
	<label class="control-label" for="name">
		<g:message code="account.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<div class="controls">
		<g:textField name="name" required="" value="${accountInstance?.name}" />
		<g:if test="${invalid}"><span class="help-inline">${errors.join('<br>')}</span></g:if>
	</div>
</div>

<div class="control-group ${invalid ? 'error' : ''} required">
	<label class="control-label" for="institution">
		<g:message code="account.institution.label" default="Institution" />
		<span class="required-indicator">*</span>
	</label>
	<div class="controls">
		<g:textField name="institution" required="" value="${accountInstance?.institution}" />
		<g:if test="${invalid}"><span class="help-inline">${errors.join('<br>')}</span></g:if>
	</div>
</div>

<div class="control-group ${invalid ? 'error' : ''} required">
	<label class="control-label" for="number">
		<g:message code="account.number.label" default="Number" />
		<span class="required-indicator">*</span>
	</label>
	<div class="controls">
		<g:textField name="number" required="" value="${accountInstance?.number}" />
		<g:if test="${invalid}"><span class="help-inline">${errors.join('<br>')}</span></g:if>
	</div>
</div>

<div class="control-group ${invalid ? 'error' : ''} required">
	<label class="control-label" for="type">
		<g:message code="account.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<div class="controls">
		<g:select name="type" from="${['Checking','Savings','Broker']}" required="" value="${accountInstance?.type}" />
		<g:if test="${invalid}"><span class="help-inline">${errors.join('<br>')}</span></g:if>
	</div>
</div>


