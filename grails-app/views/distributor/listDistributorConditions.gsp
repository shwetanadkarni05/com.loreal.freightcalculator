
<%@ page import="com.loreal.freightcalculator.DistributorConditions" %>
<%@ page import="com.loreal.freightcalculator.Distributor" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title>List Distributor Conditions</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><g:link class="create" action="addConditions">Add Conditions For Distributor</g:link></span>
        </div>
        <div class="body">
            <h1>List Distributor Conditions</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="Sr No" />                        
                            <th><g:message code="distributorConditions.distributor.cfaCode.label" default="Cfa Code" /></th>
							<g:sortableColumn property="customerCode" title="${message(code: 'distributorConditions.distributor.customerCode.label', default: 'Customer Code')}" />
							<g:sortableColumn property="customerName" title="${message(code: 'distributorConditions.billingType.label', default: 'Billing Type')}" />
                            <g:sortableColumn property="customerCity" title="${message(code: 'distributorConditions.minumumNumberOfCases.label', default: Minumum No. of Cases')}" />
                            <g:sortableColumn property="freightStructure" title="${message(code: 'distributorConditions.minumumWeighInKgs.label', default: 'Minumum Weight in Kgs')}" />
							<g:sortableColumn property="costPerUnit" title="${message(code: 'distributorConditions.fixedFreight.label', default: 'Fixed Freight')}" />
							<g:sortableColumn property="grlrCharges" title="${message(code: 'distributorConditions.deliveryCharges.label', default: 'Delivery Charges')}" />
							<g:sortableColumn property="handlingCharges" title="${message(code: 'distributorConditions.lrCharges.label', default: 'LR Charges')}" />
                        				

                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${conditionsList}" status="i" var="conditionInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="showDistributorConditions" id="${conditionInstance.id}">${fieldValue(bean: conditionInstance, field: "id")}</g:link></td>
                        
                            <td>${conditionInstance.distributor.cfa.userCode}</td>
							
							<td>${conditionInstance.distributor.customerCode}</td>
							
							<td>${fieldValue(bean: conditionInstance, field: "billingType")}</td>
                        
                            <td>${fieldValue(bean: conditionInstance, field: "minumumNumberOfCases")}</td>
                        
                            <td>${fieldValue(bean: conditionInstance, field: "minumumWeighInKgs")}</td>
							
							<td>${fieldValue(bean: conditionInstance, field: "fixedFreight")}</td>
							
							<td>${fieldValue(bean: conditionInstance, field: "deliveryCharges")}</td>
							
							<td>${fieldValue(bean: conditionInstance, field: "lrCharges")}</td>						
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${conditionInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
