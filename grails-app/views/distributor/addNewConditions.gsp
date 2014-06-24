

<%@ page import="com.loreal.freightcalculator.DistributorConditions" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'distributor.label', default: 'Distributor Conditions')}" />
        <title>Add New Conditions</title>
    </head>
    <body>
        <div class="nav">
        	<span class="menuButton"><g:link class="create" controller="user" action="menu">Menu</g:link></span>
            <span class="menuButton"><g:link class="list" controller="distributor" action="addConditions">List Conditions</g:link></span>
        </div>
        <div class="body">
            <h1>Add New Conditions</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${distributorInstance}">
            <div class="errors">
                <g:renderErrors bean="${distributorInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="saveNewCondition" >
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
                        
                            --%>
                            <tr>
                            	<td valign="top" class="name">
                                    <label for="Distributor"><g:message code="distributorC.distributor.label" default="Distributor" /></label>
                                </td>
                            	<td>
                        			<g:select name="distributor" from="${distList}" multiple="false" optionKey="id" optionValue="customerName"/>
                        		</td>
                            </tr>
                            
                        		
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="billingType"><g:message code="distributorC.billingType.label" default="Billing Type" /></label>
                                </td>
                                <td valign="top" class="name">
                                    <g:textField name="billingType" value="" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="minumumNoOfCases"><g:message code="distributorC.minumumNoOfCases.label" default="Minumum No. of Cases" /></label>
                                </td>
                                <td valign="top" class="name">
                                    <g:textField name="minumumNoOfCases" value="" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="minumumWeightInKgs"><g:message code="distributorC.minumumWeightInKgs.label" default="Minumum Weight in Kgs" /></label>
                                </td>
                                <td valign="top" class="name">
                                    <g:textField name="minumumWeightInKgs" value="" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="fixedFreight"><g:message code="distributorC.fixedFreight.label" default="Fixed Freight" /></label>
                                </td>
                                <td valign="top" class="name">
                                    <g:textField name="fixedFreight" value="" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="deliveryCharges"><g:message code="distributorC.fixedFreight.label" default="Delivery Charges" /></label>
                                </td>
                                <td valign="top" class="name">
                                    <g:textField name="deliveryCharges" value="" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="lrCharges"><g:message code="distributorC.fixedFreight.label" default="LR Charges" /></label>
                                </td>
                                <td valign="top" class="name">
                                    <g:textField name="lrCharges" value="" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="Save" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
