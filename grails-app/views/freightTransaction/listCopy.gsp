<%@ page import="com.loreal.freightcalculator.FreightTransaction" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'freightTransaction.label', default: 'FreightTransaction')}" />
        <title><g:message code="freight.list.label" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>            
        </div>
        <div class="body">
            <h1><g:message code="freight.list.label" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'freightTransaction.srNo.label' default: 'Sr No")}' />
                        
                            <g:sortableColumn property="cfaCode" title="${message(code: 'freightTransaction.cfaCode.label' default: 'CFA Code')}" />
                            
                            <g:sortableColumn property="customerCode" title="${message(code: 'freightTransaction.distributorCode.label' default: 'Customer Code')}" />
                            
                            <g:sortableColumn property="divisionCode" title="${message(code: 'freightTransaction.divisionCode.label' default: 'Division Code')}" />
                        
                            <g:sortableColumn property="customerName" title="${message(code: 'freightTransaction.distributorName.label' default: 'Customer Name')}" />
							
							<g:sortableColumn property="customerCity" title="${message(code: 'freightTransaction.distributorCity.label' default: 'Customer City')}" />
                            
                            <g:sortableColumn property="orderNo" title="${message(code: 'freightTransaction.orderNo.label' default: 'Order No')}" />
                        
                            <g:sortableColumn property="invoiceNo" title="${message(code: 'freightTransaction.invoiceNo.label' default: 'Invoice No')}" />
							
							<g:sortableColumn property="billingType" title="${message(code: 'freightTransaction.billingType.label' default: 'Billing Type' )}" />
                        
                            <g:sortableColumn property="invoiceDate" title="${message(code: 'freightTransaction.invoiceDate.label' default: 'Invoice Date')}" />
                        
                            <g:sortableColumn property="invUnitsTotal" title="${message(code: 'freightTransaction.invUnitsTotal.label' default: 'Invoice Units (Total)')}" />
							
							<g:sortableColumn property="invoiceValue" title="${message(code: 'freightTransaction.invoiceValue.label' default: 'Invoice Value')}" />
							
							<g:sortableColumn property="invoiceNoOfCases" title="${message(code: 'freightTransaction.invoiceNoOfCases.label' default: 'Invoice No Of Cases')}" />
                        
                            <g:sortableColumn property="weightOfInvoice" title="${message(code: 'freightTransaction.weightOfInvoice.label' default: 'Weight Of Invoice')}" />
							
							<g:sortableColumn property="freightModel" title="${message(code: 'freightTransaction.freightModel.label' default: 'Freight Model')}" />
                        
                            <g:sortableColumn property="weightInKgs" title="${message(code: 'freightTransaction.weightInKgs.label' default: 'Weight In Kgs')}" />
                        
                            <g:sortableColumn property="costPerKg" title="${message(code: 'freightTransaction.costPerKg.label' default: 'Cost Per Kg')}" />
							
							<g:sortableColumn property="costPerCase" title="${message(code: 'freightTransaction.costPerCase.label' default: 'Cost Per Case')}" />
                        
                            <g:sortableColumn property="grLrCharges" title="${message(code: 'freightTransaction.grLrCharges.label' default: 'Gr/Lr Charges')}" />
                        
                            <g:sortableColumn property="otherCharges" title="${message(code: 'freightTransaction.otherCharges.label' default: 'Other Charges')}" />
							
							<g:sortableColumn property="actualCases" title="${message(code: 'freightTransaction.actualCases.label' default: 'Actual Cases')}" />
							
							<g:sortableColumn property="totalAmount" title="${message(code: 'freightTransaction.totalAmount.label' default: 'Total Amount')}" />
                        
                            <%--<g:sortableColumn property="grCharges" title="${message(code: 'freightTransaction.totalAmount.label' default: 'Total Amount')}" />
                        
                            <g:sortableColumn property="invUnitsTotal" title="${message(code: 'freightTransaction.invUnitsTotal.label', default: 'Inv Units Total')}" />--%>
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${freightTransactionInstanceList}" status="i" var="freightTransactionInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${freightTransactionInstance.id}">${fieldValue(bean: freightTransactionInstance, field: "id")}</g:link></td>
                        
                            <td><g:textField name="cfaCode" value="${freightTransactionInstance?.distributor?.cfa?.userCode}" readonly="readonly"/></td>
                            
                        
                            <td><g:textField name="customerCode" value="${freightTransactionInstance?.distributor?.customerCode}" readonly="readonly"/></td>
                        
                            <td><g:textField name="divisionCode" value="${freightTransactionInstance?.distributor?.divisionCode}" readonly="readonly"/></td>
                        
                            <td><g:textField name="customerName" value="${freightTransactionInstance?.distributor?.customerName}" readonly="readonly"/></td>
                        
                            <td><g:textField name="customerCity" value="${freightTransactionInstance?.distributor?.customerCity}" readonly="readonly"/></td>
                            
                            <td><g:textField name="orderNo" value="${fieldValue(bean: freightTransactionInstance, field: 'orderNo')}" readonly="readonly"/></td>
                        
                            <td><g:textField name="invoiceNo" value="${fieldValue(bean: freightTransactionInstance, field: 'invoiceNo')}" readonly="readonly"/></td>
                        
                            <td><g:textField name="billingType" value="${freightTransactionInstance?.billingType}" readonly="readonly"/></td>
                        
                            <td><g:textField name="invoiceDate" value="${freightTransactionInstance?.invoiceDate}" readonly="readonly" /></td>
                        
                            <td><g:textField name="invUnitsTotal" value="${fieldValue(bean: freightTransactionInstance, field: 'invUnitsTotal')}" readonly="readonly"/></td>
                            
                            <td><g:textField name="invoiceValue" value="${fieldValue(bean: freightTransactionInstance, field: 'invoiceValue')}" readonly="readonly"/></td>
                        
                            <td><g:textField name="invoiceNoOfCases" value="${fieldValue(bean: freightTransactionInstance, field: 'invoiceNoOfCases')}" readonly="readonly"/></td>
                        
                            <td><g:textField name="weightOfInvoice" value="${fieldValue(bean: freightTransactionInstance, field: 'weightOfInvoice')}" readonly="readonly"/></td>
                        
                            <td><g:textField name="freightModel" value="${freightTransactionInstance?.distributor?.freightStructure}" readonly="readonly"/></td>
                        
                            <td><g:textField name="weightInKgs" value="${fieldValue(bean: freightTransactionInstance, field: 'weightInKgs')}" readonly="readonly"/></td>
                            
                            <td><g:textField name="costPerKg" value="${freightTransactionInstance?.distributor?.rate}" readonly="readonly"/></td>
                        
                            <td><g:textField name="costPerCase" value="${freightTransactionInstance?.distributor?.rate}" readonly="readonly"/></td>
                        
                            <td><g:textField name="grLrCharges" value="${freightTransactionInstance?.distributor?.grlrCharges}" readonly="readonly" /></td>
                        
                            <td><g:textField name="otherCharges" value="${freightTransactionInstance?.distributor?.deliveryCharges}" readonly="readonly" /></td>
                        
                            <td><g:textField name="actualCases" value="${fieldValue(bean: freightTransactionInstance, field: 'actualCases')}" /></td>
                            
                            <td><g:textField name="totalAmount" value="${fieldValue(bean: freightTransactionInstance, field: 'totalAmount')}" readonly="readonly"/></td>
                            
                            <td><span class="button"><g:actionSubmit class="save" action="deleteFreightDetail" value="${message(code: 'default.button.deleteFreightDetail.label', default: 'Delete')}" /></span></td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="buttons">
            		<span class="button"><g:actionSubmit class="save" action="calculateTotalAmount" value="${message(code: 'default.button.Calculate.label', default: 'Update')}" /></span>
                    
            </div>
            <div class="paginateButtons">
                <g:paginate total="${freightTransactionInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
