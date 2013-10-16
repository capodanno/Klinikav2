<%@ page import="org.itech.klinikav2.domain.Item"%>

<div
	class="control-group fieldcontain ${hasErrors(bean: itemInstance, field: 'name', 'error')} required">
	<label for="name" class="control-label"><g:message
			code="item.name.label" default="Name" /><span
		class="required-indicator">*</span></label>
	<div class="controls">
		<g:textField name="name" required="" value="${itemInstance?.name}" />
		<span class="help-inline">
			${hasErrors(bean: itemInstance, field: 'name', 'error')}
		</span>
	</div>
</div>

<div
	class="control-group fieldcontain ${hasErrors(bean: itemInstance, field: 'description', 'error')} ">
	<label for="description" class="control-label"><g:message
			code="item.description.label" default="Description" /></label>
	<div class="controls">
		<g:textField name="description" value="${itemInstance?.description}" />
		<span class="help-inline">
			${hasErrors(bean: itemInstance, field: 'description', 'error')}
		</span>
	</div>
</div>

<div
	class="control-group fieldcontain ${hasErrors(bean: itemInstance, field: 'currentQuantity', 'error')} required">
	<label for="currentQuantity" class="control-label"><g:message
			code="item.currentQuantity.label" default="Current Quantity" /><span
		class="required-indicator">*</span></label>
	<div class="controls">
		<g:field type="number" name="currentQuantity" min="1" required=""
			value="${itemInstance.currentQuantity}" />
		<span class="help-inline">
			${hasErrors(bean: itemInstance, field: 'currentQuantity', 'error')}
		</span>
	</div>
</div>

<div
	class="control-group fieldcontain ${hasErrors(bean: itemInstance, field: 'minStockLevel', 'error')} required">
	<label for="minStockLevel" class="control-label"><g:message
			code="item.minStockLevel.label" default="Min Stock Level" /><span
		class="required-indicator">*</span></label>
	<div class="controls">
		<g:field type="number" name="minStockLevel" required=""
			value="${itemInstance.minStockLevel}" />
		<span class="help-inline">
			${hasErrors(bean: itemInstance, field: 'minStockLevel', 'error')}
		</span>
	</div>
</div>



<div
	class="control-group fieldcontain ${hasErrors(bean: itemInstance, field: 'retailPrice', 'error')} ">
	<label for="retailPrice" class="control-label"><g:message
			code="item.retailPrice.label" default="Retail Price" /></label>
	<div class="controls">
		<g:field type="number" name="retailPrice" step="any"
			value="${itemInstance.retailPrice}" />
		<span class="help-inline">
			${hasErrors(bean: itemInstance, field: 'retailPrice', 'error')}
		</span>
	</div>
</div>

<%--	<div class="control-group fieldcontain ${hasErrors(bean: itemInstance, field: 'hasReachedMinimum', 'error')} ">
				<label for="hasReachedMinimum" class="control-label"><g:message code="item.hasReachedMinimum.label" default="Has Reached Minimum" /></label>
				<div class="controls">
					<g:checkBox name="hasReachedMinimum" value="${itemInstance?.hasReachedMinimum}" />
					<span class="help-inline">${hasErrors(bean: itemInstance, field: 'hasReachedMinimum', 'error')}</span>
				</div>
			</div>  --%>

<div
	class="control-group fieldcontain ${hasErrors(bean: itemInstance, field: 'expiryDate', 'error')} required">
	<label for="expiryDate" class="control-label"><g:message
			code="item.expiryDate.label" default="Expiry Date" /><span
		class="required-indicator">*</span></label>
	<div class="controls">
		<g:datePicker name="expiryDate" precision="day"
			value="${itemInstance?.expiryDate}" />
		<span class="help-inline">
			${hasErrors(bean: itemInstance, field: 'expiryDate', 'error')}
		</span>
	</div>
</div>

<%--	<div class="control-group fieldcontain ${hasErrors(bean: itemInstance, field: 'isActive', 'error')} ">
				<label for="isActive" class="control-label"><g:message code="item.isActive.label" default="Is Active" /></label>
				<div class="controls">
					<g:checkBox name="isActive" value="${itemInstance?.isActive}" />
					<span class="help-inline">${hasErrors(bean: itemInstance, field: 'isActive', 'error')}</span>
				</div>
			</div>  --%>

<div
	class="control-group fieldcontain ${hasErrors(bean: itemInstance, field: 'itemType', 'error')} required">
	<label for="itemType" class="control-label"><g:message
			code="item.itemType.label" default="Item Type" /><span
		class="required-indicator">*</span></label>
	<div class="controls">
		<g:select name="itemType"
			from="${org.itech.klinikav2.enums.ItemType?.values()}"
			keys="${org.itech.klinikav2.enums.ItemType.values()*.name()}"
			required="" value="${itemInstance?.itemType?.name()}" />
		<span class="help-inline">
			${hasErrors(bean: itemInstance, field: 'itemType', 'error')}
		</span>
	</div>
</div>

<%-- -<div class="control-group fieldcontain ${hasErrors(bean: itemInstance, field: 'newInstance', 'error')} ">
				<label for="newInstance" class="control-label"><g:message code="item.newInstance.label" default="New Instance" /></label>
				<div class="controls">
					<g:checkBox name="newInstance" value="${itemInstance?.newInstance}" />
					<span class="help-inline">${hasErrors(bean: itemInstance, field: 'newInstance', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: itemInstance, field: 'notifier', 'error')} required">
				<label for="notifier" class="control-label"><g:message code="item.notifier.label" default="Notifier" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="notifier" name="notifier.id" from="${org.itech.klinikav2.domain.ItemNotifier.list()}" optionKey="id" required="" value="${itemInstance?.notifier?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: itemInstance, field: 'notifier', 'error')}</span>
				</div>
			</div>--%>

