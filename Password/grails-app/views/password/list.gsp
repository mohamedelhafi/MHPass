
<%@ page import="com.mh.password.Password" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'password.label', default: 'Password')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-password" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="password" title="${message(code: 'password.password.label', default: 'Password')}" />
			
				<g:sortableColumn property="name" title="${message(code: 'password.name.label', default: 'Name')}" />
			
				<g:sortableColumn property="description" title="${message(code: 'password.description.label', default: 'Description')}" />
			
				<g:sortableColumn property="url" title="${message(code: 'password.url.label', default: 'Url')}" />
			
				<g:sortableColumn property="ip" title="${message(code: 'password.ip.label', default: 'Ip')}" />
			
				<g:sortableColumn property="dateCreated" title="${message(code: 'password.dateCreated.label', default: 'Date Created')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${passwordInstanceList}" status="i" var="passwordInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${passwordInstance.id}">${fieldValue(bean: passwordInstance, field: "password")}</g:link></td>
			
				<td>${fieldValue(bean: passwordInstance, field: "name")}</td>
			
				<td>${fieldValue(bean: passwordInstance, field: "description")}</td>
			
				<td>${fieldValue(bean: passwordInstance, field: "url")}</td>
			
				<td>${fieldValue(bean: passwordInstance, field: "ip")}</td>
			
				<td><g:formatDate date="${passwordInstance.dateCreated}" /></td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="container">
		<bs:paginate total="${passwordInstanceTotal}" />
	</div>
</section>

</body>

</html>
