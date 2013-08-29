
<%@ page import="com.martinspier.cashflow.Transaction" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<r:require modules="bootstrap"/>
		<g:set var="entityName" value="${message(code: 'transaction.label', default: 'Transaction')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="page-header">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
		</div>
		<div class="row-fluid">
			<div class="btn-toolbar" style="margin: 0;">
				<g:link action="create" class="btn"><i class="icon-plus"></i> <g:message code="default.new.label" args="[entityName]" /></g:link>
			</div>
		</div>
		<hr/>
		<div class="row-fluid">
			<div class="span12">
				<g:if test="${flash.message}">
				<bootstrap:alert class="alert-info">${flash.message}</bootstrap:alert>
				</g:if>
				<br/>
				<g:if test="${transactionInstanceTotal > 0}">
				<table class="table table-hover">
					<thead>
						<tr>
						
							<g:sortableColumn property="date" title="${message(code: 'transaction.date.label', default: 'Date')}" />
						
							<g:sortableColumn property="amount" title="${message(code: 'transaction.amount.label', default: 'Amount')}" />
						
							<g:sortableColumn property="description" title="${message(code: 'transaction.description.label', default: 'Description')}" />
						
							<th><g:message code="transaction.category.label" default="Category" /></th>
						
							<th><g:message code="transaction.account.label" default="Account" /></th>
						
							<th></th>
						</tr>
					</thead>
					<tbody>
					<g:each in="${transactionInstanceList}" status="i" var="transactionInstance">
						<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
							<td><g:formatDate format="MM/dd/yyyy" date="${transactionInstance?.date}" /></td>
						
							<td>${fieldValue(bean: transactionInstance, field: "amount")}</td>
						
							<td>${fieldValue(bean: transactionInstance, field: "description")}</td>
						
							<td>${fieldValue(bean: transactionInstance, field: "category")}</td>
						
							<td>${transactionInstance?.account?.name}</td>
						
							<td><g:link action="show" id="${transactionInstance.id}" class="btn">Show &raquo;</g:link></td>
						</tr>
					</g:each>
					</tbody>
				</table>
				<div class="pagination">
					<g:paginate total="${transactionInstanceTotal}" />
				</div>
				</g:if>
				<g:else>
					<p class="lead">Nothing to see here!</p>
				</g:else>
			</div>
		</div>
	</body>
</html>
