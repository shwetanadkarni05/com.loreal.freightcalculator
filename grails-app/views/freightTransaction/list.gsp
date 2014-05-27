
<%@ page import="com.loreal.freightcalculator.FreightTransaction" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'freightTransaction.label', default: 'FreightTransaction')}" />
        <title><g:message code="freight.list.label" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>            
        </div>
        <div class="body">
            <h1><g:message code="freight.list.label" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'freightTransaction.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="actualCases" title="${message(code: 'freightTransaction.actualCases.label', default: 'Actual Cases')}" />
                        
                            <g:sortableColumn property="billingType" title="${message(code: 'freightTransaction.billingType.label', default: 'Billing Type')}" />
                        
                            <th><g:message code="freightTransaction.distributor.label" default="Distributor" /></th>
                        
                            <g:sortableColumn property="grCharges" title="${message(code: 'freightTransaction.grCharges.label', default: 'Gr Charges')}" />
                        
                            <g:sortableColumn property="invUnitsTotal" title="${message(code: 'freightTransaction.invUnitsTotal.label', default: 'Inv Units Total')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${freightTransactionInstanceList}" status="i" var="freightTransactionInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${freightTransactionInstance.id}">${fieldValue(bean: freightTransactionInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: freightTransactionInstance, field: "actualCases")}</td>
                        
                            <td>${fieldValue(bean: freightTransactionInstance, field: "billingType")}</td>
                        
                            <td>${fieldValue(bean: freightTransactionInstance, field: "distributor")}</td>
                        
                            <td>${fieldValue(bean: freightTransactionInstance, field: "grCharges")}</td>
                        
                            <td>${fieldValue(bean: freightTransactionInstance, field: "invUnitsTotal")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${freightTransactionInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
