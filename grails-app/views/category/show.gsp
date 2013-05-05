
<%@ page import="com.martinspier.cashflow.Category" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<r:require modules="bootstrap"/>
		<g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="page-header">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
		</div>
		<div class="row-fluid">
			<div class="btn-toolbar" style="margin: 0;">
				<g:link class="btn" action="list"><i class="icon-list"></i> <g:message code="default.list.label" args="[entityName]" /></g:link>
				<g:link class="create" action="create" class="btn"><i class="icon-plus"></i> <g:message code="default.new.label" args="[entityName]" /></g:link>
			</div>
		</div>
		<hr>
		<div class="row-fluid">
			<div class="span12">
				<g:if test="${flash.message}">
				<bootstrap:alert class="alert-info">${flash.message}</bootstrap:alert>
				</g:if>
				
				<g:if test="${categoryInstance?.name}">
				<div class="row-fluid">
					<div class="span2">
						<p class="lead text-right"><strong><g:message code="category.name.label" default="Name" /></strong></p>
					</div>
					<div class="span10">
						
						<p class="lead"><g:fieldValue bean="${categoryInstance}" field="name"/></p>
						
					</div>
				</div>
				</g:if>
				
				<g:if test="${categoryInstance?.parent}">
				<div class="row-fluid">
					<div class="span2">
						<p class="lead text-right"><strong><g:message code="category.parent.label" default="Parent" /></strong></p>
					</div>
					<div class="span10">
						
						<p class="lead"><g:link controller="category" action="show" id="${categoryInstance?.parent?.id}">${categoryInstance?.parent?.name}</g:link></p>
						
					</div>
				</div>
				</g:if>
				
				<br>
				<div class="row-fluid">
					<div class="span10 offset2">
						<g:form>
							<g:hiddenField name="id" value="${categoryInstance?.id}" />
							<div class="btn-toolbar" style="margin: 0;">
								<g:link class="btn" action="edit" id="${categoryInstance?.id}">
									<i class="icon-pencil"></i>
									<g:message code="default.button.edit.label" default="Edit" />
								</g:link>
								<a href="#deleteModal" class="btn btn-danger" data-toggle="modal"><i class="icon-trash icon-white"></i> <g:message code="default.button.delete.label" default="Delete" /></a>
							</div>
							<!-- Modal -->
							<div id="deleteModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel" aria-hidden="true">
								<div class="modal-header">
								    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="icon-remove"></i></button>
								    <h3 id="deleteModalLabel"><g:message code="default.button.delete.confirm.header" default="Are you sure?" /></h3>
								</div>
								<div class="modal-body">
								    <p><g:message code="default.button.delete.confirm.message" args="[entityName, categoryInstance?.id]" default="Are you sure?" /></p>
								</div>
								<div class="modal-footer">
								    <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
								    <g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" />
								</div>
							</div>
						</g:form>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
