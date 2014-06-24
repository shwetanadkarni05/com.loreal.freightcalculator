
<%@ page import="com.loreal.freightcalculator.DistributorConditions" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
       <title>Distributor Condition</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><g:link class="create" controller="user" action="menu">Menu</g:link></span>
            <span class="menuButton"><g:link class="list" controller="distributor" action="addConditions">List Conditions</g:link></span>
        </div>
        <div class="body">
            <h1>Distributor Condition</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="distributorConditions.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: conditionInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="conditionInstance.cfa.label" default="Cfa Code" /></td>
                            
                            <td valign="top" class="value">${conditionInstance?.distributor?.cfa?.userCode}</td>
                            
                        </tr>                  
                        
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="distributor.customerCode.label" default="Customer Code" /></td>
                            
                            <td valign="top" class="value">${conditionInstance?.distributor?.customerCode}</td>
                            
                        </tr>
                    
                        
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="conditionInstance.billingType.label" default="Billing Type" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: conditionInstance, field: "billingType")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="conditionInstance.minumumNumberOfCases.label" default="Minumum Number Of Cases" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: conditionInstance, field: "minumumNumberOfCases")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="conditionInstance.minumumWeighInKgs.label" default="Minumum Weigh In Kgs" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: conditionInstance, field: "minumumWeighInKgs")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="conditionInstance.fixedFreight.label" default="Fixed Freight" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: conditionInstance, field: "fixedFreight")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="conditionInstance.deliveryCharges.label" default="Delivery Charges" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: conditionInstance, field: "deliveryCharges")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="conditionInstance.lrCharges.label" default="LR Charges" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: conditionInstance, field: "lrCharges")}</td>
                            
                        </tr>                 
                        
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${distributorInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="editConditions" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="deleteConditions" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
