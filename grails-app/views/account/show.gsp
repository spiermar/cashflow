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
				<g:link class="create" action="create" class="btn"><i class="icon-plus"></i>  <g:message code="default.new.label" args="[entityName]" /></g:link>
			</div>
		</div>
		
		<hr>
		
		<div class="row-fluid">
			<div class="span12">
				<g:if test="${flash.message}">
				<bootstrap:alert class="alert-info">${flash.message}</bootstrap:alert>
				</g:if>
				<g:form class="form-horizontal" >
					<g:render template="form" model="['disabled':'true']" />
					<div class="control-group">
						<div class="controls">
							<g:link class="btn" action="edit" id="${accountInstance?.id}"><g:message code="default.button.edit.label" default="<i class=\"icon-pencil\"></i> Edit" /></g:link>
							<a href="#deleteModal" role="button" class="btn btn-danger" data-toggle="modal"><g:message code="default.button.delete.label" default="<i class=\"icon-trash icon-white\"></i> Delete" /></a>
						</div>
					</div>
				</g:form>
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
			    <g:link class="btn btn-danger" action="delete" id="${accountInstance?.id}"><g:message code="default.button.delete.label" default="<i class=\"icon-trash icon-white\"></i> Delete" /></g:link>
			</div>
		</div>

	</body>
</html>
