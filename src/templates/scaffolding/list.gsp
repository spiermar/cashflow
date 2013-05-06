<% import grails.persistence.Event %>
<%=packageName%>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<r:require modules="bootstrap"/>
		<g:set var="entityName" value="\${message(code: '${domainClass.propertyName}.label', default: '${className}')}" />
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
				<g:if test="\${flash.message}">
				<bootstrap:alert class="alert-info">\${flash.message}</bootstrap:alert>
				</g:if>
				<br/>
				<g:if test="\${${propertyName}Total > 0}">
				<table class="table table-hover">
					<thead>
						<tr>
						<%  excludedProps = Event.allEvents.toList() << 'id' << 'version'
							allowedNames = domainClass.persistentProperties*.name << 'dateCreated' << 'lastUpdated'
							props = domainClass.properties.findAll { allowedNames.contains(it.name) && !excludedProps.contains(it.name) && it.type != null && !Collection.isAssignableFrom(it.type) }
							Collections.sort(props, comparator.constructors[0].newInstance([domainClass] as Object[]))
							props.eachWithIndex { p, i ->
								if (i < 6) {
									if (p.isAssociation()) { %>
							<th><g:message code="${domainClass.propertyName}.${p.name}.label" default="${p.naturalName}" /></th>
						<%      } else { %>
							<g:sortableColumn property="${p.name}" title="\${message(code: '${domainClass.propertyName}.${p.name}.label', default: '${p.naturalName}')}" />
						<%  }   }   } %>
							<th></th>
						</tr>
					</thead>
					<tbody>
					<g:each in="\${${propertyName}List}" status="i" var="${propertyName}">
						<tr class="\${(i % 2) == 0 ? 'even' : 'odd'}">
						<%  props.eachWithIndex { p, i ->
								if (i == 0) { %>
							<td>\${fieldValue(bean: ${propertyName}, field: "${p.name}")}</td>
						<%      } else if (i < 6) {
									if (p.type == Boolean || p.type == boolean) { %>
							<td><g:formatBoolean boolean="\${${propertyName}.${p.name}}" /></td>
						<%          } else if (p.type == Date || p.type == java.sql.Date || p.type == java.sql.Time || p.type == Calendar) { %>
							<td><g:formatDate date="\${${propertyName}.${p.name}}" /></td>
						<%          } else { %>
							<td>\${fieldValue(bean: ${propertyName}, field: "${p.name}")}</td>
						<%  }   }   } %>
							<td><g:link action="show" id="\${${propertyName}.id}" class="btn">Show &raquo;</g:link></td>
						</tr>
					</g:each>
					</tbody>
				</table>
				<div class="pagination">
					<g:paginate total="\${${propertyName}Total}" />
				</div>
				</g:if>
				<g:else>
					<p class="lead">Nothing to see here!</p>
				</g:else>
			</div>
		</div>
	</body>
</html>
