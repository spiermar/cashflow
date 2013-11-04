<% import grails.persistence.Event %>
<%=packageName%>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<r:require modules="bootstrap"/>
		<g:set var="entityName" value="\${message(code: '${domainClass.propertyName}.label', default: '${className}')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="page-header">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
		</div>
		<div class="row-fluid">
			<div class="btn-toolbar" style="margin: 0;">
				<g:link class="btn" action="list"><i class="glyphicon glyphicon-list"></i> <g:message code="default.list.label" args="[entityName]" /></g:link>
				<g:link class="create" action="create" class="btn"><i class="glyphicon glyphicon-plus"></i> <g:message code="default.new.label" args="[entityName]" /></g:link>
			</div>
		</div>
		<hr>
		<div class="row-fluid">
			<div class="span12">
				<g:if test="\${flash.message}">
				<bootstrap:alert class="alert-info">\${flash.message}</bootstrap:alert>
				</g:if>
				<% excludedProps = Event.allEvents.toList() << 'id' << 'version'
				allowedNames = domainClass.persistentProperties*.name << 'dateCreated' << 'lastUpdated'
				props = domainClass.properties.findAll { allowedNames.contains(it.name) && !excludedProps.contains(it.name) }
				Collections.sort(props, comparator.constructors[0].newInstance([domainClass] as Object[]))
				props.each { p -> %>
				<g:if test="\${${propertyName}?.${p.name}}">
				<div class="row-fluid">
					<div class="span2">
						<p class="lead text-right"><strong><g:message code="${domainClass.propertyName}.${p.name}.label" default="${p.naturalName}" /></strong></p>
					</div>
					<div class="span10">
						<%  if (p.isEnum()) { %>
						<p class="lead"><g:fieldValue bean="\${${propertyName}}" field="${p.name}"/></p>
						<%  } else if (p.oneToMany || p.manyToMany) { %>
						<g:each in="\${${propertyName}.${p.name}}" var="${p.name[0]}">
						<p class="lead"><g:link controller="${p.referencedDomainClass?.propertyName}" action="show" id="\${${p.name[0]}.id}">\${${p.name[0]}?.encodeAsHTML()}</g:link></p>
						</g:each>
						<%  } else if (p.manyToOne || p.oneToOne) { %>
						<p class="lead"><g:link controller="${p.referencedDomainClass?.propertyName}" action="show" id="\${${propertyName}?.${p.name}?.id}">\${${propertyName}?.${p.name}?.encodeAsHTML()}</g:link></p>
						<%  } else if (p.type == Boolean || p.type == boolean) { %>
						<p class="lead"><g:formatBoolean boolean="\${${propertyName}?.${p.name}}" /></p>
						<%  } else if (p.type == Date || p.type == java.sql.Date || p.type == java.sql.Time || p.type == Calendar) { %>
						<p class="lead"><g:formatDate date="\${${propertyName}?.${p.name}}" /></p>
						<%  } else if (!p.type.isArray()) { %>
						<p class="lead"><g:fieldValue bean="\${${propertyName}}" field="${p.name}"/></p>
						<%  } %>
					</div>
				</div>
				</g:if>
				<%  } %>
				<br>
				<div class="row-fluid">
					<div class="span10 offset2">
						<g:form>
							<g:hiddenField name="id" value="\${${propertyName}?.id}" />
							<div class="btn-toolbar" style="margin: 0;">
								<g:link class="btn" action="edit" id="\${${propertyName}?.id}">
									<i class="glyphicon glyphicon-pencil"></i>
									<g:message code="default.button.edit.label" default="Edit" />
								</g:link>
								<a href="#deleteModal" class="btn btn-danger" data-toggle="modal"><i class="glyphicon glyphicon-trash"></i> <g:message code="default.button.delete.label" default="Delete" /></a>
							</div>
							<modal:delete id="\${${propertyName}?.id}" entityName="\${entityName}" />
						</g:form>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
