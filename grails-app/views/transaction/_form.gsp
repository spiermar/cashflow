<%@ page import="com.martinspier.cashflow.Transaction" %>

<div class="form-group ${invalid ? 'error' : ''} required">
	<label class="col-md-2 control-label" for="date">
		<g:message code="transaction.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-md-2">
		<g:bootstrapDatePicker name="date" class="form-control" value="${transactionInstance?.date}"  />
		<g:if test="${invalid}"><span class="help-block">${errors.join('<br>')}</span></g:if>
	</div>
</div>

<div class="form-group ${invalid ? 'error' : ''} required">
	<label class="col-md-2 control-label" for="amount">
		<g:message code="transaction.amount.label" default="Amount" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-md-2">
		<g:field type="number" step="0.01" name="amount" class="form-control" value="${fieldValue(bean: transactionInstance, field: 'amount')}" required=""/>
		<g:if test="${invalid}"><span class="help-block">${errors.join('<br>')}</span></g:if>
	</div>
</div>

<div class="form-group ${invalid ? 'error' : ''} required">
	<label class="col-md-2 control-label" for="description">
		<g:message code="transaction.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-md-4">
		<g:textField name="description" required="" class="form-control" value="${transactionInstance?.description}"/>
		<g:if test="${invalid}"><span class="help-block">${errors.join('<br>')}</span></g:if>
	</div>
</div>

<div class="form-group ${invalid ? 'error' : ''} ">
	<label class="col-md-2 control-label" for="category">
		<g:message code="transaction.category.label" default="Category" />
	</label>
	<div class="col-md-4">
		<g:select id="category" name="category.id" from="${com.martinspier.cashflow.Category.list()}" optionKey="id" value="${transactionInstance?.category?.id}" class="many-to-one form-control" noSelection="['null': 'None']"/>
		<g:if test="${invalid}"><span class="help-block">${errors.join('<br>')}</span></g:if>
	</div>
</div>

<div class="form-group ${invalid ? 'error' : ''} required">
	<label class="col-md-2 control-label" for="account">
		<g:message code="transaction.account.label" default="Account" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-md-4">
		<g:select id="account" name="account.id" from="${com.martinspier.cashflow.Account.list()}" optionKey="id" optionValue="name" required="" value="${transactionInstance?.account?.id}" class="many-to-one form-control"/>
		<g:if test="${invalid}"><span class="help-block">${errors.join('<br>')}</span></g:if>
	</div>
</div>

<div class="form-group ${invalid ? 'error' : ''} ">
	<label class="col-md-2 control-label" for="tags">
		<g:message code="transaction.tags.label" default="Tags" />
	</label>
	<div class="col-md-4">
		<g:select name="tags" from="${com.martinspier.cashflow.Tag.list()}" multiple="multiple" optionKey="id" size="5" value="${transactionInstance?.tags*.id}" class="many-to-many form-control"/>
		<g:if test="${invalid}"><span class="help-block">${errors.join('<br>')}</span></g:if>
	</div>
</div>

