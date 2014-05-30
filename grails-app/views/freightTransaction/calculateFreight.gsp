<%@ page import="com.loreal.freightcalculator.FreightTransaction" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'freightTransaction.label', default: 'Calculate Freight')}" />
        <title><g:message code="freight.calculate.label" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="freight.list.label" /></g:link></span>
            
        </div>
        <div class="body">
            <h1><g:message code="freight.calculate.label"/></h1>
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
							<%--<tr class="prop">
                                <td valign="top" class="name">
                                  <label for="dateFrom"><g:message code="freightTransaction.dateFrom.label" default="Invoice Date From" /></label>
                                </td>
                                <td valign="top" class="">
                                    <g:datePicker name="dateFrom" value="${new Date()}" noSelection="['':'-Choose-']" precision="day"/>
                                </td>
                            </tr>

							<tr class="prop">
                                <td valign="top" class="name">
                                  <label for="dateTo"><g:message code="freightTransaction.dateTo.label" default="Invoice Date To" /></label>
                                </td>
                                <td valign="top" class="">
                                    <g:datePicker name="dateTo" value="${new Date()}" noSelection="['':'-Choose-']" />
                                </td>
                            </tr>
                            <span class="button"><g:actionSubmit class="" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                        --%>
                        	<tr class="prop">
                                <td valign="top" class="name">
                                  <label for="id"><g:message code="freightTransaction.srNo.label" default="Sr No" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: freightTransactionInstance, field: 'id', 'errors')}">
                                    <g:textField name="srNo" value="${fieldValue(bean: freightTransactionInstance, field: 'id')}" readonly="readonly"/>
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="customerCode"><g:message code="freightTransaction.distributorCode.label" default="Customer Code" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: freightTransactionInstance, field: 'distributor', 'errors')}">
                                    <g:textField name="customerCode" value="${freightTransactionInstance?.distributor?.customerCode}" readonly="readonly"/>
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="customerName"><g:message code="freightTransaction.distributorName.label" default="Customer Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: freightTransactionInstance, field: 'distributor', 'errors')}">
                                    <g:textField name="customerName" value="${freightTransactionInstance?.distributor?.customerName}" readonly="readonly"/>
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="customerCity"><g:message code="freightTransaction.distributorCity.label" default="Customer City" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: freightTransactionInstance, field: 'distributor', 'errors')}">
                                    <g:textField name="customerCity" value="${freightTransactionInstance?.distributor?.customerCity}" readonly="readonly"/>
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="orderNo"><g:message code="freightTransaction.orderNo.label" default="Order No" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: freightTransactionInstance, field: 'orderNo', 'errors')}">
                                    <g:textField name="orderNo" value="${fieldValue(bean: freightTransactionInstance, field: 'orderNo')}" readonly="readonly"/>
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="invoiceNo"><g:message code="freightTransaction.invoiceNo.label" default="Invoice No" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: freightTransactionInstance, field: 'invoiceNo', 'errors')}">
                                    <g:textField name="invoiceNo" value="${fieldValue(bean: freightTransactionInstance, field: 'invoiceNo')}" readonly="readonly"/>
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="billingType"><g:message code="freightTransaction.billingType.label" default="Billing Type" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: freightTransactionInstance, field: 'billingType', 'errors')}">
                                    <g:textField name="billingType" value="${freightTransactionInstance?.billingType}" readonly="readonly"/>
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="invoiceDate"><g:message code="freightTransaction.invoiceDate.label" default="Invoice Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: freightTransactionInstance, field: 'invoiceDate', 'errors')}">
                                    <g:datePicker name="invoiceDate" precision="day" value="${freightTransactionInstance?.invoiceDate}" readonly="readonly" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="invUnitsTotal"><g:message code="freightTransaction.invUnitsTotal.label" default="Invoice Units (Total)" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: freightTransactionInstance, field: 'invUnitsTotal', 'errors')}">
                                    <g:textField name="invUnitsTotal" value="${fieldValue(bean: freightTransactionInstance, field: 'invUnitsTotal')}" readonly="readonly"/>
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="invoiceValue"><g:message code="freightTransaction.invoiceValue.label" default="Invoice Value" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: freightTransactionInstance, field: 'invoiceValue', 'errors')}">
                                    <g:textField name="invoiceValue" value="${fieldValue(bean: freightTransactionInstance, field: 'invoiceValue')}" readonly="readonly"/>
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="invoiceNoOfCases"><g:message code="freightTransaction.invoiceNoOfCases.label" default="Invoice No Of Cases" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: freightTransactionInstance, field: 'invoiceNoOfCases', 'errors')}">
                                    <g:textField name="invoiceNoOfCases" value="${fieldValue(bean: freightTransactionInstance, field: 'invoiceNoOfCases')}" readonly="readonly"/>
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="weightOfInvoice"><g:message code="freightTransaction.weightOfInvoice.label" default="Weight Of Invoice" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: freightTransactionInstance, field: 'weightOfInvoice', 'errors')}">
                                    <g:textField name="weightOfInvoice" value="${fieldValue(bean: freightTransactionInstance, field: 'weightOfInvoice')}" readonly="readonly"/>
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="freightModel"><g:message code="freightTransaction.freightModel.label" default="Freight Model" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: freightTransactionInstance, field: 'distributor', 'errors')}">
                                    <g:textField name="freightModel" value="${freightTransactionInstance?.distributor?.freightStructure}" readonly="readonly"/>
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="weightInKgs"><g:message code="freightTransaction.weightInKgs.label" default="Weight In Kgs" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: freightTransactionInstance, field: 'weightInKgs', 'errors')}">
                                    <g:textField name="weightInKgs" value="${fieldValue(bean: freightTransactionInstance, field: 'weightInKgs')}" readonly="readonly"/>
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="costPerKg"><g:message code="freightTransaction.costPerKg.label" default="Cost Per Kg" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: freightTransactionInstance, field: 'distributor', 'errors')}">
                                    <g:textField name="costPerKg" value="${freightTransactionInstance?.distributor?.rate}" readonly="readonly"/>
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="costPerCase"><g:message code="freightTransaction.costPerCase.label" default="Cost Per Case" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: freightTransactionInstance, field: 'distributor', 'errors')}">
                                    <g:textField name="costPerCase" value="${freightTransactionInstance?.distributor?.rate}" readonly="readonly"/>
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="grLrCharges"><g:message code="freightTransaction.grLrCharges.label" default="Gr/Lr Charges" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: freightTransactionInstance, field: 'distributor', 'errors')}">
                                    <g:textField name="grLrCharges" value="${freightTransactionInstance?.distributor?.grlrCharges}" readonly="readonly" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="otherCharges"><g:message code="freightTransaction.otherCharges.label" default="Other Charges" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: freightTransactionInstance, field: 'distributor', 'errors')}">
                                    <g:textField name="otherCharges" value="${freightTransactionInstance?.distributor?.deliveryCharges}" readonly="readonly" />
                                </td>
                            </tr>
                            
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
                                  <label for="totalAmount"><g:message code="freightTransaction.totalAmount.label" default="Total Amount" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: freightTransactionInstance, field: 'totalAmount', 'errors')}">
                                    <g:textField name="totalAmount" value="${fieldValue(bean: freightTransactionInstance, field: 'totalAmount')}" readonly="readonly"/>
                                </td>
                            </tr>
                        
                            <%--<tr class="prop">
                                <td valign="top" class="name">
                                  <label for="perKgOrCaseCost"><g:message code="freightTransaction.perKgOrCaseCost.label" default="Per Kg Or Case Cost" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: freightTransactionInstance, field: 'perKgOrCaseCost', 'errors')}">
                                    <g:textField name="p`erKgOrCaseCost" value="${fieldValue(bean: freightTransactionInstance, field: 'perKgOrCaseCost')}" />
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
                        
                            
                        
                            
                        
                        --%></tbody>
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