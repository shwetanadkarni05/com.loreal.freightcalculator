
<%@ page import="com.loreal.freightcalculator.Distributor" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'distributor.label', default: 'Distributor')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'distributor.id.label', default: 'Sr No')}" />
                        
                            <th><g:message code="distributor.cfaCode.label" default="Cfa Code" /></th>
							<th><g:message code="distributor.cfaRegion.label" default="Cfa Region" /></th>
							<th><g:message code="distributor.cfaLocation.label" default="Cfa Location" /></th>
							<g:sortableColumn property="divisionCode" title="${message(code: 'distributor.divisionCode.label', default: 'Division Code')}" />
							<g:sortableColumn property="customerCode" title="${message(code: 'distributor.customerCode.label', default: 'Customer Code')}" />
							<g:sortableColumn property="customerName" title="${message(code: 'distributor.customerName.label', default: 'Customer Name')}" />
                            <g:sortableColumn property="customerCity" title="${message(code: 'distributor.customerCity.label', default: 'Customer City')}" />
                            <g:sortableColumn property="freightStructure" title="${message(code: 'distributor.freightStructure.label', default: 'Freight Structure')}" />
							<g:sortableColumn property="costPerUnit" title="${message(code: 'distributor.costPerUnit.label', default: 'Cost Per Unit Based On Freight Structure')}" />
							<g:sortableColumn property="grlrCharges" title="${message(code: 'distributor.grlrCharges.label', default: 'GR/LR Charges')}" />
							<g:sortableColumn property="handlingCharges" title="${message(code: 'distributor.handlingCharges.label', default: 'Handling Charges')}" />
							<g:sortableColumn property="deliveryCharges" title="${message(code: 'distributor.deliveryCharges.label', default: 'Delivery Charges')}" />
							<g:sortableColumn property="loadingUnloadingCharges" title="${message(code: 'distributor.loadingUnloadingCharges.label', default: 'Loading / Unloading Charges')}" />
							<g:sortableColumn property="fuelCharges" title="${message(code: 'distributor.fuelCharges.label', default: 'Fuel Surcharges')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${distributorInstanceList}" status="i" var="distributorInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${distributorInstance.id}">${fieldValue(bean: distributorInstance, field: "id")}</g:link></td>
                        
                            <td>${distributorInstance.cfa.userCode}</td>
							
							<td>${distributorInstance.cfa.userRegion}</td>
							
							<td>${distributorInstance.cfa.userLocation}</td>
							
							<td>${fieldValue(bean: distributorInstance, field: "divisionCode")}</td>
							
							<td>${fieldValue(bean: distributorInstance, field: "customerCode")}</td>
							
							<td>${fieldValue(bean: distributorInstance, field: "customerName")}</td>
                        
                            <td>${fieldValue(bean: distributorInstance, field: "customerCity")}</td>
                        
                            <td>${fieldValue(bean: distributorInstance, field: "freightStructure")}</td>
							
							<td>${fieldValue(bean: distributorInstance, field: "rate")}</td>
							
							<td>${fieldValue(bean: distributorInstance, field: "grlrCharges")}</td>
							
							<td>${fieldValue(bean: distributorInstance, field: "handlingCharges")}</td>
							
							<td>${fieldValue(bean: distributorInstance, field: "deliveryCharges")}</td>
							
							<td>${fieldValue(bean: distributorInstance, field: "loadingUnloadingCharges")}</td>                       
                            
                            <td>${fieldValue(bean: distributorInstance, field: "fuelCharges")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${distributorInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
