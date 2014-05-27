
<%@ page import="com.loreal.freightcalculator.Distributor" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'distributor.label', default: 'Distributor')}" />
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
                            <td valign="top" class="name"><g:message code="distributor.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: distributorInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="distributor.cfa.label" default="Cfa" /></td>
                            
                            <td valign="top" class="value"><g:link controller="user" action="show" id="${distributorInstance?.cfa?.id}">${distributorInstance?.cfa?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="distributor.customerCity.label" default="Customer City" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: distributorInstance, field: "customerCity")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="distributor.customerCode.label" default="Customer Code" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: distributorInstance, field: "customerCode")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="distributor.customerName.label" default="Customer Name" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: distributorInstance, field: "customerName")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="distributor.deliveryCharges.label" default="Delivery Charges" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: distributorInstance, field: "deliveryCharges")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="distributor.docketCharges.label" default="Docket Charges" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: distributorInstance, field: "docketCharges")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="distributor.exciseDuty.label" default="Excise Duty" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: distributorInstance, field: "exciseDuty")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="distributor.freightStructure.label" default="Freight Structure" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: distributorInstance, field: "freightStructure")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="distributor.fuelCharges.label" default="Fuel Charges" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: distributorInstance, field: "fuelCharges")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="distributor.grlrCharges.label" default="Grlr Charges" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: distributorInstance, field: "grlrCharges")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="distributor.labourCharges.label" default="Labour Charges" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: distributorInstance, field: "labourCharges")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="distributor.loadingUnloadingCharges.label" default="Loading Unloading Charges" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: distributorInstance, field: "loadingUnloadingCharges")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="distributor.rate.label" default="Rate" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: distributorInstance, field: "rate")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="distributor.serviceTaxRate.label" default="Service Tax Rate" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: distributorInstance, field: "serviceTaxRate")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="distributor.surcharge.label" default="Surcharge" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: distributorInstance, field: "surcharge")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="distributor.vat.label" default="Vat" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: distributorInstance, field: "vat")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${distributorInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
