
<%@ page import="com.loreal.freightcalculator.User" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title>List Users</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><g:link class="create" controller="user" action="menu">Menu</g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1>List Users</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'user.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="userCode" title="${message(code: 'user.userCode.label', default: 'User Code')}" />
                        
                            <g:sortableColumn property="userFullName" title="${message(code: 'user.userFullName.label', default: 'User Full Name')}" />
                        
                            <g:sortableColumn property="userRole" title="${message(code: 'user.userRole.label', default: 'User Role')}" />
                        
                            <g:sortableColumn property="userLocation" title="${message(code: 'user.userLocation.label', default: 'User Location')}" />
                        
                            <g:sortableColumn property="userRegion" title="${message(code: 'user.userRegion.label', default: 'User Region')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${userInstanceList}" status="i" var="userInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: userInstance, field: "userCode")}</td>
                        
                            <td>${fieldValue(bean: userInstance, field: "userFullName")}</td>
                        
                            <td>${fieldValue(bean: userInstance, field: "userRole")}</td>
                        
                            <td>${fieldValue(bean: userInstance, field: "userLocation")}</td>
                        
                            <td>${fieldValue(bean: userInstance, field: "userRegion")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${userInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
