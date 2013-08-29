
<%@ page import="com.martinspier.cashflow.Transaction" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<r:require modules="bootstrap"/>
		<g:set var="entityName" value="${message(code: 'transaction.label', default: 'Transaction')}" />
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
				
				<g:if test="${transactionInstance?.date}">
				<div class="row-fluid">
					<div class="span2">
						<p class="lead text-right"><strong><g:message code="transaction.date.label" default="Date" /></strong></p>
					</div>
					<div class="span10">
						
						<p class="lead"><g:formatDate format="MM/dd/yyyy" date="${transactionInstance?.date}" /></p>
						
					</div>
				</div>
				</g:if>
				
				<g:if test="${transactionInstance?.amount}">
				<div class="row-fluid">
					<div class="span2">
						<p class="lead text-right"><strong><g:message code="transaction.amount.label" default="Amount" /></strong></p>
					</div>
					<div class="span10">
						
						<p class="lead">$<g:fieldValue bean="${transactionInstance}" field="amount"/></p>
						
					</div>
				</div>
				</g:if>
				
				<g:if test="${transactionInstance?.description}">
				<div class="row-fluid">
					<div class="span2">
						<p class="lead text-right"><strong><g:message code="transaction.description.label" default="Description" /></strong></p>
					</div>
					<div class="span10">
						
						<p class="lead"><g:fieldValue bean="${transactionInstance}" field="description"/></p>
						
					</div>
				</div>
				</g:if>
				
				<g:if test="${transactionInstance?.category}">
				<div class="row-fluid">
					<div class="span2">
						<p class="lead text-right"><strong><g:message code="transaction.category.label" default="Category" /></strong></p>
					</div>
					<div class="span10">
						
						<p class="lead"><g:link controller="category" action="show" id="${transactionInstance?.category?.id}">${transactionInstance?.category?.encodeAsHTML()}</g:link></p>
						
					</div>
				</div>
				</g:if>
				
				<g:if test="${transactionInstance?.account}">
				<div class="row-fluid">
					<div class="span2">
						<p class="lead text-right"><strong><g:message code="transaction.account.label" default="Account" /></strong></p>
					</div>
					<div class="span10">
						
						<p class="lead"><g:link controller="account" action="show" id="${transactionInstance?.account?.id}">${transactionInstance?.account?.name}</g:link></p>
						
					</div>
				</div>
				</g:if>
				
				<g:if test="${transactionInstance?.tags}">
				<div class="row-fluid">
					<div class="span2">
						<p class="lead text-right"><strong><g:message code="transaction.tags.label" default="Tags" /></strong></p>
					</div>
					<div class="span10">
						
						<g:each in="${transactionInstance.tags}" var="t">
						<p class="lead"><g:link controller="tag" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></p>
						</g:each>
						
					</div>
				</div>
				</g:if>
				
				<br>
				<div class="row-fluid">
					<div class="span10 offset2">
						<g:form>
							<g:hiddenField name="id" value="${transactionInstance?.id}" />
							<div class="btn-toolbar" style="margin: 0;">
								<g:link class="btn" action="edit" id="${transactionInstance?.id}">
									<i class="icon-pencil"></i>
									<g:message code="default.button.edit.label" default="Edit" />
								</g:link>
								<a href="#deleteModal" class="btn btn-danger" data-toggle="modal"><i class="icon-trash icon-white"></i> <g:message code="default.button.delete.label" default="Delete" /></a>
							</div>
							<modal:delete id="${transactionInstance?.id}" entityName="${entityName}" />
						</g:form>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
