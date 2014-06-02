

<%@ page import="com.loreal.freightcalculator.User" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title>Login</title>
    </head>
    <body>        
        <div class="body">
            <h1>Welcome to L'Oreal Freight Calculator</h1>
            <g:form controller="user" action="doLogin" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="userName"><g:message code="user.userName.label" default="User Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: userInstance, field: 'userName', 'errors')}">
                                    <g:textField name="userName" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="userPassword"><g:message code="user.userPassword.label" default="User Password" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: userInstance, field: 'userPassword', 'errors')}">
                                    <input id="password" name="password" type='password' name='password' />
                                </td>
                            </tr>                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="login" class="save" value="Login" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
