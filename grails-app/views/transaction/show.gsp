
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
				<g:if test="${transactionInstance?.date}">
                    <dt><g:message code="transaction.date.label" default="Date" /></dt>
                    <dd><g:formatDate format="MM/dd/yyyy" date="${transactionInstance?.date}" /></dd>
                </g:if>

				<g:if test="${transactionInstance?.amount}">
                    <dt><g:message code="transaction.amount.label" default="Amount" /></dt>
                    <dd>$<g:fieldValue bean="${transactionInstance}" field="amount"/></dd>
				</g:if>
				
				<g:if test="${transactionInstance?.description}">
                    <dt><g:message code="transaction.description.label" default="Description" /></dt>
                    <dd><g:fieldValue bean="${transactionInstance}" field="description"/></dd>
				</g:if>
				
				<g:if test="${transactionInstance?.category}">
                    <dt><g:message code="transaction.category.label" default="Category" /></dt>
                    <dd><g:link controller="category" action="show" id="${transactionInstance?.category?.id}">${transactionInstance?.category?.encodeAsHTML()}</g:link></dd>
				</g:if>
				
				<g:if test="${transactionInstance?.account}">
                    <dt><g:message code="transaction.account.label" default="Account" /></dt>
                    <dd><g:link controller="account" action="show" id="${transactionInstance?.account?.id}">${transactionInstance?.account?.name}</g:link></dd>
				</g:if>
				
				<g:if test="${transactionInstance?.tags}">
                    <dt><g:message code="transaction.tags.label" default="Tags" /></dt>
                    <dd>
                    <g:each in="${transactionInstance.tags}" var="t">
                        <g:link controller="tag" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link><br>
                    </g:each>
                    </dd>
				</g:if>
				</dl>
                <hr>
				<div class="row">
					<div class="col-md-12">
						<g:form>
							<g:hiddenField name="id" value="${transactionInstance?.id}" />
							<div class="btn-toolbar" style="margin: 0;">
								<g:link class="btn btn-default" action="edit" id="${transactionInstance?.id}">
									<i class="glyphicon glyphicon-pencil"></i>
									<g:message code="default.button.edit.label" default="Edit" />
								</g:link>
								<a href="#deleteModal" class="btn btn-danger" data-toggle="modal"><i class="glyphicon glyphicon-trash"></i> <g:message code="default.button.delete.label" default="Delete" /></a>
							</div>
							<modal:delete id="${transactionInstance?.id}" entityName="${entityName}" />
						</g:form>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
