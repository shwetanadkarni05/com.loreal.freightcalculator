

<%@ page import="com.loreal.freightcalculator.FreightTransaction" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title>Upload Invoice Data </title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>            
        </div>
        <div class="body">
            <h1>Upload Invoice Data</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:form method="post" enctype="multipart/form-data">
                <article>
                <label for="fileUpload"><g:message code="freight.fileUpload.label" default="Choose File to upload" /></label>
				  <input type=file name="fileUpload">
				</article>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="excelFreightImport" value="${message(code: 'default.button.upload.label', default: 'upload')}" /></span>
                    
                </div>
            </g:form>
        </div>
    </body>
</html>
