
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'distributor.id.label', default: 'Id')}" />
                        
                            <th><g:message code="distributor.cfa.label" default="Cfa" /></th>
                        
                            <g:sortableColumn property="customerCity" title="${message(code: 'distributor.customerCity.label', default: 'Customer City')}" />
                        
                            <g:sortableColumn property="customerCode" title="${message(code: 'distributor.customerCode.label', default: 'Customer Code')}" />
                        
                            <g:sortableColumn property="customerName" title="${message(code: 'distributor.customerName.label', default: 'Customer Name')}" />
                        
                            <g:sortableColumn property="deliveryCharges" title="${message(code: 'distributor.deliveryCharges.label', default: 'Delivery Charges')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${distributorInstanceList}" status="i" var="distributorInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${distributorInstance.id}">${fieldValue(bean: distributorInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: distributorInstance, field: "cfa")}</td>
                        
                            <td>${fieldValue(bean: distributorInstance, field: "customerCity")}</td>
                        
                            <td>${fieldValue(bean: distributorInstance, field: "customerCode")}</td>
                        
                            <td>${fieldValue(bean: distributorInstance, field: "customerName")}</td>
                        
                            <td>${fieldValue(bean: distributorInstance, field: "deliveryCharges")}</td>
                        
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
