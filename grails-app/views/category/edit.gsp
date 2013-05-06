<%@ page import="com.martinspier.cashflow.Category" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<r:require modules="bootstrap"/>
		<g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="page-header">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
		</div>
		<div class="row-fluid">
			<div class="btn-toolbar" style="margin: 0;">
				<g:link class="btn" action="list"><i class="icon-list"></i> <g:message code="default.list.label" args="[entityName]" /></g:link>
				<g:link class="btn" action="create"><i class="icon-plus"></i>  <g:message code="default.new.label" args="[entityName]" /></g:link>
			</div>
		</div>
		<hr>
		<div class="row-fluid">
			<div class="span12">
				<g:if test="${flash.message}">
				<bootstrap:alert class="alert-info">${flash.message}</bootstrap:alert>
				</g:if>
				<g:hasErrors bean="${categoryInstance}">
				<bootstrap:alert class="alert-error">
				<ul class="errors" role="alert">
					<g:eachError bean="${categoryInstance}" var="error">
					<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
					</g:eachError>
				</ul>
				</bootstrap:alert>
				</g:hasErrors>
				<g:form action="update" class="form-horizontal">
					<g:hiddenField name="id" value="${categoryInstance?.id}" />
					<g:hiddenField name="version" value="${categoryInstance?.version}" />
					<g:render template="form"/>
					<div class="control-group">
						<div class="controls">
							<g:link action="show" class="btn" id="${categoryInstance?.id}"><g:message code="default.button.cancel.label" default="Cancel" /></g:link>
							<button type="submit" class="btn btn-primary">
								<i class="icon-ok icon-white"></i>
								<g:message code="default.button.update.label" default="Update" />
							</button>
						</div>
					</div>
				</g:form>
			</div>
		</div>
	</body>
</html>