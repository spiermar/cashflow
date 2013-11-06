<%@ page import="com.martinspier.cashflow.Broker" %>


<div class="form-group ${invalid ? 'error' : ''} required">
	<label class="col-md-2 control-label" for="name">
		<g:message code="broker.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-md-4">
		<g:textField name="name" required="" class="form-control" value="${brokerInstance?.name}"/>
		<g:if test="${invalid}"><span class="help-block">${errors.join('<br>')}</span></g:if>
	</div>
</div>

<div class="form-group ${invalid ? 'error' : ''} ">
    <label class="col-md-2 control-label" for="line1">
        <g:message code="broker.address.line1.label" default="Line 1" />
    </label>
    <div class="col-md-4">
        <g:textField name="line1" class="form-control" value="${brokerInstance?.address?.line1}"/>
        <g:if test="${invalid}"><span class="help-block">${errors.join('<br>')}</span></g:if>
    </div>
</div>

<div class="form-group ${invalid ? 'error' : ''} ">
    <label class="col-md-2 control-label" for="line2">
        <g:message code="broker.address.line2.label" default="Line 2" />
    </label>
    <div class="col-md-4">
        <g:textField name="line2" class="form-control" value="${brokerInstance?.address?.line2}"/>
        <g:if test="${invalid}"><span class="help-block">${errors.join('<br>')}</span></g:if>
    </div>
</div>

<div class="form-group ${invalid ? 'error' : ''} ">
    <label class="col-md-2 control-label" for="city">
        <g:message code="broker.address.city.label" default="City" />
    </label>
    <div class="col-md-4">
        <g:textField name="city" class="form-control" value="${brokerInstance?.address?.city}"/>
        <g:if test="${invalid}"><span class="help-block">${errors.join('<br>')}</span></g:if>
    </div>
</div>

<div class="form-group ${invalid ? 'error' : ''} ">
    <label class="col-md-2 control-label" for="state">
        <g:message code="broker.address.state.label" default="State" />
    </label>
    <div class="col-md-4">
        <g:textField name="state" class="form-control" value="${brokerInstance?.address?.state}"/>
        <g:if test="${invalid}"><span class="help-block">${errors.join('<br>')}</span></g:if>
    </div>
</div>

<div class="form-group ${invalid ? 'error' : ''} ">
    <label class="col-md-2 control-label" for="postcode">
        <g:message code="broker.address.postcode.label" default="Postcode" />
    </label>
    <div class="col-md-4">
        <g:textField name="postcode" class="form-control" value="${brokerInstance?.address?.postcode}"/>
        <g:if test="${invalid}"><span class="help-block">${errors.join('<br>')}</span></g:if>
    </div>
</div>

<div class="form-group ${invalid ? 'error' : ''} ">
	<label class="col-md-2 control-label" for="phone">
		<g:message code="broker.phone.label" default="Phone" />
	</label>
	<div class="col-md-4">
		<g:textField name="phone" class="form-control" value="${brokerInstance?.phone}"/>
		<g:if test="${invalid}"><span class="help-block">${errors.join('<br>')}</span></g:if>
	</div>
</div>

