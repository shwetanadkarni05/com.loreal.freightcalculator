

<%@ page import="com.loreal.freightcalculator.Distributor" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'distributor.label', default: 'Distributor')}" />
        <title><g:message code="distributor.edit.label"/></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            
        </div>
        <div class="body">
            <h1><g:message code="distributor.edit.label" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${distributorInstance}">
            <div class="errors">
                <g:renderErrors bean="${distributorInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${distributorInstance?.id}" />
                <g:hiddenField name="version" value="${distributorInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="cfa"><g:message code="distributor.cfa.label" default="Cfa" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: distributorInstance, field: 'cfa', 'errors')}">
									<g:hiddenField name="cfa.id" value="${distributorInstance?.cfa?.id}"  />
                                    <g:textField name="cfa.userCode" value="${distributorInstance?.cfa?.userCode}" readonly="readonly"  />
									<br/>
									<g:textField name="cfa.userFullName" value="${distributorInstance?.cfa?.userFullName}" readonly="readonly"  />
									<br/>
									<g:textField name="cfa.userLocation" value="${distributorInstance?.cfa?.userLocation}" readonly="readonly"  />
									<br/>
									<g:textField name="cfa.userRegion" value="${distributorInstance?.cfa?.userRegion}" readonly="readonly"  />
                                </td>
                            </tr>
							
							<tr class="prop">
                                <td valign="top" class="name">
                                  <label for="divisionCode"><g:message code="distributor.divisionCode.label" default="Division Code" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: distributorInstance, field: 'divisionCode', 'errors')}">
                                    <g:textField name="divisionCode" value="${fieldValue(bean: distributorInstance, field: 'divisionCode')}" readonly="readonly" />
                                </td>
                            </tr>
							
							<tr class="prop">
                                <td valign="top" class="name">
                                  <label for="customerCode"><g:message code="distributor.customerCode.label" default="Customer Code" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: distributorInstance, field: 'customerCode', 'errors')}">
                                    <g:textField name="customerCode" value="${fieldValue(bean: distributorInstance, field: 'customerCode')}" readonly="readonly" />
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
                                  <label for="customerCity"><g:message code="distributor.customerCity.label" default="Customer City" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: distributorInstance, field: 'customerCity', 'errors')}">
                                    <g:textField name="customerCity" value="${distributorInstance?.customerCity}" />
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
                                  <label for="costPerKg"><g:message code="distributor.costPerKg.label" default="Cost Per Kg" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: distributorInstance, field: 'costPerKg', 'errors')}">
                                    <g:textField name="costPerKg" value="${fieldValue(bean: distributorInstance, field: 'costPerKg')}" />
                                </td>
                            </tr>
							
							<tr class="prop">
                                <td valign="top" class="name">
                                  <label for="costPerCase"><g:message code="distributor.costPerCase.label" default="Cost Per Case" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: distributorInstance, field: 'costPerCase', 'errors')}">
                                    <g:textField name="costPerCase" value="${fieldValue(bean: distributorInstance, field: 'costPerCase')}" />
                                </td>
                            </tr>
							
							<tr class="prop">
                                <td valign="top" class="name">
                                  <label for="costPerInvoice"><g:message code="distributor.costPerInvoice.label" default="Cost Per Invoice" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: distributorInstance, field: 'rate', 'errors')}">
                                    <g:textField name="costPerInvoice" value="${fieldValue(bean: distributorInstance, field: 'costPerInvoice')}" />
                                </td>
                            </tr>
							
							<tr class="prop">
                                <td valign="top" class="name">
                                  <label for="grlrCharges"><g:message code="distributor.grlrCharges.label" default="GR LR Charges" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: distributorInstance, field: 'grlrCharges', 'errors')}">
                                    <g:textField name="grlrCharges" value="${fieldValue(bean: distributorInstance, field: 'grlrCharges')}" />
                                </td>
                            </tr>
														
							<tr class="prop">
                                <td valign="top" class="name">
                                  <label for="handlingCharges"><g:message code="distributor.handlingCharges.label" default="Handling Charges" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: distributorInstance, field: 'handlingCharges', 'errors')}">
                                    <g:textField name="handlingCharges" value="${fieldValue(bean: distributorInstance, field: 'handlingCharges')}" />
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
                                  <label for="loadingUnloadingCharges"><g:message code="distributor.loadingUnloadingCharges.label" default="Loading Unloading Charges" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: distributorInstance, field: 'loadingUnloadingCharges', 'errors')}">
                                    <g:textField name="loadingUnloadingCharges" value="${fieldValue(bean: distributorInstance, field: 'loadingUnloadingCharges')}" />
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
