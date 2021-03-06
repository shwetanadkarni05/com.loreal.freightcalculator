

<%@ page import="com.loreal.freightcalculator.User" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title>Edit User</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><g:link class="create" controller="user" action="menu">Menu</g:link></span>
            <span class="menuButton"><g:link class="list" action="list">List Users</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">Create User</g:link></span>
        </div>
        <div class="body">
            <h1>Edit User</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${userInstance}">
            <div class="errors">
                <g:renderErrors bean="${userInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${userInstance?.id}" />
                <g:hiddenField name="version" value="${userInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="userCode"><g:message code="user.userCode.label" default="User Code" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: userInstance, field: 'userCode', 'errors')}">
                                    <g:textField name="userCode" value="${fieldValue(bean: userInstance, field: 'userCode')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="userFullName"><g:message code="user.userFullName.label" default="User Full Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: userInstance, field: 'userFullName', 'errors')}">
                                    <g:textField name="userFullName" value="${userInstance?.userFullName}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="userRole"><g:message code="user.userRole.label" default="User Role" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: userInstance, field: 'userRole', 'errors')}">
                                    <g:textField name="userRole" value="${userInstance?.userRole}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="userLocation"><g:message code="user.userLocation.label" default="User Location" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: userInstance, field: 'userLocation', 'errors')}">
                                    <g:textField name="userLocation" value="${userInstance?.userLocation}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="userRegion"><g:message code="user.userRegion.label" default="User Region" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: userInstance, field: 'userRegion', 'errors')}">
                                    <g:select name="userRegion" from="${userInstance.constraints.userRegion.inList}" value="${userInstance?.userRegion}" valueMessagePrefix="user.userRegion"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="userName"><g:message code="user.userName.label" default="User Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: userInstance, field: 'userName', 'errors')}">
                                    <g:textField name="userName" value="${userInstance?.userName}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="userPassword"><g:message code="user.userPassword.label" default="User Password" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: userInstance, field: 'userPassword', 'errors')}">
                                    <g:textField name="userPassword" value="${userInstance?.userPassword}" />
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
