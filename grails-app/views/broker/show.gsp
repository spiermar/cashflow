
<%@ page import="com.martinspier.cashflow.Broker" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<r:require modules="bootstrap"/>
		<g:set var="entityName" value="${message(code: 'broker.label', default: 'Broker')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="page-header">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
		</div>
		<div class="row">
			<div class="btn-toolbar" style="margin: 0;">
				<g:link class="btn btn-default" action="list"><i class="glyphicon glyphicon-list"></i> <g:message code="default.list.label" args="[entityName]" /></g:link>
				<g:link class="create" action="create" class="btn btn-default"><i class="glyphicon glyphicon-plus"></i> <g:message code="default.new.label" args="[entityName]" /></g:link>
			</div>
		</div>
		<hr>
		<div class="row">
			<div class="col-md-12">
				<g:if test="${flash.message}">
				<bootstrap:alert class="alert-info">${flash.message}</bootstrap:alert>
				</g:if>
				
				<g:if test="${brokerInstance?.name}">
				<div class="row">
					<div class="col-md-2">
						<p class="lead text-right"><strong><g:message code="broker.name.label" default="Name" /></strong></p>
					</div>
					<div class="col-md-10">
						
						<p class="lead"><g:fieldValue bean="${brokerInstance}" field="name"/></p>
						
					</div>
				</div>
				</g:if>
				
				<g:if test="${brokerInstance?.address}">
				<div class="row">
					<div class="col-md-2">
						<p class="lead text-right"><strong><g:message code="broker.address.label" default="Address" /></strong></p>
					</div>
					<div class="col-md-10">
						
						<p class="lead"><g:link controller="address" action="show" id="${brokerInstance?.address?.id}">${brokerInstance?.address?.encodeAsHTML()}</g:link></p>
						
					</div>
				</div>
				</g:if>
				
				<g:if test="${brokerInstance?.phone}">
				<div class="row">
					<div class="col-md-2">
						<p class="lead text-right"><strong><g:message code="broker.phone.label" default="Phone" /></strong></p>
					</div>
					<div class="col-md-10">
						
						<p class="lead"><g:fieldValue bean="${brokerInstance}" field="phone"/></p>
						
					</div>
				</div>
				</g:if>
				
				<br>
				<div class="row">
					<div class="col-md-10 col-md-offset-2">
						<g:form>
							<g:hiddenField name="id" value="${brokerInstance?.id}" />
							<div class="btn-toolbar" style="margin: 0;">
								<g:link class="btn btn-default" action="edit" id="${brokerInstance?.id}">
									<i class="glyphicon glyphicon-pencil"></i>
									<g:message code="default.button.edit.label" default="Edit" />
								</g:link>
								<a href="#deleteModal" class="btn btn-danger" data-toggle="modal"><i class="glyphicon glyphicon-trash"></i> <g:message code="default.button.delete.label" default="Delete" /></a>
							</div>
							<modal:delete id="${brokerInstance?.id}" entityName="${entityName}" />
						</g:form>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
