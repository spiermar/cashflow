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
				<div class="row-fluid">
					<div class="span2">
						<p class="lead text-right"><strong><g:message code="account.name.label" default="Name" /></strong></p>
					</div>
					<div class="span10">
						<p class="lead">${accountInstance?.name}</p>
					</div>	
				</div>
				<div class="row-fluid">
					<div class="span2">
						<p class="lead text-right"><strong><g:message code="account.institution.label" default="Institution" /></strong></p>
					</div>
					<div class="span10">
						<p class="lead">${accountInstance?.institution}</p>
					</div>	
				</div>
				<div class="row-fluid">
					<div class="span2">
						<p class="lead text-right"><strong><g:message code="account.number.label" default="Number" /></strong></p>
					</div>
					<div class="span10">
						<p class="lead">${accountInstance?.number}</p>
					</div>	
				</div>
				<div class="row-fluid">
					<div class="span2">
						<p class="lead text-right"><strong><g:message code="account.type.label" default="Type" /></strong></p>
					</div>
					<div class="span10">
						<p class="lead">${accountInstance?.type}</p>
					</div>	
				</div>
				<br>
				<div class="row-fluid">
					<div class="span10 offset2">
						<div class="btn-toolbar" style="margin: 0;">
							<g:link class="btn" action="edit" id="${accountInstance?.id}"><i class="icon-pencil"></i> <g:message code="default.button.edit.label" default="Edit" /></g:link>
							<a href="#deleteModal" role="button" class="btn btn-danger" data-toggle="modal"><i class="icon-trash icon-white"></i> <g:message code="default.button.delete.label" default="Delete" /></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- Modal -->
		<div id="deleteModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-header">
			    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			    <h3 id="myModalLabel"><g:message code="default.button.delete.confirm.header" default="Are you sure?" /></h3>
			</div>
			<div class="modal-body">
			    <p><g:message code="default.button.delete.confirm.message" args="[entityName, accountInstance?.id]" default="Are you sure?" /></p>
			</div>
			<div class="modal-footer">
			    <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
			    <g:link class="btn btn-danger" action="delete" id="${accountInstance?.id}"><i class="icon-trash icon-white"></i> <g:message code="default.button.delete.label" default="Delete" /></g:link>
			</div>
		</div>

	</body>
</html>
