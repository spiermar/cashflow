<%@ page import="com.martinspier.cashflow.Account" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<r:require modules="bootstrap"/>
		<g:set var="entityName" value="${message(code: 'account.label', default: 'Account')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="page-header">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
		</div>
		<div class="row">
            <div class="col-md-12">
			    <div class="btn-toolbar" style="margin: 0;">
				    <g:link class="btn btn-default" action="list"><i class="glyphicon glyphicon-list"></i> <g:message code="default.list.label" args="[entityName]" /></g:link>
                </div>
			</div>
		</div>
		<hr/>
		<div class="row">
			<div class="col-md-12">
				<g:if test="${flash.message}">
				<bootstrap:alert class="alert-info">${flash.message}</bootstrap:alert>
				</g:if>
				<g:hasErrors bean="${accountInstance}">
				<bootstrap:alert class="alert-error">
				<ul class="errors" role="alert">
					<g:eachError bean="${accountInstance}" var="error">
					<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
					</g:eachError>
				</ul>
				</bootstrap:alert>
				</g:hasErrors>
				<g:form action="save" class="form-horizontal" >
					<g:render template="form"/>
					<div class="form-group">
						<div class="controls">
							<g:link action="list" class="btn btn-default"><g:message code="default.button.cancel.label" default="Cancel" /></g:link>
							<button type="submit" class="btn btn-primary">
								<i class="glyphicon glyphicon-ok"></i>
								<g:message code="default.button.create.label" default="Create" />
							</button>
						</div>
					</div>
				</g:form>
			</div>
		</div>
	</body>
</html>
