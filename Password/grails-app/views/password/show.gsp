
<%@ page import="com.mh.password.Password" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'password.label', default: 'Password')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-password" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="password.password.label" default="Password" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: passwordInstance, field: "password")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="password.name.label" default="Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: passwordInstance, field: "name")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="password.description.label" default="Description" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: passwordInstance, field: "description")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="password.url.label" default="Url" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: passwordInstance, field: "url")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="password.ip.label" default="Ip" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: passwordInstance, field: "ip")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="password.dateCreated.label" default="Date Created" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${passwordInstance?.dateCreated}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="password.lastUpdated.label" default="Last Updated" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${passwordInstance?.lastUpdated}" /></td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
