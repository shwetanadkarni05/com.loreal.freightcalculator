
<%@ page import="com.loreal.freightcalculator.FreightTransaction" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'freightTransaction.label', default: 'FreightTransaction')}" />
        <title>Calculate Freight</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>            
        </div>
        <div class="body">
            <h1>Calculate Freight</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'freightTransaction.id.label', default: 'Sr No')}" />
                        
                            <th><g:message code="freightTransaction.distributor.cfa.userCode.label" default="CFA Code" /></th>
                            
                            <th><g:message code="freightTransaction.distributor.customerCode.label" default="Cust Code" /></th>
                            
                            <th><g:message code="freightTransaction.distributor.divisionCode.label" default="Div Code" /></th>
                            
                            <th><g:message code="freightTransaction.distributor.customerName.label" default="Cust Name" /></th>
                            
                            <th><g:message code="freightTransaction.distributor.customerCity.label" default="Cust City" /></th>
                            
                            <th><g:message code="freightTransaction.invoiceNo.label" default="Inv No" /></th>
                            
                            <th><g:message code="freightTransaction.billingType.label" default="Billing Type" /></th>
                            
                            <th><g:message code="freightTransaction.invDate.label" default="Invoice Date" /></th>
                            
                            <th><g:message code="freightTransaction.invUnitsTotal.label" default="Inv Units Total" /></th>
                            
                            <th><g:message code="freightTransaction.invoiceValue.label" default="Invoice Value" /></th>
                            
                            <th><g:message code="freightTransaction.invNoOfCases.label" default="Invoice No Of Cases" /></th>
                            
                            <th><g:message code="freightTransaction.weightOfInvoice.label" default="Weight of Invoice" /></th>
                            
                            <th><g:message code="freightTransaction.weightInKg.label" default="Weight In Kg" /></th>
                            
                            <th><g:message code="freightTransaction.freightModel.label" default="Freight Model" /></th>
                            
                            <th><g:message code="freightTransaction.costPerKg.label" default="Cost Per Kg" /></th>
                            
                            <th><g:message code="freightTransaction.costPerCase.label" default="Cost Per Case" /></th>
                            
                            <th><g:message code="freightTransaction.grlrCharges.label" default="GR LR Charges" /></th>
                            
                            <th><g:message code="freightTransaction.handlingCharges.label" default="Handling Charges" /></th>
                            
                            <th><g:message code="freightTransaction.loadingUnloadingCharges.label" default="Loading Unloading Charges" /></th>
                            
                            <th><g:message code="freightTransaction.deliveryCharges.label" default="Delivery Charges" /></th>
                            
                            <th><g:message code="freightTransaction.fuelCharges.label" default="Fuel Surcharges" /></th>
                            
                            <th><g:message code="freightTransaction.actualCases.label" default="Actual Cases" /></th>
                            
                            <th><g:message code="freightTransaction.totalAmount.label" default="Total Amount" /></th>
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${freightTransactionInstanceList}" status="i" var="freightTransactionInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td>${fieldValue(bean: freightTransactionInstance, field: "id")}</td>
                        
                            <td>${freightTransactionInstance?.distributor?.cfa?.userCode}</td>
                        
                            <td>${freightTransactionInstance?.distributor?.customerCode}</td>
                        
                            <td>${freightTransactionInstance?.distributor?.divisionCode}</td>
                        
                            <td>${freightTransactionInstance?.distributor?.customerName}</td>
                        
                            <td>${freightTransactionInstance?.distributor?.customerCity}</td>
                            
                            <td>${fieldValue(bean: freightTransactionInstance, field: 'invoiceNo')}</td>
                        
                            <td>${freightTransactionInstance?.billingType}</td>
                        
                            <td>${freightTransactionInstance?.invoiceDate}</td>
                        
                            <td>${fieldValue(bean: freightTransactionInstance, field: 'invUnitsTotal')}</td>
                        
                            <td>${fieldValue(bean: freightTransactionInstance, field: 'invoiceValue')}</td>
                            
                            <td>${fieldValue(bean: freightTransactionInstance, field: 'invoiceNoOfCases')}</td>
                        
                            <td>${fieldValue(bean: freightTransactionInstance, field: 'weightOfInvoice')}</td>
                        
                            <td>${fieldValue(bean: freightTransactionInstance, field: 'weightInKgs')}</td>
                            
                            <td>${freightTransactionInstance?.freightModel}</td>
                        
                            <td>${freightTransactionInstance?.costPerKg}</td>
                            
                            <td>${freightTransactionInstance?.costPerCase}</td>
                        
                            <td>${freightTransactionInstance?.grLrCharges}</td>
                        
                            <td>${freightTransactionInstance?.handlingCharges}</td>
                        
                            <td>${freightTransactionInstance?.loadingUnloadingCharges}</td>
                            
                            <td>${freightTransactionInstance?.deliveryCharges}</td>
                        
                            <td>${freightTransactionInstance?.fuelCharges}</td>
                        
                            <td><g:textField name="actualCases" value="${fieldValue(bean: freightTransactionInstance, field: 'actualCases')}"/></td>
                            
                            <td><g:textField name="totalAmount" value="${fieldValue(bean: freightTransactionInstance, field: 'totalAmount')}" readonly="readonly"/></td>
                                                   
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${freightTransactionInstanceTotal}" />
            </div>
            <div>
            		<span class="button"><g:actionSubmit class="save" action="calculateFreightTotal" value="${message(code: 'default.button.calculate.label', default: 'Calculate')}" /></span>
                    
            </div>
        </div>
    </body>
</html>
