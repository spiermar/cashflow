
<%@ page import="com.martinspier.cashflow.Broker" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<r:require modules="bootstrap"/>
		<g:set var="entityName" value="${message(code: 'broker.label', default: 'Broker')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="page-header">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
		</div>
		<div class="row">
            <div class="col-md-12">
			    <div class="btn-toolbar" style="margin: 0;">
				    <g:link action="create" class="btn btn-default"><i class="glyphicon glyphicon-plus"></i> <g:message code="default.new.label" args="[entityName]" /></g:link>
                </div>
			</div>
		</div>
		<hr/>
		<div class="row">
			<div class="col-md-12">
				<g:if test="${flash.message}">
				<bootstrap:alert class="alert-info">${flash.message}</bootstrap:alert>
				</g:if>
				<br/>
				<g:if test="${brokerInstanceTotal > 0}">
				<table class="table table-hover">
					<thead>
						<tr>
							<g:sortableColumn property="name" title="${message(code: 'broker.name.label', default: 'Name')}" />
							<g:sortableColumn property="phone" title="${message(code: 'broker.phone.label', default: 'Phone')}" />
							<th></th>
						</tr>
					</thead>
					<tbody>
					<g:each in="${brokerInstanceList}" status="i" var="brokerInstance">
						<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
							<td>${fieldValue(bean: brokerInstance, field: "name")}</td>
							<td>${fieldValue(bean: brokerInstance, field: "phone")}</td>
							<td><g:link action="show" id="${brokerInstance.id}" class="btn btn-default btn-xs">Details &raquo;</g:link></td>
						</tr>
					</g:each>
					</tbody>
				</table>
				<div class="pagination">
					<g:paginate total="${brokerInstanceTotal}" />
				</div>
				</g:if>
				<g:else>
					<p class="lead">Nothing to see here!</p>
				</g:else>
			</div>
		</div>
	</body>
</html>
