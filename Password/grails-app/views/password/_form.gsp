<%@ page import="com.mh.password.Password" %>



			<div class="control-group fieldcontain ${hasErrors(bean: passwordInstance, field: 'password', 'error')} required">
				<label for="password" class="control-label"><g:message code="password.password.label" default="Password" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="password" required="" value="${passwordInstance?.password}"/>
					<span class="help-inline">${hasErrors(bean: passwordInstance, field: 'password', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: passwordInstance, field: 'name', 'error')} required">
				<label for="name" class="control-label"><g:message code="password.name.label" default="Name" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="name" required="" value="${passwordInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: passwordInstance, field: 'name', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: passwordInstance, field: 'description', 'error')} ">
				<label for="description" class="control-label"><g:message code="password.description.label" default="Description" /></label>
				<div class="controls">
					<g:textArea name="description" cols="40" rows="5" maxlength="1000" value="${passwordInstance?.description}"/>
					<span class="help-inline">${hasErrors(bean: passwordInstance, field: 'description', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: passwordInstance, field: 'url', 'error')} ">
				<label for="url" class="control-label"><g:message code="password.url.label" default="Url" /></label>
				<div class="controls">
					<g:field type="url" name="url" value="${passwordInstance?.url}"/>
					<span class="help-inline">${hasErrors(bean: passwordInstance, field: 'url', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: passwordInstance, field: 'ip', 'error')} ">
				<label for="ip" class="control-label"><g:message code="password.ip.label" default="Ip" /></label>
				<div class="controls">
					<g:textField name="ip" value="${passwordInstance?.ip}"/>
					<span class="help-inline">${hasErrors(bean: passwordInstance, field: 'ip', 'error')}</span>
				</div>
			</div>

