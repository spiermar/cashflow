<%@ page import="com.martinspier.cashflow.Account" %>

<div class="form-group ${invalid ? 'error' : ''} required">
	<label class="col-md-2 control-label" for="name">
		<g:message code="account.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-md-4">
		<g:textField name="name" required="" class="form-control" value="${accountInstance?.name}" />
		<g:if test="${invalid}"><span class="help-block">${errors.join('<br>')}</span></g:if>
	</div>
</div>

<div class="form-group ${invalid ? 'error' : ''} ">
	<label class="col-md-2 control-label" for="institution">
		<g:message code="account.institution.label" default="Institution" />
	</label>
	<div class="col-md-4">
		<g:textField name="institution" class="form-control" value="${accountInstance?.institution}" />
		<g:if test="${invalid}"><span class="help-block">${errors.join('<br>')}</span></g:if>
	</div>
</div>

<div class="form-group ${invalid ? 'error' : ''} ">
	<label class="col-md-2 control-label" for="number">
		<g:message code="account.number.label" default="Number" />
	</label>
	<div class="col-md-4">
		<g:textField name="number" class="form-control" value="${accountInstance?.number}" />
		<g:if test="${invalid}"><span class="help-block">${errors.join('<br>')}</span></g:if>
	</div>
</div>

<div class="form-group ${invalid ? 'error' : ''} required">
	<label class="col-md-2 control-label" for="type">
		<g:message code="account.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-md-4">
		<g:select name="type" class="form-control" from="${['Checking','Savings','Brokerage']}" required="" value="${accountInstance?.type}" />
		<g:if test="${invalid}"><span class="help-block">${errors.join('<br>')}</span></g:if>
	</div>
</div>


