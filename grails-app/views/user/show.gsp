
<%@ page import="com.loreal.freightcalculator.User" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title>User</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><g:link class="create" controller="user" action="menu">Menu</g:link></span>
            <span class="menuButton"><g:link class="list" action="list">List User</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">Create User</g:link></span>
        </div>
        <div class="body">
            <h1>User</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="user.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: userInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="user.userCode.label" default="User Code" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: userInstance, field: "userCode")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="user.userFullName.label" default="User Full Name" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: userInstance, field: "userFullName")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="user.userRole.label" default="User Role" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: userInstance, field: "userRole")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="user.userLocation.label" default="User Location" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: userInstance, field: "userLocation")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="user.userRegion.label" default="User Region" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: userInstance, field: "userRegion")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="user.userName.label" default="User Name" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: userInstance, field: "userName")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="user.userPassword.label" default="User Password" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: userInstance, field: "userPassword")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="user.dateCreated.label" default="Date Created" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${userInstance?.dateCreated}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="user.lastUpdated.label" default="Last Updated" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${userInstance?.lastUpdated}" /></td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${userInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
