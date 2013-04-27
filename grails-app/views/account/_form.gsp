<%@ page import="com.martinspier.cashflow.Account" %>

<div class="control-group">
	<label class="control-label" for="name">
		<g:message code="account.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<div class="controls">
		<g:textField name="name" required="" value="${accountInstance?.name}" />
	</div>
</div>

<div class="control-group">
	<label class="control-label" for="institution">
		<g:message code="account.institution.label" default="Institution" />
		<span class="required-indicator">*</span>
	</label>
	<div class="controls">
		<g:textField name="institution" required="" value="${accountInstance?.institution}" />
	</div>
</div>

<div class="control-group">
	<label class="control-label" for="number">
		<g:message code="account.number.label" default="Number" />
		<span class="required-indicator">*</span>
	</label>
	<div class="controls">
		<g:textField name="number" required="" value="${accountInstance?.number}" />
	</div>
</div>

<div class="control-group">
	<label class="control-label" for="type">
		<g:message code="account.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<div class="controls">
		<g:select name="type" from="${['Checking','Savings','Broker']}" required="" value="${accountInstance?.type}" />
	</div>
</div>


