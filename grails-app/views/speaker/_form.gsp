<%@ page import="org.growler.Speaker" %>



<div class="fieldcontain ${hasErrors(bean: speakerInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="speaker.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" maxlength="64" required="" value="${speakerInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: speakerInstance, field: 'middleName', 'error')} ">
	<label for="middleName">
		<g:message code="speaker.middleName.label" default="Middle Name" />
		
	</label>
	<g:textField name="middleName" maxlength="64" value="${speakerInstance?.middleName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: speakerInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="speaker.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" maxlength="64" required="" value="${speakerInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: speakerInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="speaker.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${speakerInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: speakerInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="speaker.title.label" default="Title" />
		
	</label>
	<g:textArea name="title" cols="40" rows="5" maxlength="256" value="${speakerInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: speakerInstance, field: 'phone', 'error')} ">
	<label for="phone">
		<g:message code="speaker.phone.label" default="Phone" />
		
	</label>
	<g:textField name="phone" maxlength="32" value="${speakerInstance?.phone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: speakerInstance, field: 'twitterId', 'error')} ">
	<label for="twitterId">
		<g:message code="speaker.twitterId.label" default="Twitter Id" />
		
	</label>
	<g:textField name="twitterId" maxlength="64" value="${speakerInstance?.twitterId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: speakerInstance, field: 'linkedInUrl', 'error')} ">
	<label for="linkedInUrl">
		<g:message code="speaker.linkedInUrl.label" default="Linked In Url" />
		
	</label>
	<g:textArea name="linkedInUrl" cols="40" rows="5" maxlength="256" value="${speakerInstance?.linkedInUrl}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: speakerInstance, field: 'webUrl', 'error')} ">
	<label for="webUrl">
		<g:message code="speaker.webUrl.label" default="Web Url" />
		
	</label>
	<g:textArea name="webUrl" cols="40" rows="5" maxlength="256" value="${speakerInstance?.webUrl}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: speakerInstance, field: 'company', 'error')} ">
	<label for="company">
		<g:message code="speaker.company.label" default="Company" />
		
	</label>
	<g:textArea name="company" cols="40" rows="5" maxlength="256" value="${speakerInstance?.company}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: speakerInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="speaker.address.label" default="Address" />
		
	</label>
	<g:select id="address" name="address.id" from="${org.growler.Address.list()}" optionKey="id" value="${speakerInstance?.address?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: speakerInstance, field: 'photo', 'error')} ">
	<label for="photo">
		<g:message code="speaker.photo.label" default="Photo" />
		
	</label>
	<g:select id="photo" name="photo.id" from="${org.growler.StorageDesc.list()}" optionKey="id" value="${speakerInstance?.photo?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: speakerInstance, field: 'gravatarUrl', 'error')} ">
	<label for="gravatarUrl">
		<g:message code="speaker.gravatarUrl.label" default="Gravatar Url" />
		
	</label>
	<g:textArea name="gravatarUrl" cols="40" rows="5" maxlength="256" value="${speakerInstance?.gravatarUrl}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: speakerInstance, field: 'bios', 'error')} ">
	<label for="bios">
		<g:message code="speaker.bios.label" default="Bios" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${speakerInstance?.bios?}" var="b">
    <li><g:link controller="biography" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="biography" action="create" params="['speaker.id': speakerInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'biography.label', default: 'Biography')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: speakerInstance, field: 'presentations', 'error')} ">
	<label for="presentations">
		<g:message code="speaker.presentations.label" default="Presentations" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${speakerInstance?.presentations?}" var="p">
    <li><g:link controller="presentation" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="presentation" action="create" params="['speaker.id': speakerInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'presentation.label', default: 'Presentation')])}</g:link>
</li>
</ul>

</div>

