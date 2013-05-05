<%@ page import="com.martinspier.cashflow.Category" %>

<div class="control-group ${invalid ? 'error' : ''} required">
	<label class="control-label" for="name">
		<g:message code="category.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<div class="controls">
		<g:textField name="name" required="" value="${categoryInstance?.name}"/>
		<g:if test="${invalid}"><span class="help-inline">${errors.join('<br>')}</span></g:if>
	</div>
</div>

<div class="control-group ${invalid ? 'error' : ''} ">
	<label class="control-label" for="parent">
		<g:message code="category.parent.label" default="Parent" />
		
	</label>
	<div class="controls">
		<g:select id="parent" name="parent.id" from="${com.martinspier.cashflow.Category.list()}" optionKey="id" optionValue="name" value="${categoryInstance?.parent?.id}" class="many-to-one" noSelection="['null': 'None']"/>
		<g:if test="${invalid}"><span class="help-inline">${errors.join('<br>')}</span></g:if>
	</div>
</div>

