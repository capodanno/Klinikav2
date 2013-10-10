<%@ page import="org.itech.klinikav2.domain.Item" %>



<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'currentQuantity', 'error')} required">
	<label for="currentQuantity">
		<g:message code="item.currentQuantity.label" default="Current Quantity" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="currentQuantity" type="number" value="${itemInstance.currentQuantity}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="item.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${itemInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'expiryDate', 'error')} required">
	<label for="expiryDate">
		<g:message code="item.expiryDate.label" default="Expiry Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="expiryDate" precision="day"  value="${itemInstance?.expiryDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'hasReachedMinimum', 'error')} ">
	<label for="hasReachedMinimum">
		<g:message code="item.hasReachedMinimum.label" default="Has Reached Minimum" />
		
	</label>
	<g:checkBox name="hasReachedMinimum" value="${itemInstance?.hasReachedMinimum}" />
</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'isActive', 'error')} ">
	<label for="isActive">
		<g:message code="item.isActive.label" default="Is Active" />
		
	</label>
	<g:checkBox name="isActive" value="${itemInstance?.isActive}" />
</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'itemType', 'error')} required">
	<label for="itemType">
		<g:message code="item.itemType.label" default="Item Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="itemType" from="${org.itech.klinikav2.enums.ItemType?.values()}" keys="${org.itech.klinikav2.enums.ItemType.values()*.name()}" required="" value="${itemInstance?.itemType?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'minStockLevel', 'error')} required">
	<label for="minStockLevel">
		<g:message code="item.minStockLevel.label" default="Min Stock Level" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="minStockLevel" type="number" value="${itemInstance.minStockLevel}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="item.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${itemInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'notifier', 'error')} required">
	<label for="notifier">
		<g:message code="item.notifier.label" default="Notifier" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="notifier" name="notifier.id" from="${org.itech.klinikav2.domain.ItemNotifier.list()}" optionKey="id" required="" value="${itemInstance?.notifier?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'retailPrice', 'error')} required">
	<label for="retailPrice">
		<g:message code="item.retailPrice.label" default="Retail Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="retailPrice" value="${fieldValue(bean: itemInstance, field: 'retailPrice')}" required=""/>
</div>

