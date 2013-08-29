<%@ page import="com.martinspier.cashflow.Transaction" %>

<div class="control-group ${invalid ? 'error' : ''} required">
	<label class="control-label" for="date">
		<g:message code="transaction.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<div class="controls">
		<g:bootstrapDatePicker name="date" value="${transactionInstance?.date}"  />
		<g:if test="${invalid}"><span class="help-inline">${errors.join('<br>')}</span></g:if>
	</div>
</div>

<div class="control-group ${invalid ? 'error' : ''} required">
	<label class="control-label" for="amount">
		<g:message code="transaction.amount.label" default="Amount" />
		<span class="required-indicator">*</span>
	</label>
	<div class="controls">
		<g:field type="number" step="0.01" name="amount" value="${fieldValue(bean: transactionInstance, field: 'amount')}" required=""/>
		<g:if test="${invalid}"><span class="help-inline">${errors.join('<br>')}</span></g:if>
	</div>
</div>

<div class="control-group ${invalid ? 'error' : ''} required">
	<label class="control-label" for="description">
		<g:message code="transaction.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<div class="controls">
		<g:textField name="description" required="" value="${transactionInstance?.description}"/>
		<g:if test="${invalid}"><span class="help-inline">${errors.join('<br>')}</span></g:if>
	</div>
</div>

<div class="control-group ${invalid ? 'error' : ''} ">
	<label class="control-label" for="category">
		<g:message code="transaction.category.label" default="Category" />
	</label>
	<div class="controls">
		<g:select id="category" name="category.id" from="${com.martinspier.cashflow.Category.list()}" optionKey="id" value="${transactionInstance?.category?.id}" class="many-to-one" noSelection="['null': 'None']"/>
		<g:if test="${invalid}"><span class="help-inline">${errors.join('<br>')}</span></g:if>
	</div>
</div>

<div class="control-group ${invalid ? 'error' : ''} required">
	<label class="control-label" for="account">
		<g:message code="transaction.account.label" default="Account" />
		<span class="required-indicator">*</span>
	</label>
	<div class="controls">
		<g:select id="account" name="account.id" from="${com.martinspier.cashflow.Account.list()}" optionKey="id" optionValue="name" required="" value="${transactionInstance?.account?.id}" class="many-to-one"/>
		<g:if test="${invalid}"><span class="help-inline">${errors.join('<br>')}</span></g:if>
	</div>
</div>

<div class="control-group ${invalid ? 'error' : ''} ">
	<label class="control-label" for="tags">
		<g:message code="transaction.tags.label" default="Tags" />
	</label>
	<div class="controls">
		<g:select name="tags" from="${com.martinspier.cashflow.Tag.list()}" multiple="multiple" optionKey="id" size="5" value="${transactionInstance?.tags*.id}" class="many-to-many"/>
		<g:if test="${invalid}"><span class="help-inline">${errors.join('<br>')}</span></g:if>
	</div>
</div>

