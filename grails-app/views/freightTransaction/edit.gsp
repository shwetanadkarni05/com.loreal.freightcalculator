

<%@ page import="com.loreal.freightcalculator.FreightTransaction" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'freightTransaction.label', default: 'FreightTransaction')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${freightTransactionInstance}">
            <div class="errors">
                <g:renderErrors bean="${freightTransactionInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${freightTransactionInstance?.id}" />
                <g:hiddenField name="version" value="${freightTransactionInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="actualCases"><g:message code="freightTransaction.actualCases.label" default="Actual Cases" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: freightTransactionInstance, field: 'actualCases', 'errors')}">
                                    <g:textField name="actualCases" value="${fieldValue(bean: freightTransactionInstance, field: 'actualCases')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="billingType"><g:message code="freightTransaction.billingType.label" default="Billing Type" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: freightTransactionInstance, field: 'billingType', 'errors')}">
                                    <g:textField name="billingType" value="${freightTransactionInstance?.billingType}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="distributor"><g:message code="freightTransaction.distributor.label" default="Distributor" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: freightTransactionInstance, field: 'distributor', 'errors')}">
                                    <g:select name="distributor.id" from="${com.loreal.freightcalculator.Distributor.list()}" optionKey="id" value="${freightTransactionInstance?.distributor?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="grCharges"><g:message code="freightTransaction.grCharges.label" default="Gr Charges" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: freightTransactionInstance, field: 'grCharges', 'errors')}">
                                    <g:textField name="grCharges" value="${fieldValue(bean: freightTransactionInstance, field: 'grCharges')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="invUnitsTotal"><g:message code="freightTransaction.invUnitsTotal.label" default="Inv Units Total" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: freightTransactionInstance, field: 'invUnitsTotal', 'errors')}">
                                    <g:textField name="invUnitsTotal" value="${fieldValue(bean: freightTransactionInstance, field: 'invUnitsTotal')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="invoiceDate"><g:message code="freightTransaction.invoiceDate.label" default="Invoice Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: freightTransactionInstance, field: 'invoiceDate', 'errors')}">
                                    <g:datePicker name="invoiceDate" precision="day" value="${freightTransactionInstance?.invoiceDate}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="invoiceNo"><g:message code="freightTransaction.invoiceNo.label" default="Invoice No" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: freightTransactionInstance, field: 'invoiceNo', 'errors')}">
                                    <g:textField name="invoiceNo" value="${fieldValue(bean: freightTransactionInstance, field: 'invoiceNo')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="invoiceNoOfCases"><g:message code="freightTransaction.invoiceNoOfCases.label" default="Invoice No Of Cases" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: freightTransactionInstance, field: 'invoiceNoOfCases', 'errors')}">
                                    <g:textField name="invoiceNoOfCases" value="${fieldValue(bean: freightTransactionInstance, field: 'invoiceNoOfCases')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="invoiceValue"><g:message code="freightTransaction.invoiceValue.label" default="Invoice Value" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: freightTransactionInstance, field: 'invoiceValue', 'errors')}">
                                    <g:textField name="invoiceValue" value="${fieldValue(bean: freightTransactionInstance, field: 'invoiceValue')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="orderNo"><g:message code="freightTransaction.orderNo.label" default="Order No" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: freightTransactionInstance, field: 'orderNo', 'errors')}">
                                    <g:textField name="orderNo" value="${fieldValue(bean: freightTransactionInstance, field: 'orderNo')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="perKgOrCaseCost"><g:message code="freightTransaction.perKgOrCaseCost.label" default="Per Kg Or Case Cost" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: freightTransactionInstance, field: 'perKgOrCaseCost', 'errors')}">
                                    <g:textField name="perKgOrCaseCost" value="${fieldValue(bean: freightTransactionInstance, field: 'perKgOrCaseCost')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="srNo"><g:message code="freightTransaction.srNo.label" default="Sr No" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: freightTransactionInstance, field: 'srNo', 'errors')}">
                                    <g:textField name="srNo" value="${fieldValue(bean: freightTransactionInstance, field: 'srNo')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="totalAmount"><g:message code="freightTransaction.totalAmount.label" default="Total Amount" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: freightTransactionInstance, field: 'totalAmount', 'errors')}">
                                    <g:textField name="totalAmount" value="${fieldValue(bean: freightTransactionInstance, field: 'totalAmount')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="weightOfInvoice"><g:message code="freightTransaction.weightOfInvoice.label" default="Weight Of Invoice" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: freightTransactionInstance, field: 'weightOfInvoice', 'errors')}">
                                    <g:textField name="weightOfInvoice" value="${fieldValue(bean: freightTransactionInstance, field: 'weightOfInvoice')}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
