

<%@ page import="com.loreal.freightcalculator.Distributor" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'distributor.label', default: 'Distributor')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${distributorInstance}">
            <div class="errors">
                <g:renderErrors bean="${distributorInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <%--<tr class="prop">
                                <td valign="top" class="name">
                                    <label for="cfa"><g:message code="distributor.cfa.label" default="Cfa" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: distributorInstance, field: 'cfa', 'errors')}">
                                    <g:select name="cfa.id" from="${com.loreal.freightcalculator.User.list()}" optionKey="id" value="${distributorInstance?.cfa?.id}"  />
                                </td>
                            </tr>
                        
                            --%><tr class="prop">
                                <td valign="top" class="name">
                                    <label for="customerCity"><g:message code="distributor.customerCity.label" default="Customer City" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: distributorInstance, field: 'customerCity', 'errors')}">
                                    <g:textField name="customerCity" value="${distributorInstance?.customerCity}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="customerCode"><g:message code="distributor.customerCode.label" default="Customer Code" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: distributorInstance, field: 'customerCode', 'errors')}">
                                    <g:textField name="customerCode" value="${fieldValue(bean: distributorInstance, field: 'customerCode')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="customerName"><g:message code="distributor.customerName.label" default="Customer Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: distributorInstance, field: 'customerName', 'errors')}">
                                    <g:textField name="customerName" value="${distributorInstance?.customerName}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="deliveryCharges"><g:message code="distributor.deliveryCharges.label" default="Delivery Charges" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: distributorInstance, field: 'deliveryCharges', 'errors')}">
                                    <g:textField name="deliveryCharges" value="${fieldValue(bean: distributorInstance, field: 'deliveryCharges')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="docketCharges"><g:message code="distributor.docketCharges.label" default="Docket Charges" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: distributorInstance, field: 'docketCharges', 'errors')}">
                                    <g:textField name="docketCharges" value="${fieldValue(bean: distributorInstance, field: 'docketCharges')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="exciseDuty"><g:message code="distributor.exciseDuty.label" default="Excise Duty" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: distributorInstance, field: 'exciseDuty', 'errors')}">
                                    <g:textField name="exciseDuty" value="${fieldValue(bean: distributorInstance, field: 'exciseDuty')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="freightStructure"><g:message code="distributor.freightStructure.label" default="Freight Structure" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: distributorInstance, field: 'freightStructure', 'errors')}">
                                    <g:textField name="freightStructure" value="${distributorInstance?.freightStructure}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="fuelCharges"><g:message code="distributor.fuelCharges.label" default="Fuel Charges" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: distributorInstance, field: 'fuelCharges', 'errors')}">
                                    <g:textField name="fuelCharges" value="${fieldValue(bean: distributorInstance, field: 'fuelCharges')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="grlrCharges"><g:message code="distributor.grlrCharges.label" default="Grlr Charges" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: distributorInstance, field: 'grlrCharges', 'errors')}">
                                    <g:textField name="grlrCharges" value="${fieldValue(bean: distributorInstance, field: 'grlrCharges')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="labourCharges"><g:message code="distributor.labourCharges.label" default="Labour Charges" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: distributorInstance, field: 'labourCharges', 'errors')}">
                                    <g:textField name="labourCharges" value="${fieldValue(bean: distributorInstance, field: 'labourCharges')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="loadingUnloadingCharges"><g:message code="distributor.loadingUnloadingCharges.label" default="Loading Unloading Charges" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: distributorInstance, field: 'loadingUnloadingCharges', 'errors')}">
                                    <g:textField name="loadingUnloadingCharges" value="${fieldValue(bean: distributorInstance, field: 'loadingUnloadingCharges')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="rate"><g:message code="distributor.rate.label" default="Rate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: distributorInstance, field: 'rate', 'errors')}">
                                    <g:textField name="rate" value="${fieldValue(bean: distributorInstance, field: 'rate')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="serviceTaxRate"><g:message code="distributor.serviceTaxRate.label" default="Service Tax Rate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: distributorInstance, field: 'serviceTaxRate', 'errors')}">
                                    <g:textField name="serviceTaxRate" value="${fieldValue(bean: distributorInstance, field: 'serviceTaxRate')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="surcharge"><g:message code="distributor.surcharge.label" default="Surcharge" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: distributorInstance, field: 'surcharge', 'errors')}">
                                    <g:textField name="surcharge" value="${fieldValue(bean: distributorInstance, field: 'surcharge')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="vat"><g:message code="distributor.vat.label" default="Vat" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: distributorInstance, field: 'vat', 'errors')}">
                                    <g:textField name="vat" value="${fieldValue(bean: distributorInstance, field: 'vat')}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
