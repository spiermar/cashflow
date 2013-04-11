<%@ page import="com.martinspier.cashflow.Account" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<r:require modules="bootstrap"/>
		<g:set var="entityName" value="${message(code: 'account.label', default: 'Account')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="page-header">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
		</div>
		
		<div class="row-fluid">
			<div class="btn-toolbar" style="margin: 0;">
				<g:link class="create" action="create" class="btn"><i class="icon-plus"></i>  <g:message code="default.new.label" args="[entityName]" /></g:link>
			</div>
		</div>
		
		<hr/>
		
		<div class="row-fluid">
			<div class="span12">
				<g:if test="${flash.message}">
				<bootstrap:alert class="alert-info">${flash.message}</bootstrap:alert>
				</g:if>
				<br/>
				<g:if test="${accountInstanceTotal > 0}">
				<table class="table table-hover">
					<thead>
						<tr>
							<g:sortableColumn property="id" title="#" />
							<g:sortableColumn property="name" title="${message(code: 'account.name.label', default: 'Name')}" />
							<g:sortableColumn property="institution" title="${message(code: 'account.institution.label', default: 'Institution')}" />
							<g:sortableColumn property="number" title="${message(code: 'account.number.label', default: 'Number')}" />
							<g:sortableColumn property="type" title="${message(code: 'account.type.label', default: 'Type')}" />
							<th></th>
						</tr>
					</thead>
					<tbody>
					<g:each in="${accountInstanceList}" status="i" var="accountInstance">
						<tr>
							<td>${fieldValue(bean: accountInstance, field: "id")}</td>
							<td>${fieldValue(bean: accountInstance, field: "name")}</td>
							<td>${fieldValue(bean: accountInstance, field: "institution")}</td>
							<td>${fieldValue(bean: accountInstance, field: "number")}</td>
							<td>${fieldValue(bean: accountInstance, field: "type")}</td>
							<td><g:link action="show" id="${accountInstance.id}" class="btn">Show &raquo;</g:link></td>
						</tr>
					</g:each>
					</tbody>
				</table>
				<div class="pagination">
					<g:paginate total="${accountInstanceTotal}" />
				</div>
				</g:if>
				<g:else>
					<p class="lead">Nothing to see here!</p>
				</g:else>
			</div>
		</div>
		
	</body>
</html>
