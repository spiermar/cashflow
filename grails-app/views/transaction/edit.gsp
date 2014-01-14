<%@ page import="com.martinspier.cashflow.Transaction" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<r:require modules="bootstrap, tagmanager, datepicker"/>
		<g:set var="entityName" value="${message(code: 'transaction.label', default: 'Transaction')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="page-header">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
		</div>
		<div class="row">
			<div class="btn-toolbar" style="margin: 0;">
				<g:link class="btn btn-default" action="list"><i class="glyphicon glyphicon-list"></i> <g:message code="default.list.label" args="[entityName]" /></g:link>
				<g:link class="btn btn-default" action="create"><i class="glyphicon glyphicon-plus"></i>  <g:message code="default.new.label" args="[entityName]" /></g:link>
			</div>
		</div>
		<hr>
		<div class="row">
			<div class="col-md-12">
				<g:if test="${flash.message}">
				<bootstrap:alert class="alert-info">${flash.message}</bootstrap:alert>
				</g:if>
				<g:hasErrors bean="${transactionInstance}">
				<bootstrap:alert class="alert-error">
				<ul class="errors" role="alert">
					<g:eachError bean="${transactionInstance}" var="error">
					<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
					</g:eachError>
				</ul>
				</bootstrap:alert>
				</g:hasErrors>
				<g:form action="update" class="form-horizontal">
					<g:hiddenField name="id" value="${transactionInstance?.id}" />
					<g:hiddenField name="version" value="${transactionInstance?.version}" />
					<g:render template="form"/>
					<div class="form-group">
						<div class="col-md-4 col-md-offset-2">
							<g:link action="show" class="btn btn-default" id="${transactionInstance?.id}"><g:message code="default.button.cancel.label" default="Cancel" /></g:link>
							<button type="submit" class="btn btn-primary">
								<i class="glyphicon glyphicon-ok"></i>
								<g:message code="default.button.update.label" default="Update" />
							</button>
						</div>
					</div>
				</g:form>
			</div>
		</div>
	</body>
</html>