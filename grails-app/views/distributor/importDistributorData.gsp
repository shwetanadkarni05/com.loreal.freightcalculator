

<%@ page import="com.loreal.freightcalculator.Distributor" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'distributor.label', default: 'Distributor')}" />
        <title>Import Distributor Data</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><g:link class="create" controller="user" action="menu">Menu</g:link></span>
            <span class="menuButton"><g:link class="list" action="list">List Distributors</g:link></span>            
        </div>
        <div class="body">
            <h1>Import Distributor Data</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${distributorInstance}">
            <div class="errors">
                <g:renderErrors bean="${distributorInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" enctype="multipart/form-data">
                <article>
                <label for="fileUpload"><g:message code="distributor.fileUpload.label" default="Choose File to upload" /></label>
				  <input type=file name="fileUpload">
				</article>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="excelImport" value="${message(code: 'default.button.upload.label', default: 'upload')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.cancel.label', default: 'cancel')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
