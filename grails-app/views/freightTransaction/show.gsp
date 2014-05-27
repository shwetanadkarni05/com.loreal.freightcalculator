
<%@ page import="com.loreal.freightcalculator.FreightTransaction" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'freightTransaction.label', default: 'FreightTransaction')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="freightTransaction.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: freightTransactionInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="freightTransaction.actualCases.label" default="Actual Cases" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: freightTransactionInstance, field: "actualCases")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="freightTransaction.billingType.label" default="Billing Type" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: freightTransactionInstance, field: "billingType")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="freightTransaction.distributor.label" default="Distributor" /></td>
                            
                            <td valign="top" class="value"><g:link controller="distributor" action="show" id="${freightTransactionInstance?.distributor?.id}">${freightTransactionInstance?.distributor?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="freightTransaction.grCharges.label" default="Gr Charges" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: freightTransactionInstance, field: "grCharges")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="freightTransaction.invUnitsTotal.label" default="Inv Units Total" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: freightTransactionInstance, field: "invUnitsTotal")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="freightTransaction.invoiceDate.label" default="Invoice Date" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${freightTransactionInstance?.invoiceDate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="freightTransaction.invoiceNo.label" default="Invoice No" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: freightTransactionInstance, field: "invoiceNo")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="freightTransaction.invoiceNoOfCases.label" default="Invoice No Of Cases" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: freightTransactionInstance, field: "invoiceNoOfCases")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="freightTransaction.invoiceValue.label" default="Invoice Value" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: freightTransactionInstance, field: "invoiceValue")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="freightTransaction.orderNo.label" default="Order No" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: freightTransactionInstance, field: "orderNo")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="freightTransaction.perKgOrCaseCost.label" default="Per Kg Or Case Cost" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: freightTransactionInstance, field: "perKgOrCaseCost")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="freightTransaction.srNo.label" default="Sr No" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: freightTransactionInstance, field: "srNo")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="freightTransaction.totalAmount.label" default="Total Amount" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: freightTransactionInstance, field: "totalAmount")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="freightTransaction.weightOfInvoice.label" default="Weight Of Invoice" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: freightTransactionInstance, field: "weightOfInvoice")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${freightTransactionInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
