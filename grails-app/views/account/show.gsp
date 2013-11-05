<%@ page import="com.martinspier.cashflow.Account" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<r:require modules="bootstrap"/>
		<g:set var="entityName" value="${message(code: 'account.label', default: 'Account')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="page-header">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
		</div>
		<div class="row">
            <div class="col-md-12">
                <div class="btn-toolbar" style="margin: 0;">
                    <g:link class="btn btn-default" action="list"><i class="glyphicon glyphicon-list"></i> <g:message code="default.list.label" args="[entityName]" /></g:link>
                    <g:link class="btn btn-default" action="create"><i class="glyphicon glyphicon-plus"></i> <g:message code="default.new.label" args="[entityName]" /></g:link>
                </div>
            </div>
		</div>
		<hr>
		<div class="row">
			<div class="col-md-12">
				<g:if test="${flash.message}">
				<bootstrap:alert class="alert-info">${flash.message}</bootstrap:alert>
				</g:if>
                <dl class="dl-horizontal">
                    <dt><g:message code="account.name.label" default="Name" /></dt>
                    <dd>${accountInstance?.name}</dd>
                    <dt><g:message code="account.institution.label" default="Institution" /></dt>
                    <dd>${accountInstance?.institution}</dd>
                    <dt><g:message code="account.number.label" default="Number" /></dt>
                    <dd>${accountInstance?.number}</dd>
                    <dt><g:message code="account.type.label" default="Type" /></dt>
                    <dd>${accountInstance?.type}</dd>
                </dl>
                <hr>
				<div class="row">
					<div class="col-md-12">
						<g:form>
							<g:hiddenField name="id" value="${accountInstance?.id}" />
							<div class="btn-toolbar" style="margin: 0;">
								<g:link class="btn btn-default" action="edit" id="${accountInstance?.id}">
									<i class="glyphicon glyphicon-pencil"></i>
									<g:message code="default.button.edit.label" default="Edit" />
								</g:link>
								<a href="#deleteModal" class="btn btn-danger" data-toggle="modal"><i class="glyphicon glyphicon-trash"></i> <g:message code="default.button.delete.label" default="Delete" /></a>
							</div>
							<modal:delete id="${accountInstance?.id}" entityName="${entityName}" />
						</g:form>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
