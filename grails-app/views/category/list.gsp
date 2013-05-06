<%@ page import="com.martinspier.cashflow.Category" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<r:require modules="bootstrap"/>
		<g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}" />
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
				<g:if test="${categoryInstanceTotal > 0}">
				<table class="table table-hover">
					<thead>
						<tr>
							<g:sortableColumn property="id" title="#" />
							<g:sortableColumn property="name" title="${message(code: 'category.name.label', default: 'Name')}" />
							<g:sortableColumn property="parent" title="${message(code: 'category.parent.label', default: 'Parent')}" />	
							<th></th>				
						</tr>
					</thead>
					<tbody>
					<g:each in="${categoryInstanceList}" status="i" var="categoryInstance">
						<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
							<td>${fieldValue(bean: categoryInstance, field: "id")}</td>
							<td>${fieldValue(bean: categoryInstance, field: "name")}</td>
							<td><g:if test="${categoryInstance?.parent}">${fieldValue(bean: categoryInstance, field: "parent.name")}</g:if></td>
							<td><g:link action="show" id="${categoryInstance.id}" class="btn">Show &raquo;</g:link></td>
						</tr>
					</g:each>
					</tbody>
				</table>
				<div class="pagination">
					<g:paginate total="${categoryInstanceTotal}" />
				</div>
				</g:if>
				<g:else>
					<p class="lead">Nothing to see here!</p>
				</g:else>
			</div>
		</div>
	</body>
</html>
